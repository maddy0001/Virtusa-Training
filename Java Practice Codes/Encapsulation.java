class Encapsulation {
    // private data members
    private long bank_account_number;
    private String full_name, email_id;
    private float amount;

    // public getter and setter methods
    public long getbank_account_number() {
        return bank_account_number;
    }

    public void setbank_account_number(long bank_account_number) {
        this.bank_account_number = bank_account_number;
    }

    public String getfull_Name() {
        return full_name;
    }

    public void setfull_Name(String full_name) {
        this.full_name = full_name;
    }

    public String getemail_id() {
        return email_id;
    }

    public void setemail_id(String email_id) {
        this.email_id = email_id;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

}

public class TestEncapsulation {
    public static void main(String[] args) {
        // creating instance of Encapsulation class
        Encapsulation acc = new Encapsulation();
        // setting values through setter methods
        acc.setbank_account_number(999999999);
        acc.setfull_Name("Madhusuthanan G");
        acc.setemail_id("madhusudhanan0001@gmail.com");
        acc.setAmount(6900000);
        // getting values through getter methods
        System.out.println(acc.getbank_account_number() + " " + acc.getfull_Name() + " " + acc.getemail_id() + " "
                + acc.getAmount());
    }
}