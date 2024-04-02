package src;

import java.sql.SQLException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws SQLException {

        //users input for type of query
        System.out.println("What type of Query would you like to do?");
        Scanner scan = new Scanner(System.in);
        String query = scan.nextLine();

        try {
            if (query == "SELECT"){
                Select select = new Select();
                select.select();
            } else if (query == "INSERT INTO"){
                Insert insert = new Insert();
                insert.insert();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
