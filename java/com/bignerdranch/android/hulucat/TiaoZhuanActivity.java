package com.bignerdranch.android.hulucat;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class TiaoZhuanActivity extends AppCompatActivity {
    public JSONObject saomaJSONObject=null;
    private ImageView img_product;
    private TextView tv_product_name;
    private TextView tv_price;
    private TextView tv_label_1;
    private TextView tv_label_2;
    private TextView tv_label_3;
    private TextView tv_product_introduction;

    private HttpURLConnection conn=null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tiao_zhuan);
        //初始化组件
        img_product=(ImageView)findViewById(R.id.imageView1);
        tv_product_name=(TextView)findViewById(R.id.name);
        tv_price=(TextView)findViewById(R.id.price);
        tv_label_1=(TextView) findViewById(R.id.label_button1);
        tv_label_2=(TextView) findViewById(R.id.label_button2);
        tv_label_3=(TextView) findViewById(R.id.label_button3);
        tv_product_introduction=(TextView)findViewById(R.id.product_introduction);

        //初始化Fragment
        FragmentManager fm = getSupportFragmentManager();
        FragmentTransaction transaction = fm.beginTransaction();
        ProductInfoFragment mProductInfoFragment=ProductInfoFragment.newInstance("");
        transaction.add(R.id.container1, mProductInfoFragment);
        transaction.commit();

        //处理json数据
        Intent intent=this.getIntent();
        try {
            saomaJSONObject=new JSONObject(intent.getExtras().getString("saomaStringBuffer"));
            tv_product_name.setText(saomaJSONObject.getString("product_name"));
            tv_price.setText(saomaJSONObject.getString("price"));
            JSONArray jsonArray_Label=saomaJSONObject.getJSONArray("labels");
            tv_label_1.setText(jsonArray_Label.getJSONObject(0).getString("label1"));
            tv_label_2.setText(jsonArray_Label.getJSONObject(0).getString("label2"));
            tv_label_3.setText(jsonArray_Label.getJSONObject(0).getString("label3"));
            tv_product_introduction.setText(saomaJSONObject.getString("introduction"));
            getImage();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void getImage(){
        new Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    URL url=new URL(saomaJSONObject.getString("imageShow"));
                    conn=(HttpURLConnection)url.openConnection();

                    BufferedInputStream is=new BufferedInputStream(
                            conn.getInputStream()
                    );
                    Bitmap bitmap= BitmapFactory.decodeStream(is);
                    Message msg=Message.obtain();
                    msg.obj=bitmap;
                    myHandler.sendMessage(msg);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }

    private Handler myHandler=new Handler() {
        @Override
        public void handleMessage(Message msg){
            Bitmap bitmap=(Bitmap)msg.obj;
            img_product.setImageBitmap(bitmap);
        }
    };
}
