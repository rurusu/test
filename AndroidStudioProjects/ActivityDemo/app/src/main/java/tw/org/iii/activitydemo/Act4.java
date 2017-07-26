package tw.org.iii.activitydemo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class Act4 extends AppCompatActivity {

    private View.OnClickListener btnYes_Click=new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            Vote("Sleepy");
        }
    };



    private View.OnClickListener btnNo_Click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Vote("Great");

        }
    };
    private void Vote(String op) {
        Bundle bund =new Bundle();
        bund.putString("vote",op);
        Intent intent =new Intent();
        intent.putExtras(bund);
        setResult(0,intent);
        finish();

    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.act4);
        Button btnYes = (Button)findViewById(R.id.btnYes);
        Button btnNo = (Button)findViewById(R.id.btnNo);
        btnYes.setOnClickListener(btnYes_Click);
        btnNo.setOnClickListener(btnNo_Click);
        //TextView lblShow =(TextView)findViewById(R.id.lblQuest);
    }
}
