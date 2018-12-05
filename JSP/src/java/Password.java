

import java.io.IOException;
import java.util.Date;
import java.util.Random;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class Password {

    private static Random rand = new Random((new Date()).getTime());

    public static String encrypt(String str) {

        BASE64Encoder encoder = new BASE64Encoder();

        byte[] salt = new byte[8];

        rand.nextBytes(salt);

        return encoder.encode(salt) + encoder.encode(str.getBytes());
    }

    public static boolean decrypt(String encstr, String entpass) {

        if (encstr.length() > 12) {

            String cipher = encstr.substring(12);

            BASE64Decoder decoder = new BASE64Decoder();

            try {

                String decoded = new String(decoder.decodeBuffer(cipher));
                if (decoded.equals(entpass)) {
                    return true;
                } else {
                    return false;
                }

            } catch (IOException e) {

                //  throw new InvalidImplementationException(
                //Fail
            }

        }
        return false;
    }
}
