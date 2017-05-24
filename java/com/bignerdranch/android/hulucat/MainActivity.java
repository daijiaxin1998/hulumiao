package com.bignerdranch.android.hulucat;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import com.ashokvarma.bottomnavigation.BottomNavigationBar;
import com.ashokvarma.bottomnavigation.BottomNavigationItem;
import com.bignerdranch.android.hulucat.zxing.android.CaptureActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements BottomNavigationBar.OnTabSelectedListener {

    private ArrayList<Fragment> fragments;
    private TuijianFragment mTuijianFragment;
    private HomeFragment mHomeFragment;
    private HuodongFragment mHuodongFragment;
    private static final int REQUEST_CODE_SCAN = 0x0000;
    protected Toolbar toolbar;
    protected DrawerLayout mDrawerLayout;

    private String decodedNumber = null;//这个是条形码或二维码解码后的得到的字符串
    private String ServerURL = "http://192.168.43.34:8080/MyFirstWebApp/HuluCatServlet";
    private HttpURLConnection urlConn = null;
    StringBuffer saomaResponse = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        BottomNavigationBar bottomNavigationBar = (BottomNavigationBar) findViewById(R.id.bottom_navigation_bar);
        bottomNavigationBar
                .setBackgroundStyle(BottomNavigationBar.BACKGROUND_STYLE_STATIC
                );
        bottomNavigationBar
                .addItem(new BottomNavigationItem(R.drawable.tuijian, "推荐").setActiveColorResource(R.color.blue))
                .addItem(new BottomNavigationItem(R.mipmap.ic_home_white_24dp, "").setActiveColorResource(R.color.blue))
                .addItem(new BottomNavigationItem(R.drawable.huodong, "活动").setActiveColorResource(R.color.blue))
                .setFirstSelectedPosition(0)
                .initialise();

        fragments = getFragments();
        bottomNavigationBar.setTabSelectedListener(this);

        ImageButton imageButton = (ImageButton) findViewById(R.id.imageButton);
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this,
                        CaptureActivity.class);
                startActivityForResult(intent, REQUEST_CODE_SCAN);
            }
        });

        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawerlayout);

        ActionBarDrawerToggle mDrawerToggle = new ActionBarDrawerToggle(this, mDrawerLayout, toolbar, R.string.open, R.string.close) {
            @Override
            public void onDrawerOpened(View drawerView) {
                super.onDrawerOpened(drawerView);
            }

            @Override
            public void onDrawerClosed(View drawerView) {
                super.onDrawerClosed(drawerView);
            }
        };

        Button rili_button = (Button) findViewById(R.id.rili_button);
        rili_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, rili.class);
                startActivity(intent);
            }
        });

        Button xiaoxi_button = (Button) findViewById(R.id.xiaoxi_button);
        xiaoxi_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, xiaoxi.class);
                startActivity(intent);
            }
        });

        mDrawerToggle.syncState();
        mDrawerLayout.setDrawerListener(mDrawerToggle);

        setDefaultFragment();
    }

    private ArrayList<Fragment> getFragments() {
        ArrayList<Fragment> fragments = new ArrayList<>();
        fragments.add(TuijianFragment.newInstance("推荐"));
        fragments.add(HomeFragment.newInstance("none"));
        fragments.add(HuodongFragment.newInstance("活动"));
        return fragments;
    }

    private void setDefaultFragment() {
        FragmentManager fm = getSupportFragmentManager();
        FragmentTransaction transaction = fm.beginTransaction();
        mTuijianFragment = TuijianFragment.newInstance("推荐");
        transaction.replace(R.id.layFrame, mTuijianFragment);
        transaction.commit();
    }

    @Override
    public void onTabSelected(int position) {
        FragmentManager fm = this.getSupportFragmentManager();
        //开启事务
        FragmentTransaction transaction = fm.beginTransaction();
        switch (position) {
            case 0:
                if (mTuijianFragment == null) {
                    mTuijianFragment = TuijianFragment.newInstance("推荐");
                }
                transaction.replace(R.id.layFrame, mTuijianFragment);
                break;
            case 1:
                if (mHomeFragment == null) {
                    mHomeFragment = HomeFragment.newInstance("none");
                }
                transaction.replace(R.id.layFrame, mHomeFragment);
                break;
            case 2:
                if (mHuodongFragment == null) {
                    mHuodongFragment = HuodongFragment.newInstance("活动");
                }
                transaction.replace(R.id.layFrame, mHuodongFragment);
                break;
            default:
                break;
        }
        // 事务提交
        transaction.commit();
    }


    @Override
    public void onTabUnselected(int position) {

    }

    @Override
    public void onTabReselected(int position) {

    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        decodedNumber = data.getExtras().getString("codedContent");
        //开启网络服务，参数为decodedNumber
        initData();


    }

    private void initData() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    URL url = new URL(ServerURL + "?name=saoma&" + "value=" + decodedNumber.toString());
                    Log.d("MainActivity", ServerURL + "?name=saoma&" + "value=" + decodedNumber.toString());
                    urlConn = (HttpURLConnection) url.openConnection();

                    BufferedReader bufReader = new BufferedReader(
                            new InputStreamReader(urlConn.getInputStream())
                    );

                    saomaResponse = new StringBuffer();
                    String inputLine;
                    while ((inputLine = bufReader.readLine()) != null) {
                        saomaResponse.append(inputLine);
                    }

                    bufReader.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    Message msg = Message.obtain();
                    msg.obj = saomaResponse.toString();
                    handler.sendMessage(msg);
                }
            }
        }).start();
    }

    public Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            String s = (String) msg.obj;
            try {
                JSONObject jsonObject = new JSONObject(s);
                if (jsonObject.getString("isHasProduct").equals("false")) {
                    Toast.makeText(MainActivity.this, "没有该商品信息", Toast.LENGTH_SHORT).show();
                } else {
                    Intent intent = new Intent(MainActivity.this, TiaoZhuanActivity.class);
                    intent.putExtra("saomaStringBuffer", s);
                    startActivity(intent);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    };

    @Override
    public void onBackPressed() {

    }

}
