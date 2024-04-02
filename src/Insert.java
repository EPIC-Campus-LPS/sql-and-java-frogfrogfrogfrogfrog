package src;

import java.sql.*;
import java.util.Scanner;
public class Insert {

    public static void insert() throws SQLException {
        //login data
        String url = "jdbc:mysql://localhost:3306/btd/fortune/spotify";
        String username = "java";
        String password = "password";

        //connects to database
        System.out.println("Connecting database ...");
        Connection connection = DriverManager.getConnection(url, username, password);

        //users input for insert query
        System.out.println("Enter Insert");
        Scanner scan = new Scanner(System.in);
        String query = scan.nextLine();

        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.execute();
        connection.close();
    }
}
