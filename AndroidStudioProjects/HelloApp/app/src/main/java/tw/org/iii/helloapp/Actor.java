package tw.org.iii.helloapp;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.Arrays;
import java.util.Random;

public class Actor extends Activity implements View.OnClickListener{
    //繼承activity  (google 已經做好的class，繪好圖形介面)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_actor);
        Button btnOK = (Button) findViewById(R.id.btnOK);
        btnOK.setOnClickListener(this);

       /* String s="";
        int[] opens=new int[6];
        for(int i=0;i<6 ;i++){

            opens[i]=(int)(Math.random()*49+1);
            for(int k=0;k<i;){//比對
                if(opens[k]==opens[i]){
                    opens[i]=(int)(Math.random()*49+1);
                }else k++;
            }

           // s+=Integer.toString(opens[i])+" ";
        }
        Arrays.sort(opens);
        for(int i=0;i<opens.length;i++){
             s+=Integer.toString(opens[i])+" ";
        }
        t.setText(s);*/
    }
    @Override
    public  void  onClick(View v){
        TextView t =(TextView)findViewById(R.id.lbltest);
        t.setText((new  CLottoGen()).GetNumbers());
    }
}
