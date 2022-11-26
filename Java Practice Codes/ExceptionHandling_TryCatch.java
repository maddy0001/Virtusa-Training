public class ExceptionHandling_TryCatch {

    public static void main(String[] args) {
        try {
            int data = 100 / 0; // may throw exception
        }
        // handling the exception
        catch (ArithmeticException e) {
            System.out.println(e);
        }
        System.out.println("Rest of the code");
    }

}