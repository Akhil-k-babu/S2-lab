public class shape {
    shape(int r){
        System.out.println("Area of circle is "+3.14*r*r);
    }

    shape(int l,int b){
        System.out.println("Area of rectangle is "+l*b);
    }

    public static void main(String[] args) {
        shape S1 = new shape(5);
        shape S2 = new shape(3,5);

        shape S3;
        S3=new shape(6);
        S3=new shape(6,5);
    }
}
