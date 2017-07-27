package com.example.user.homework95_v1;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class ActMain extends Activity {

    private View.OnClickListener btnStart_Click =new View.OnClickListener() {
        @Override
        public void onClick(View view) {

            Intent intent =new Intent(ActMain.this,act2.class);
            startActivity(intent);
        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.actmain);
        InitialComponent();
    }

    private void InitialComponent() {
        btnStart=(Button)findViewById(R.id.btnStart);

        btnStart.setOnClickListener(btnStart_Click);
    }

    Button btnStart;
}
