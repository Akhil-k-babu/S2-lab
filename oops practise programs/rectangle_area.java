class rectangle_area {
    int l,b;

    rectangle_area(int x, int y)
    {
        l=x;
        b=y;
    }

    void getvalues(int x,int y)
    {
        l=x;
        b=y;
    }

    void area()
    {
        System.out.println("Area of rectangle is "+l*b);
    }

    public static void main(String[] args) {
        
        rectangle_area R=new rectangle_area(2,5);
        //R.getvalues(5, 6);
        R.area();
    }
}
