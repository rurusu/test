package tw.org.iii.customersysmobile;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Actmain extends Activity {
    CCustomerFactory factory = new CCustomerFactory();
    private View.OnClickListener btnFirst_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            factory.movetoFirst();
            DisplayCustomerInfo();
        }
    };
    private View.OnClickListener btnNext_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            factory.movetoNext();
            DisplayCustomerInfo();
        }
    };

    private View.OnClickListener btnLast_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            factory.movetolast();
            DisplayCustomerInfo();
        }
    };

    private View.OnClickListener btnPrevious_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            factory.movetoPrevious();
            DisplayCustomerInfo();
            Log.d("debug","previous");
        }
    };

    private View.OnClickListener btnList_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
           String[] customers = new String[factory.getAll().length];
            int count =0;
            for(Customer c:factory.getAll()){
                customers[count]=c.getName()+"\r\n"+c.getPhone()+"\n"+c.getAddress();
                count++;
            }
            Bundle bund = new Bundle();
            bund.putStringArray(Dictionary.BK_CUSTOMERS_DATA_LIST,customers);
            Intent intent =new Intent(Actmain.this,act2.class);
            intent.putExtras(bund);
            startActivityForResult(intent,Dictionary.AID_ACTLIST);
            Log.d("debug","open list");

        }
    };

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(data ==null||data.getExtras()==null)
            return;
        if(requestCode==Dictionary.AID_ACTLIST){
            int index = data.getExtras().getInt(Dictionary.BK_SELECT_INDEXT_LIST);
            factory.moveto(index);
            DisplayCustomerInfo();

        }
    }

    private void DisplayCustomerInfo() {
        txtAccount.setText(factory.getCurrent().getAccount());
        txtName.setText(factory.getCurrent().getName());
        txtPhone.setText(factory.getCurrent().getPhone());
        txtEmail.setText(factory.getCurrent().getEmail());
        txtAddress.setText(factory.getCurrent().getAddress());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.actmain);
        initialization();
    }

    private void initialization() {
        btnFirst=(Button)findViewById(R.id.first);
        btnLast=(Button)findViewById(R.id.last);
        btnPrevious=(Button)findViewById(R.id.previous);
        btnNext=(Button)findViewById(R.id.next);
        btnList=(Button)findViewById(R.id.list);
        txtAccount=(EditText)findViewById(R.id.account);
        txtName=(EditText)findViewById(R.id.name);
        txtPhone=(EditText)findViewById(R.id.phone);
        txtEmail=(EditText)findViewById(R.id.email);
        txtAddress=(EditText)findViewById(R.id.address);
        btnFirst.setOnClickListener(btnFirst_Click);
        btnLast.setOnClickListener(btnLast_Click);
        btnNext.setOnClickListener(btnNext_Click);
        btnPrevious.setOnClickListener(btnPrevious_Click);
        btnList.setOnClickListener(btnList_Click);


    }
    Button btnFirst,btnLast,btnPrevious,btnNext,btnList;
    EditText txtAccount,txtName,txtPhone,txtEmail,txtAddress;
}
