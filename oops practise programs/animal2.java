public class animal2 extends animal1{
    String colour="White";

    void colourdisplay()
    {
        System.out.println(colour);
        System.out.println("Colour of parent is "+super.colour);
    }

    public static void main(String[] args) {
        animal2 ob=new animal2();
        ob.colourdisplay();
    }
}