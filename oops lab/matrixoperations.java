import java.util.*;
public class matrixoperations {
    int r,c;
    int[][] matrix = new int[10][10];

    matrixoperations(int a,int b){
        r=a;
        c=b;
    }

    void input(){
        Scanner sc = new Scanner(System.in);
        for(int i=0;i<r;i++){
            for(int j=0;j<c;j++){
                System.out.print("Enter the element "+i+","+j+" : ");
                matrix[i][j]=sc.nextInt();
            }
        }
    }

    void display()
    {
        for(int i=0;i<r;i++){
            for(int j=0;j<c;j++){
                System.out.print(matrix[i][j]+" ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int r1,r2,c1,c2,c=1;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.println("Matrix operations:");
        } while (c<4);

        //input for matrix 1
        System.out.println("Enter the number of rows of matrix 1: ");
        r1 = sc.nextInt();
        System.out.println("Enter the number of columns of matrix 1: ");
        c1 = sc.nextInt();
        matrixoperations m1 = new matrixoperations(r1,c1);
        m1.input();

        //input for matrix 2
        System.out.println("Enter the number of rows of matrix 2: ");
        r2 = sc.nextInt();
        System.out.println("Enter the number of columns of matrix 2: ");
        c2 = sc.nextInt();
        matrixoperations m2 = new matrixoperations(r2,c2);
        m2.input();

        // matrixoperations m3=new matrixoperations(r1,c1);
        // for(int i=0;i<r1;i++){
        //     for(int j=0;j<c1;j++){
        //         m3.matrix[i][j] = m1.matrix[i][j] + m2.matrix[i][j];
        //     }
        // }
        // m3.display();

        matrixoperations m4=new matrixoperations(r1, c2);
        
        for(int i=0;i<r1;i++){
            for(int j=0;j<c2;j++){
                int sum=0;
                for(int k=0;k<c1;k++){
                    sum=sum+m1.matrix[i][k]*m2.matrix[k][j];
                }
                m4.matrix[i][j]=sum;
            }
        }

        m4.display();

    }
}
