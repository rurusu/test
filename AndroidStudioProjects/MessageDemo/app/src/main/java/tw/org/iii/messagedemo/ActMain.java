package tw.org.iii.messagedemo;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.graphics.Color;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Calendar;

public class ActMain extends AppCompatActivity {

    private  View.OnClickListener btnLottery_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            AlertDialog.Builder builder = new AlertDialog.Builder(ActMain.this);
            builder.setTitle("樂透選號(到底多愛樂透)");
            //builder.setItems();
        }
    };

    DatePickerDialog.OnDateSetListener btnDateSetting_Click = new DatePickerDialog.OnDateSetListener(){
        @Override
        public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
            lblShow.setText(String.valueOf(year)+"/"
                    +String.valueOf(month+1)
                    +"/"+String.valueOf(dayOfMonth));
            //java 月份從0開始所以要加1
        }
    };
    private View.OnClickListener btnDate_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Calendar today =Calendar.getInstance();
            Dialog msg =new DatePickerDialog(
                    ActMain.this,
                    btnDateSetting_Click,
                    today.get(Calendar.YEAR),
                    today.get(Calendar.MONTH),
                    today.get(Calendar.DATE)
            );
            msg.show();

        }
    };
    private View.OnClickListener btnProgress_Click = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            ProgressDialog psd =new ProgressDialog(ActMain.this);
            psd.setMax(100);
            psd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
            //STYLE_SPINNER轉圈
            psd.setTitle("Reading");
            psd.setCancelable(true);
            psd.incrementProgressBy(1);
            psd.show();
            /*如果要讓他動態執行，要放到thread裡面跑迴圈
            迴圈跑100次，則psd.incrementProgressBy(1);
            則會跑1~100
            跑1~200，可設定迴圈100次，psd.incrementProgressBy(0.5);*/

        }
    };
    private  View.OnClickListener btnToast_Click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast msg = Toast.makeText(ActMain.this,
                    "Hi,I'm here",Toast.LENGTH_LONG);
            msg.show();
        }

    };
    private  View.OnClickListener btnSnackAction_Click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            lblShow.setText("Hello SnackBar");

        }

    };
    private  View.OnClickListener btnSnack_Click =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Snackbar.make(v,"偵測到wifi",Snackbar.LENGTH_LONG)
                    .setAction("OK",btnSnackAction_Click)
                    .setActionTextColor(Color.GREEN)
                    .show();
            //Snackbar有問題
        }

    };
    private  View.OnClickListener btnNotif_Click =new View.OnClickListener() {

        @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN)
        @Override
        public void onClick(View v) {
            Notification msg =new Notification.Builder(ActMain.this)
                    .setContentTitle("您有3封訊息")
                    .setContentText("訊息來自suru")
                    .setSmallIcon(android.R.drawable.stat_sys_speakerphone)
                    .build();
            NotificationManager manager =
                    (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
            manager.notify(0,msg);


        }
    };

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        super.onCreateContextMenu(menu, v, menuInfo);
        menu.add(1,1,1,"copy");
        menu.add(1,2,2,"paste");
        menu.add(1,3,3,"copy");


    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if(item.getItemId()==0)
            lblShow.setText("copy");
        if(item.getItemId()==1)
            lblShow.setText("paste");
        if(item.getItemId()==2)
            lblShow.setText("cut");
        return super.onOptionsItemSelected(item);
    }

    @Override
    //Create Menu
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0,0,1,"copy");
        menu.add(0,1,2,"paste");
        menu.add(0,2,3,"cut");
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_main);
        InitialConpoment();

    }

    private void InitialConpoment() {
        btnLottery=(Button)findViewById(R.id.btnLottery);
        btnBuilder=(Button)findViewById(R.id.btnBuilder);
        btnSendData=(Button)findViewById(R.id.btnSendData);
        btnListData=(Button)findViewById(R.id.btnListData);
        btnRecData=(Button)findViewById(R.id.btnReceibeData);
        btnDate=(Button)findViewById(R.id.btnDatePickerDialog);
        btnProgress=(Button)findViewById(R.id.btnProgress);
        btnToast=(Button)findViewById(R.id.btnToast);
        btnSnack=(Button)findViewById(R.id.btnSnack);
        btnNotif=(Button)findViewById(R.id.btnNotif);

        lblShow=(TextView)findViewById(R.id.lblshow);

        btnLottery.setOnClickListener(btnLottery_Click);
        btnDate.setOnClickListener(btnDate_Click);
        btnProgress.setOnClickListener(btnProgress_Click);
        btnToast.setOnClickListener(btnToast_Click);
        btnSnack.setOnClickListener(btnSnack_Click);
        btnNotif.setOnClickListener(btnNotif_Click);

        //註冊目標視窗
        registerForContextMenu(lblShow);


    }
    TextView lblShow;
    Button btnLottery,btnBuilder,btnSendData,btnRecData,btnListData,btnDate,btnProgress;
    Button btnToast,btnSnack,btnNotif;

}
