public class cube extends rectangle{
    int h;
    cube(int x, int y,int z){
        super(x,y);
        h=z;
        System.out.println("Height = "+h);
    }

    void volume(){
        area();
        System.out.println("Volume of cube is: "+l*b*h);
        
        System.out.println(super.l);
    }
    void display(int a)
    {
        System.out.println(l+","+b+" & "+h);
    }
    public static void main(String[] args) {
        cube c = new cube(2,4,5);
        c.volume();
        c.display(5);
        c.display();
    }
}