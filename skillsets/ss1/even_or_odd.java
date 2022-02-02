import java.util.Scanner;

class even_or_odd
{
    public static void main(String args[])
    {
        System.out.println("Program evaluates intergers as even or odd.");
        System.out.println("Note: Program does *not* check for non-numeric characters.");
        System.out.println();
        int num;
        System.out.println("Enter interger:");

        Scanner input = new Scanner(System.in);
        num = input.nextInt();

        if ( num % 2 == 0 )
            System.out.println(num + " is an even number.");
        else
            System.out.println(num + " is an odd number.");
    }
}