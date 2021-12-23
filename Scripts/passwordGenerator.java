import java.security.SecureRandom;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Random;

/**
 * Class pour hash un password ainsi que generer son salt
 * Prend un argument : le password qu'on souhaite encoder
 */
public class passwordHasher{

    public static void main(String []args) throws NoSuchAlgorithmException{

        if(args.length == 0){
            System.out.println("Prend au moins 1 argument : Un password");
            return;
        }
        System.out.println(args.length);
        SecureRandom sRandom = new SecureRandom();
        byte[] salt = new byte[16];
        sRandom.nextBytes(salt);

        String sSalt = Base64.getEncoder().encodeToString(salt);
        System.out.println("Salt : " + sSalt);

        byte[] bSalt = Base64.getDecoder().decode(sSalt);

        MessageDigest md = MessageDigest.getInstance("SHA-512");
        md.update(bSalt);

        byte[] hashedPassword = new byte[0];
        String password = args[0];
        hashedPassword = md.digest(password.getBytes(StandardCharsets.UTF_8));
        for (int i = 0; i < 1000; i++)
            hashedPassword = md.digest(hashedPassword);

        System.out.println(Base64.getEncoder().encodeToString(hashedPassword));

    }
}