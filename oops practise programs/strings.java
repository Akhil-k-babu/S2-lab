import java.lang.*;
public class strings {
    public static void main(String[] args) {
        String str = "Hello, World!";
        System.out.println(str);
        String str2=new String("New World");
        System.out.println(str2);
        System.out.println(str+"  "+str2);
        int strlength=str.length();
        System.out.println(strlength);

        StringBuffer str3 = new StringBuffer("abc");
        System.out.println(str3);
        StringBuffer str4 = new StringBuffer("def");
        System.out.println(str4);
        System.out.println(str3.append(str4).append("ghi"));
        System.out.println(str3);

        System.out.println(str4.insert(2, "newword"));
        System.out.println(str4.delete(2, 3));
    }
    
}
