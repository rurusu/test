package com.example.user.homework95_v1;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import static java.sql.DriverManager.println;

public class act2 extends Activity {
    double height =0;
    double weight=0;
    double result=0;
    private View.OnClickListener btnConfirm_Click =new View.OnClickListener() {
        @Override
        public void onClick(View view) {

            if("".equals(txtHeight.getText().toString())){
                lblShow2.setText("尚未填寫身高");
            }
            if("".equals(txtWeight.getText().toString())){
                lblShow2.setText("尚未填寫體重");
            }
            else{
                height = Double.parseDouble(txtHeight.getText().toString())/100;

                weight=Double.parseDouble(txtWeight.getText().toString());
               // lblShow.setText(String.valueOf(height));
                result=height*height*22;
                String msg="您的理想體重為"+String.valueOf((int)result)+"公斤\n";
                msg+="理想體重區間為"+String.valueOf((int)(result*0.9))+"~"+String.valueOf((int)(result*1.1))+"公斤";

               lblShow.setText(msg);
                if(weight>result*1.2)
                    lblShow2.setText("您屬於肥胖等級，請注意飲食，並培養運動習慣");
                else if(result*1.1<weight&&weight<=result*1.2)
                    lblShow2.setText("您的體重過重，請注意飲食，並培養運動習慣");
                else  if(result*0.9<weight&&weight<=result*1.1)
                    lblShow2.setText("您的體重在標準範圍，請繼續保持");
                else if(result*0.8<weight&&weight<=result*0.9)
                    lblShow2.setText("您的體重過輕，請適當改善飲食習慣");
                else if(weight<=result*0.8)
                    lblShow2.setText("您過於瘦弱，請注意營養攝取");
            }


        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.act2);
        InitialComponent();
    }

    private void InitialComponent() {
        btnConfirm=(Button)findViewById(R.id.btnConfirm);

        lblShow=(TextView)findViewById(R.id.lblShow);
        lblShow2=(TextView)findViewById(R.id.lblShow2);
        btnConfirm.setOnClickListener(btnConfirm_Click);

        txtHeight=(EditText)findViewById(R.id.txtHeight);
        txtWeight=(EditText)findViewById(R.id.txtWeight);
    }

    Button btnConfirm;
    TextView lblShow,lblShow2;
    EditText txtWeight,txtHeight;
}
