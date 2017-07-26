package tw.org.iii.activitydemo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class ActMain extends AppCompatActivity {
    private  View.OnClickListener btnShow2_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            Bundle bund = new Bundle();
            bund.putString("King","Jason");//(Key,Value)

            Intent intent = new Intent(ActMain.this,Act3.class);
            intent.putExtras(bund);
            startActivity(intent);
        }
    };
    private  View.OnClickListener btnVote_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            Bundle bund = new Bundle();
            Intent intent = new Intent(ActMain.this,Act4.class);
            intent.putExtras(bund);
            startActivityForResult(intent,9487);
        }
    };

    private View.OnClickListener btnShow_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent intent = new Intent(ActMain.this,act2.class);
            startActivity(intent);

        }
    };
    private  View.OnClickListener btnList_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Bundle bund =new Bundle();
            Intent intent = new Intent(ActMain.this,act5.class);
            intent.putExtras(bund);
            startActivityForResult(intent,1155);
        }
    };

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode==9487){
            if(data == null){
                lblShow.setText("You did't vote");
                return;
            }
            if(data.getExtras()==null){
                lblShow.setText("zzzzz");
                return;
            }
            String result =data.getExtras().getString("vote");
            lblShow.setText("You feel:"+result);
        }
        if(requestCode==1155){
            if(data == null){

            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.act_main);
        InitialComponent();
    }

    private void InitialComponent() {

      btnShow=(Button)findViewById(R.id.toact2);
        btnShow.setOnClickListener(btnShow_Click);
        btnShow2=(Button)findViewById(R.id.toAct3);
        btnShow2.setOnClickListener(btnShow2_Click);
        btnVote=(Button)findViewById(R.id.toVote);
        btnVote.setOnClickListener(btnVote_Click);
        lblShow=(TextView)findViewById(R.id.lblshow);
        btnList=(Button)findViewById(R.id.toList);
        btnList.setOnClickListener(btnList_Click);

    }
    Button btnShow,btnShow2,btnVote,btnList;
    TextView lblShow;

}
