/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author Minh Châu
 */
public class InputController {
    public static boolean checkPhoneNumber(String phone) {
        String regex = "/^[0-9]{9,11}$/";
        return phone.matches(regex);
    }
    
    public static boolean checkPassword (String password) {
        String regex = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        return password.matches(regex);
    }
}
