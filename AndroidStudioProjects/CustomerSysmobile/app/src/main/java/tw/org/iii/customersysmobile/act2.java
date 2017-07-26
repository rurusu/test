package tw.org.iii.customersysmobile;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

/**
 * Created by iii on 2017/7/19.
 */

public class act2 extends ListActivity{
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        InitialComponent();

    }

    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        super.onListItemClick(l, v, position, id);

        Bundle bund = new Bundle();
        bund.putInt(Dictionary.BK_SELECT_INDEXT_LIST,position);
        Intent intent = new Intent();
        intent.putExtras(bund);
        setResult(0,intent);
        finish();
    }




    private void InitialComponent() {
        String[] data =getIntent().getExtras().getStringArray(Dictionary.BK_CUSTOMERS_DATA_LIST);
        ListAdapter adap =new ArrayAdapter<String>(this,
                android.R.layout.simple_list_item_1,data);
        setListAdapter(adap);


    }
}
