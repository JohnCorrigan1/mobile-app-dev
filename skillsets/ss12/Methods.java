import java.util.Scanner;

public class Methods {
    public static void getRequirements() {
        System.out.println("Temperature Conversion Program");
        System.out.println("\nProgram converts user-entered temperatures into Farenheit or Celsius scales.");
        System.out.println("Program contunues to prompt for user entry until no longer requested.");
        System.out.println("Note: upper or lower case letters permitted. Though, incorrect entries are not permitted.");
        System.out.println("Note: Program does not validate numeric data (optional requirement).");
        System.out.println();
    }

    public static void convertTemp() {
        Scanner sc = new Scanner(System.in);
        double temperature = 0.0;
        char choice = ' ';
        char type = ' ';

        do {
            System.out.print("Farenheit to Celsius? Type \"f\", or Celsius to Farenheit? Type \"c\": ");
            type = sc.next().charAt(0);
            type = Character.toLowerCase(type);
            if(type == 'f') {
                System.out.print("Enter temperature in Farenheit: ");
                temperature = sc.nextDouble();
                temperature = ((temperature - 32)*5)/9;
                System.out.println("Temperature in Celsius = " + temperature);
            }
            else if (type == 'c') {
                System.out.println("Enter temperature in Celsius: ");
                temperature = sc.nextDouble();
                temperature = (temperature * 9/5) + 32;
                System.out.println("Temperature in Farenheit = " + temperature);
            }
            else {
                System.out.print("Incorrext entry. Please try again.");
            }

            System.out.println("\nDo you want to convert a temperature (y or n)? ");
            choice = sc.next().charAt(0);
            choice = Character.toLowerCase(choice);
        }
        while (choice == 'y');
        
        System.out.println("\nThank you for using our Temperature Conversion Program!");
    }
}