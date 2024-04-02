package src;

import java.sql.*;
import java.util.Scanner;

public class Select {

    public static void select() throws SQLException {
        //login data
        String url = "jdbc:mysql://localhost:3306/btd/fortune/spotify";
        String username = "java";
        String password = "password";

        //connects to database
        System.out.println("Connecting database ...");
        Connection connection = DriverManager.getConnection(url, username, password);

        //users input for select query
        System.out.println("Enter Query");
        Scanner scan = new Scanner(System.in);
        String query = scan.nextLine();

        //extracts necessary data for the select query
        Statement statement = connection.createStatement();
        ResultSet resultset = statement.executeQuery(query);
        ResultSetMetaData metadata = resultset.getMetaData();
        int column_amount = metadata.getColumnCount();

        //iterates over the entire column
        while(resultset.next()){
            for (int i = 1; i <= column_amount; i++){
                String columnValue = resultset.getString(i);
                System.out.print(columnValue + " " + metadata.getColumnName(i) + " ");
                if (i == column_amount){
                    System.out.println("");
                }
            }
        }

        statement.close();
        connection.close();
    }
}
