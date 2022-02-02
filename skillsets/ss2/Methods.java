import java.util.Scanner;

public class Methods
{
    public static void getRequirements()
    {
        System.out.println("Program evaluates largest of two intergers.");
        System.out.println("Note: Program does *not* check for non-numeric characters or non-interger values.");
        System.out.println("Devloped by: John Corrigan");
    }
    public static void largestNumber()
    {
        int num1;
        int num2;

        System.out.print("Enter first interger:");

        Scanner input = new Scanner(System.in);
        num1 = input.nextInt();
        System.out.print("Enter second interger:");
        num2 = input.nextInt();

        if ( num1 > num2 )
            System.out.println(num1 + " is larger than " + num2);
        else if ( num1 < num2 )
            System.out.println(num2 + " is larger than " + num1);
        else
            System.out.println("Intergers are equal.");
    }
}