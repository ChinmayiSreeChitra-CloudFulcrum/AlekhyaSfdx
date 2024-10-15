public class demodeploy {
    public static void demo(){
        Decimal length=4, breadth=6;
        Decimal a= length*breadth;
        System.debug('Area ='+a);
        Decimal p= 2*(length+breadth);
        System.debug('Peri ='+p);
        Decimal b= length+breadth;
        System.debug('All='+b);
    }
}