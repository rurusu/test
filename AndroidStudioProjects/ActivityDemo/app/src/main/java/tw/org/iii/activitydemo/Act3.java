package tw.org.iii.activitydemo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class Act3 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act3);

        TextView lblSend =(TextView)findViewById(R.id.act3Text);
        Intent intent =getIntent();
        Bundle bund =intent.getExtras();
        String name = bund.getString("King");
        lblSend.setText("Hello"+" "+name);
    }
}
