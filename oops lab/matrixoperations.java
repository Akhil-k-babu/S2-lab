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
        System.out.println("Matrix operations:");
       
        do {
            System.out.flush();
            System.out.println("Select the operation:");
            System.out.println("1. Addition");
            System.out.println("2. Transpose");
            System.out.println("3. Multiplication");
            System.out.println("4. Exit");
            c = sc.nextInt();
            switch (c) {
                case 1:
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
                    if(r1==r2 && c1==c2){
                        matrixoperations m3=new matrixoperations(r1,c1);
                        for(int i=0;i<r1;i++){
                            for(int j=0;j<c1;j++){
                                m3.matrix[i][j] = m1.matrix[i][j] + m2.matrix[i][j];
                            }
                        }
                        m3.display();
                    }
                    else{
                        System.out.println("Matrix addition is not possible!!!");
                    }
                    break;

                case 2:
                    System.out.println("Enter the number of rows of matrix 1: ");
                    r1 = sc.nextInt();
                    System.out.println("Enter the number of columns of matrix 1: ");
                    c1 = sc.nextInt();
                    matrixoperations m4 = new matrixoperations(r1,c1);
                    m4.input();
                    System.out.println("Transpose of matrix is :");
                    for(int i=0;i<c1;i++){
                        for(int j=0;j<r1;j++){
                            System.out.print(m4.matrix[j][i]+" ");
                        }
                        System.out.println();
                    }
                    break;

                case 3:
                    //input for matrix 1
                    System.out.println("Enter the number of rows of matrix 1: ");
                    r1 = sc.nextInt();
                    System.out.println("Enter the number of columns of matrix 1: ");
                    c1 = sc.nextInt();
                    matrixoperations m5 = new matrixoperations(r1,c1);
                    m5.input();

                    //input for matrix 2
                    System.out.println("Enter the number of rows of matrix 2: ");
                    r2 = sc.nextInt();
                    System.out.println("Enter the number of columns of matrix 2: ");
                    c2 = sc.nextInt();
                    matrixoperations m6 = new matrixoperations(r2,c2);
                    m6.input();

                    if(c1==r2){
                        matrixoperations m7=new matrixoperations(r1,c1);
                        for(int i=0;i<r1;i++){
                            for(int j=0;j<c2;j++){
                                int sum=0;
                                for(int k=0;k<c1;k++){
                                    sum=sum+m5.matrix[i][k]*m6.matrix[k][j];
                                }
                                m7.matrix[i][j]=sum;
                            }
                        }
                        m7.display();
                    }
                    else{
                        System.out.println("Matrix multiplication is not possible!!!");
                    }
                    break;
                case 4:
                    break;
            } 
        }while (c<3);


    }
}
