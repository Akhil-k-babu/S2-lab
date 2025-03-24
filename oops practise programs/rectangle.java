public class rectangle {
    int l,b;
    rectangle(int x, int y){
        l=x;
        b=y;
    }
    void area(){
        System.out.println("Area of rectangle is: "+l*b);
    }
    void display()
    {
        System.out.println(l+" & "+b);
    }
}
