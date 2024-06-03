/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AccountControll;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 *
 * @author tanng
 */
public class SHA1 {
    public static String toSHA1(String password) {
        String salt = "qwerfvbjuytresxcb";
        String result = "";
        password = password + salt;
        try {
            byte[] dataBytes = password.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] hashBytes = md.digest(dataBytes);
            result = Base64.getEncoder().encodeToString(hashBytes);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
        }
        return result;
}
    public static void main(String[] args) {
        System.out.println(toSHA1("Abc12345678"));
    }
}
