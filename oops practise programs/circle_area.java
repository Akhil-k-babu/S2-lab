import java.util.*;

class circle
{
    int r;
    void area()
    {
        System.out.println("Area of circle is "+3.14*r*r);
    }
}

class circle_area
{
    public static void main(String[] args) {
        circle C1=new circle();
        C1.r=5;
        C1.area();
    }
}