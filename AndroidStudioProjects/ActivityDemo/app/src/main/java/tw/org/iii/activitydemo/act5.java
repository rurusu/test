package tw.org.iii.activitydemo;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

import java.util.List;

/**
 * Created by iii on 2017/7/18.
 */

public class act5 extends ListActivity{


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        IniCialComponent();
    }


    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        super.onListItemClick(l, v, position, id);
       Log.i("List_Demo",String.valueOf(position));
        String name =String.valueOf(position);
        TEST("name");
    }

    private void TEST(String ss) {
        Bundle bund=new Bundle();
        bund.putString("kk",ss);
        Intent intent = new Intent();
        intent.putExtras(bund);
        setResult(0,intent);
        finish();
    }

    private void IniCialComponent() {

        String[] names={"Marco","Tom","Jason","Selina","Mark","July",
              "Mary","Bill","Jacky","Wang","Matt","1","2","3","4","5","6"};

        ListAdapter adapter = new ArrayAdapter<String>(this,
                android.R.layout.simple_list_item_1,names);
        setListAdapter(adapter);



    }
   /* String[] names={"Marco","Tom","Jason","Selina","Mark","July",
            "Mary","Bill","Jacky","Wang","Matt"};*/


}
