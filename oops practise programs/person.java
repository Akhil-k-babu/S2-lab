public class person {
    String name;
    int age;

    person(String name, int age){
        this.name=name;
        this.age=age;
    }

    void display(){
        System.out.println("Name: "+name+" Age : "+age);
    
    }

    public static void main(String[] args) {
        //creating an array of objects
        person p[] = new person[3];

        //Initialising objects
        p[0]=new person("ABC",20);
        p[1]=new person("DEF",22);
        p[2]=new person("GHI",24);

        //Accessing objects in the array
        // for (person P1:p){
        //     P1.display();
        // }

        for(int i=0;i<3;i++){
            p[i].display();
        }
    }
}
