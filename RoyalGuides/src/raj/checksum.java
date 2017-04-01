package raj;
import java.security.MessageDigest;
import java.util.Formatter;

public class checksum {

	public static void main(String args[]){
		String x="#2&[W<nJ*K\"xO_z";
		System.out.println(checksumf("HACKATHON2017|128525677890|100.00|"+x));
	}
	public static String checksumf(final String toBeEncryptString){

		if (toBeEncryptString == null) {

		throw new IllegalArgumentException("To be encrypt string must not be null");

		}

		try {

		MessageDigest md = MessageDigest.getInstance("MD5");

		md.update(toBeEncryptString.getBytes());

		byte byteData[] = md.digest();

		return byteArray2Hex(byteData);

		} catch (Exception ex) {


		}
		return toBeEncryptString;

		}

		@SuppressWarnings("resource")
		public static String byteArray2Hex(byte[] bytes) {

		Formatter formatter = null;

		try {

		formatter = new Formatter();

		byte[] arrayOfByte = bytes;

		int j = bytes.length;

		for (int i = 0; i < j; i++) {

		byte b = arrayOfByte[i];

		formatter.format("%02x", new Object[] { Byte.valueOf(b) });

		}

		return formatter.toString();

		} finally {

//		(formatter != null){
//
//		formatter.close();
//
//		}

		}

		}
}
