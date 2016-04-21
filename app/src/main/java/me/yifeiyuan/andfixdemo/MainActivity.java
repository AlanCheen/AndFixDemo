package me.yifeiyuan.andfixdemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

import me.yifeiyuan.library.XiHa;

public class MainActivity extends AppCompatActivity {


    private static final String TAG = "MainActivity";
    private TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tv = (TextView) findViewById(R.id.tv);
    }


    @Override
    protected void onResume() {
        super.onResume();
        Log.e(TAG, A.a("good"));
        Log.e(TAG, "" + new A().b("s1", "s2"));
        Log.e(TAG, "" + new A().getI());

        String data = A.a("good") + ";" + new A().b("s1", "s2") + ";" + new A().getI();
        tv.setText(data);
        Toast.makeText(MainActivity.this, data, Toast.LENGTH_SHORT).show();
        XiHa.xiha();
    }
}
