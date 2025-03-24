import java.util.Scanner;

public class arraysort {
    public static void main(String[] var0) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of array ");
        int n=sc.nextInt();
        int array1[];
        array1 = new int[n];
        int i,j;
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
        for(i=0;i<n-1;i++)
        { 
           for(j=0;j<n-i-1;j++)
           {
            if(array1[j]>array1[j+1])
            {
                int temp=array1[j];
                array1[j]=array1[j+1];
                array1[j+1]=temp;
            }
            }
        }
        System.out.println("\nSorted Array Elements are");
        for(i=0;i<n;i++)
        { 
            System.out.print(array1[i]+"\t");

        }
        
        
     }
}
