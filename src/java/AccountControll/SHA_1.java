
package AccountControll;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class SHA_1 {
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
        String hashedPassword = toSHA1("MyPassword123");
        System.out.println("SHA-1 hashed password: " + hashedPassword);
        String hashedPassword1 = toSHA1("MyPassword123");
        System.out.println("SHA-1 hashed password: " + hashedPassword1);
    }
}
