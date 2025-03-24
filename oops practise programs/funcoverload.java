import java.util.Scanner;

public class funcoverload {
    void area(float r)
    {
        System.out.println("Area of circle is "+3.14*r*r);
    }

    void area(int l,int b){
        System.out.println("Area of rectangle is "+l*b);
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the radius of circle: ");
        int r=sc.nextInt();
        System.out.print("Enter the length and breadth of rectangle: ");
        int l=sc.nextInt();
        int b=sc.nextInt();

        funcoverload O=new funcoverload();
        O.area(r);
        O.area(l,b);
    }
}
