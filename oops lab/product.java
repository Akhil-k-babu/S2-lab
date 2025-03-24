
import java.util.Scanner;

public class product {
    int code;
    String name;
    float price;

    product(int c,String n,float p){
        code=c;
        name=n;
        price=p;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int c[]=new int[3];
        String n[]=new String[3];
        float p[]=new float[3];
        for(int i=0;i<3;i++){
            System.out.println("Enter the details of product "+(i+1)+" : ");
            System.out.print("Enter the name : ");
            n[i]=sc.next();
            System.out.print("Enter the code : ");
            c[i]=sc.nextInt();
            System.out.print("Enter the price : ");
            p[i]=sc.nextFloat();
        }
        product p1=new product(c[0],n[0],p[0]);
        product p2=new product(c[1],n[1],p[1]);
        product p3=new product(c[2],n[2],p[2]);

        if(p1.price>p2.price && p1.price>p3.price){
            System.out.println(p1.name+" is the most expensive product");
        }
        else if(p2.price>p1.price && p2.price>p3.price){
        System.out.println(p2.name+" is the most expensive product");
        }
        else{
            System.out.println(p3.name+" is the most expensive product");
        }
        
        
    }
}
