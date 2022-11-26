// CREATE TABLE department

// (

//  deptid number(5) PRIMARY KEY,
//  deptname varchar(10) NOT NULL,
//  facultyid number(5) NOT NULL
// );

// insert into department values (1,'Madhusuthanan G',1914131);
// insert into department values (2,'Marshall Mathers',0001);

import java.util.Scanner;
import java.sql.*;

public class Jdbc {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        String dname = sc.nextLine();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@10.1.100.120:1521:xe", "stu1914131",
                    "stu1914131");
            System.out.println("---To display details---");
            PreparedStatement stmt = con.prepareStatement("SELECT deptid, deptname, facultyid FROM department");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getInt(3));

            }
        } finally {
            System.out.println("Executed");
        }
    }
}
