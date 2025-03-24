import java.util.Scanner;
public class array 
{
    public static void main(String[] var0) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array ");
        int n=sc.nextInt();
        int array1[];
        array1 = new int[n];
        int i;
        for(i=0;i<n;i++)
        { 
            System.out.print("Enter element "+(i+1)+" ");
            array1[i]=sc.nextInt();
            
        }
        System.out.println("Array Elements are");
        for(i=0;i<n;i++)
        { 
            System.out.print(array1[i]+"\t");

            
        }
        int arrlength=array1.length;
        System.out.println("Length of array is "+arrlength);
     }
}
