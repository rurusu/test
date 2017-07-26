package tw.org.iii.xsqure0712;

import java.text.DecimalFormat;

import static tw.org.iii.xsqure0712.R.id.textA;

/**
 * Created by iii on 2017/7/12.
 */

public class binary_equation {
    public  String GetAnswer(int A, int B, int C){

        String Ans ="";
        /*double x=Math.pow(B,2);
        double y = 4*A*C;
        double binary = x - y ;
        double d = Math.sqrt(binary);
        double Answer = (-B+d)/(2*A);
        double Answer2 =(-B-d)/(2*A);
        String X1 =Double.toString(Answer);
        String X2 = Double.toString(Answer2);
       // DecimalFormat formater = new DecimalFormat("0.00");
       // Ans ="解答:"+ X1+"、"+X2;
       // Ans = String.format("解答:%d,%d",Double.toString(Answer),Double.toString(Answer2));
        //會出錯
        return Ans;*/
        double r =Math.pow(B,2);
        r=r-4*A*C;
        Double Answer1 =(-B+r)/(2*A);
        Double Answer2 =(-B-r)/(2*A);
        DecimalFormat fom =new DecimalFormat("0.00");
        Ans = "解答:"+fom.format(Answer1)+","+fom.format(Answer2);
        //fomat裡面放double

        return  Ans;
    }
}
