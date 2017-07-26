package tw.org.iii.caculatordemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class caculator extends AppCompatActivity {

    //class下只能給變數初始值(ex.0)，不能給太複雜的或者參考到其他變數的方法
    int variable1,variable2;
    String op;

    View.OnClickListener btn1_click =new View.OnClickListener() {
        @Override
        //無法處理0.0
        public void onClick(View v) {
            if("0".equals(s)){
                lblShow.setText("1");
                s="1";
                //s要設定，不然一直都是0
            }
            else {
                s+="1";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn2_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("2");
                s="2";
            }
            else {
                s+="2";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn3_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("3");
                s="3";
            }
            else {
                s+="3";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn4_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("4");
                s="4";
            }
            else {
                s+="4";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn5_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("5");
                s="5";
            }
            else {
                s+="5";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn6_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("6");
                s="6";
            }
            else {
                s+="6";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn7_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("7");
                s="7";
            }
            else {
                s+="7";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn8_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("8");
                s="8";
            }
            else {
                s+="8";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn9_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("9");
                s="9";
            }
            else {
                s+="9";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btn0_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if("0".equals(s))
            { lblShow.setText("0");
                s="0";
            }
            else {
                s+="0";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btnMinus_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //減法
            if("0".equals(s))
            {

            }
            else {
                variable1-=Integer.parseInt(s);
                //s="0";
                lblShow.setText(s);
            }


        }
    };
    View.OnClickListener btnPlus_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //加法
            if("0".equals(s))
            {

            }
            else {
                op="+";
                variable1+=Integer.parseInt(s);
                s="0";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btnDevided_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //除法

            if("0".equals(s)){

            }
            else{
                op="/";
                variable1=Integer.parseInt(s);
                s="0";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btnMultiple_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            if("0".equals(s)){

            }
            else{
                op="*";
                variable1=Integer.parseInt(s);
                s="0";
                lblShow.setText(s);
            }
        }
    };
    View.OnClickListener btnEquals_click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if(op=="+"){
                //variable1=Integer.parseInt(lblShow.getText().toString());
                variable1+=Integer.parseInt(s);
                lblShow.setText(Integer.toString(variable1));
            }else if(op=="-")
            {
                //variable1=Integer.parseInt(lblShow.getText().toString());
                variable1-=Integer.parseInt(s);
                lblShow.setText(Integer.toString(variable1));
            }else if(op=="*")
            {
                //variable1=Integer.parseInt(lblShow.getText().toString());
                variable1*=Integer.parseInt(s);
                lblShow.setText(Integer.toString(variable1));
            }
            else if(op=="/")
            {
                //variable1=Integer.parseInt(lblShow.getText().toString());
                variable1/=Integer.parseInt(s);
                lblShow.setText(Integer.toString(variable1));
            }


        }
    }   ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("Logo_Demo","InitialComponent");
        super.onCreate(savedInstanceState);
        Log.d("Log_Demo","指定Xml檔案");
        setContentView(R.layout.activity_caculator);
        Log.d("Log_Demo","初始化畫面開始");
        InitialComponent();
        Log.d("Log_Demo","就緒");

    //shift+F6 可更改全部變數名稱
    }
    void InitialComponent(){
        btn1=(Button)findViewById(R.id.btn1);
        btn2=(Button)findViewById(R.id.btn2);
        btn3=(Button)findViewById(R.id.btn3);
        btn4=(Button)findViewById(R.id.btn4);
        btn5=(Button)findViewById(R.id.btn5);
        btn6=(Button)findViewById(R.id.btn6);
        btn7=(Button)findViewById(R.id.btn7);
        btn8=(Button)findViewById(R.id.btn8);
        btn9=(Button)findViewById(R.id.btn9);
        btn0=(Button)findViewById(R.id.btn0);
        btnPlus=(Button)findViewById(R.id.btnPlus);
        btnMinus=(Button)findViewById(R.id.btnMinus);
        btnMultiple=(Button)findViewById(R.id.btnMultiple);
        btnDvid =(Button)findViewById(R.id.btnDevided);
        btnEquals=(Button)findViewById(R.id.btnEquals);
        lblShow=(TextView)findViewById(R.id.lblShow);
        btn1.setOnClickListener(btn1_click);
        btn2.setOnClickListener(btn2_click);
        btn3.setOnClickListener(btn3_click);
        btn4.setOnClickListener(btn4_click);
        btn5.setOnClickListener(btn5_click);
        btn6.setOnClickListener(btn6_click);
        btn7.setOnClickListener(btn7_click);
        btn8.setOnClickListener(btn8_click);
        btn9.setOnClickListener(btn9_click);
        btn0.setOnClickListener(btn0_click);
        btnEquals.setOnClickListener(btnEquals_click);
        btnMinus.setOnClickListener(btnMinus_click);
        btnPlus.setOnClickListener(btnPlus_click);
        btnMultiple.setOnClickListener(btnMultiple_click);
        btnDvid.setOnClickListener(btnDevided_click);
        s =lblShow.getText().toString();
        variable1=0;
        variable2=0;
        op="";
    }
    Button btn1,btn2,btn3,btn4,btn5,btn6;
    Button btn7,btn8,btn9,btn0;
    Button btnDvid,btnMultiple,btnEquals,btnPlus,btnMinus ;
    TextView lblShow;
    String s;
}
