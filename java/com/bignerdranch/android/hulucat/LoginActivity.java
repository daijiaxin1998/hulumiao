package com.bignerdranch.android.hulucat;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class LoginActivity extends AppCompatActivity {

    private Button Login_Button;
    private EditText userName;
    private EditText password;

    private String ServerURL = "http://192.168.43.34:8080/MyFirstWebApp/HuluCatServlet";
    private HttpURLConnection urlConn = null;
    private String usr;
    private String psw;
    private StringBuffer confirmInfo = null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        Login_Button = (Button) findViewById(R.id.login_btn_login);
        userName = (EditText) findViewById(R.id.login_edit_account);
        password = (EditText) findViewById(R.id.login_edit_pwd);

        Login_Button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                usr = userName.getText().toString();
                psw = password.getText().toString();
//                initData();
                //测试用
                Intent intent=new Intent(LoginActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }

    private void initData() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    URL url = new URL(ServerURL +"?name=yanzheng"+ "&usr=" + usr + "&psw=" + psw);
                    Log.d("LoginActivity", ServerURL +"?name=yanzheng"+ "&usr=" + usr + "&psw=" + psw);
                    urlConn = (HttpURLConnection) url.openConnection();
                    BufferedReader bufReader = new BufferedReader(
                            new InputStreamReader(
                                    urlConn.getInputStream()
                            )
                    );

                    confirmInfo = new StringBuffer();
                    String inputLine;
                    while ((inputLine = bufReader.readLine()) != null) {
                        confirmInfo.append(inputLine);
                    }
                    Message msg = Message.obtain();
                    msg.obj = confirmInfo.toString();
                    mHandler.sendMessage(msg);

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }

    private Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            String s=(String)msg.obj;
            try {
                JSONObject jsonObject=new JSONObject(s);
                if(jsonObject.getString("isUser").equals("true")){
                    Intent intent=new Intent(LoginActivity.this, MainActivity.class);
                    startActivity(intent);
                    Toast.makeText(LoginActivity.this, "登录成功", Toast.LENGTH_SHORT).show();
                }
                else {
                    Toast.makeText(LoginActivity.this, "登录失败", Toast.LENGTH_SHORT).show();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }


        }
    };
}
