final class A
{
    int x=50;
}

public class finalclass extends A {
    int y=50;

    void display()
    {
        System.out.println("Value of x and y is: "+x+" and "+y);
    }

    public static void main(String[] args) {
        finalclass obj = new finalclass();
        obj.display();
    }
}

