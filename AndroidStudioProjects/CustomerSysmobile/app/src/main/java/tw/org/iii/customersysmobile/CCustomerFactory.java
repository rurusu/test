package tw.org.iii.customersysmobile;

import java.util.ArrayList;

/**
 * Created by iii on 2017/7/19.
 */

public class CCustomerFactory {

    ArrayList<Customer> list = new ArrayList<Customer>();
    int position  = 0;
    public  CCustomerFactory(){
        loadData();
    }
    public void loadData(){
        list.add(new Customer("A01","Porter","071588155","harry@gmail.com","London"));
        list.add(new Customer("A02","Alice","071588155","alice@gmail.com","Wonderland"));
        list.add(new Customer("A03","Betty","071588155","bee@gmail.com","Department"));
        list.add(new Customer("A04","Eliza bell","071588155","bella@gmail.com","Down"));

    }
    public void movetoFirst(){
        position=0;
    }
    public void movetolast(){

        position=list.size()-1;
    }
    public void movetoPrevious(){
        position--;
        if(position<0)
            position=0;
    }
    public void movetoNext(){
        position++;
        if(position>=list.size())
            movetolast();
    }
    public void moveto(int index){
        position=index;

    }
    public Customer getCurrent(){
        return list.get(position);

    }
    public Customer[] getAll(){
        return list.toArray(new Customer[list.size()]);

    }
}
