import java.util.Scanner;

public class Methods
{
    public static void getRequirements()
    {
        System.out.println("Developer: John Corrigan");
        System.out.println("Program prompts user for first time name and age, then prints results.");
        System.out.println("Create four methods from the following requirements:");
        System.out.println("1) getRequirements(): Void method displays program requirements.");
        System.out.println("2) getUserInput(): Void method prompts for user input.");
        System.out.println("    then calls two methodsL: myVoidMethod() and myValueReturningMethod().");
        System.out.println("3) myVoidMethod():");
        System.out.println("    a. Accepts two arguments: String and int.");
        System.out.println("    b. Prints user's first name and age.");
        System.out.println("4) myValueReturningMethod():");
        System.out.println("    a. Accepts two arguments: String and int.");
        System.out.println("    b. Returns String containing first name and age.");
    }
    public static void getUserInput()
    {
        String firstName="";
        int userAge = 0;
        String myStr="";
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter first name: ");
        firstName=sc.next();

        System.out.println("Enter age: ");
        userAge=sc.nextInt();

        System.out.println();

        System.out.print("Void method call: ");
        myVoidMethod(firstName, userAge);

        System.out.print("value-returning method call: ");
        myStr = myValueReturningMethod(firstName, userAge);
        System.out.println(myStr);
    }

    public static void myVoidMethod(String first, int age)
    {
        System.out.println(first + " is " + age);
        return;
    }

    public static String myValueReturningMethod(String first, int age)
    {
        return first + " is " + age;
    }
}
