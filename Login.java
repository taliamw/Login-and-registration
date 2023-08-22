//last trial
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

/**
 *
 * @author dim
 */

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class Login extends JFrame implements ActionListener {

    JLabel l1, l2, l3;
    JTextField tf1;
    JButton btn1, btn2;
    JPasswordField p1;
    private String Driver="com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost/login"; //Database URL
    private String uName = "root";
    private String uPass = "";

    public Login() {
        //initialize container properties
        setSize(700, 700);
        setLayout(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setTitle("Login Page");

        //initialize GUI components
        l1 = new JLabel("Login Page");
        l1.setForeground(Color.blue);
        l1.setFont(new Font("Serif", Font.BOLD, 20));
        l2 = new JLabel("Username:");
        l3 = new JLabel("Password:");
        tf1 = new JTextField();
        p1 = new JPasswordField();
        btn1 = new JButton("Login");
        btn2 = new JButton("Register");

        //deciding location for the components since we have no layout
        l1.setBounds(300, 110, 400, 30);
        l2.setBounds(80, 160, 200, 30);
        l3.setBounds(80, 210, 200, 30);
        tf1.setBounds(300, 160, 200, 30);
        p1.setBounds(300, 210, 200, 30);
        btn1.setBounds(250, 270, 100, 30);
        btn2.setBounds(370, 270, 100, 30);

        //add to container
        add(l1);
        add(l2);
        add(l3);
        add(tf1);
        add(p1);
        add(btn1);
        add(btn2);

        //actions
        btn2.addActionListener(this);
        btn1.addActionListener(this);

    }

    public static void main(String args[]) {
        Login login = new Login();
        login.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO Auto-generated method stub

        if (e.getSource() == btn2) {

            Registration a = new Registration();
            a.setVisible(true);
            this.setVisible(false);
        } else if (e.getSource()==btn1) {
            String username=tf1.getText();
            String password=new String(p1.getPassword());

            try {
                Connection conn= DriverManager.getConnection(url,uName,uPass);

                String sql="SELECT * FROM registered WHERE name=? AND createpassword=?";
                PreparedStatement statement= conn.prepareStatement(sql);
                statement.setString(1,username);
                statement.setString(2,password);

                ResultSet resultSet=statement.executeQuery();

                if(resultSet.next()){
                    JOptionPane.showMessageDialog(null,"Login successful");
                    Welcome welcome=new Welcome();
                }
                else {
                    JOptionPane.showMessageDialog(null,"Invalid username or password");
                }
                resultSet.close();
                statement.close();
                conn.close();
            }
            catch (SQLException ex){
                JOptionPane.showMessageDialog(null,"Error in database"+ex.getMessage());
            }


        //if (e.getSource()==btn1){
          //  Welcome b=new Welcome();
            //b.setVisible(true);

        }
    }
}
