package login;

import javax.swing.*;

public class Welcome extends JFrame {

    JLabel welcome;

    public Welcome(){
        setSize(700,700);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setTitle("Welcome page");
        setLayout(null);
        setVisible(true);

        welcome=new JLabel("WELCOME, YOUR LOGIN WAS SUCCESSFUL!");
        welcome.setBounds(150,200,500,30);
        welcome.setVisible(true);

        add(welcome);
    }
}
