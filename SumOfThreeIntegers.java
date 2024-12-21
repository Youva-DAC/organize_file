import java.util.Scanner;

public class SumOfThreeIntegers {
    public static void main(String[] args) {
        // Create a Scanner object to read input
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to enter three integers
        System.out.print("Enter the first integer: ");
        int num1 = scanner.nextInt();

        System.out.print("Enter the second integer: ");
        int num2 = scanner.nextInt();

        System.out.print("Enter the third integer: ");
        int num3 = scanner.nextInt();

        // Calculate the sum of the three integers
        int sum = num1 + num2 + num3;

        // Display the result
        System.out.println("The sum of " + num1 + ", " + num2 + ", and " + num3 + " is: " + sum);

        // Close the scanner
        scanner.close();
    }
}