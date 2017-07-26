package tw.org.iii.helloapp;

import java.util.Arrays;

/**
 * Created by iii on 2017/7/12.
 */
public class CLottoGen {

    public String GetNumbers(){

        String l_strNumbers="";
        int l_intCount=0;
        int[] l_intNumbers=new int[6];

        while(l_intCount<6){
            double d=100*Math.random();
            int l_intTemp=(int)d;
            if(l_intTemp>=1 && l_intTemp<=49){
                if(!IsRepeat(l_intTemp,l_intNumbers)){
                    l_intNumbers[l_intCount]=l_intTemp;
                    l_intCount++;
                }
            }
        }
        //bouble sorting 交換要多一個杯子來暫存
        for(int i=0;i<l_intNumbers.length;i++){
            for(int j=0;j<l_intNumbers.length-1;j++){
                if(l_intNumbers[j]>l_intNumbers[j+1]){
                    int l_intMax=l_intNumbers[j];
                    l_intNumbers[j]=l_intNumbers[j+1];
                    l_intNumbers[j+1]=l_intMax;
                }
            }
        }

        for(int i=0;i<l_intNumbers.length;i++)
            l_strNumbers+=String.valueOf( l_intNumbers[i])+" ";

        return l_strNumbers;
    }

    public boolean IsRepeat(int p_intTarget,int[] p_intNumbers){

        for(int i=0;i<p_intNumbers.length;i++){
            if(p_intTarget==p_intNumbers[i]){
                return true;
            }
        }
        return false;
    }
}
