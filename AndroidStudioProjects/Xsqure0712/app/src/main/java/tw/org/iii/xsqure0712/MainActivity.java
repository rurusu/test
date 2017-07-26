package tw.org.iii.xsqure0712;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import static tw.org.iii.xsqure0712.R.id.textA;
import static tw.org.iii.xsqure0712.R.id.textAns;

public class MainActivity extends Activity implements View.OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btnConfirm = (Button)findViewById(R.id.btnConfirm);
        btnConfirm.setOnClickListener(this);


    }

    @Override
    public void onClick(View v) {
        EditText a =(EditText)findViewById(R.id.textA);
        EditText b =(EditText)findViewById(R.id.textB);
        EditText c =(EditText)findViewById(R.id.textC);
        String A =a.getText().toString();
        String B =b.getText().toString();
        String C =c.getText().toString();
        int ia = Integer.parseInt(A);
        int ib = Integer.parseInt(B);
        int ic = Integer.parseInt(C);
        TextView t = (TextView)findViewById(textAns);
        t.setText((new binary_equation()).GetAnswer(ia,ib,ic));

    }


}
