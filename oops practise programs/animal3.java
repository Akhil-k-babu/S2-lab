public class animal3 extends animal2 {
    String colour="Grey";

    void colourdisplay()
    {
        System.out.println(colour);
        System.out.println("Colour of parent is "+super.colour);
    }
    public static void main(String[] args) {
        animal3 ob=new animal3();
        ob.colourdisplay();
    }
}
