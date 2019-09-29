
package learning;

import javax.smartcardio.*;
import javax.xml.bind.DatatypeConverter;
import java.util.List;

public class Main {

    public static void main(String[] args) throws CardException {

        // Show the list of all available card readers:
        TerminalFactory factory = TerminalFactory.getDefault();
        List<CardTerminal> terminals = factory.terminals().list();
        System.out.println("Reader: " + terminals);
// Use the first card reader:
        CardTerminal terminal = terminals.get(0);
// Establish a connection with the card:
        Card card = terminal.connect("*");
        System.out.println("Card: " + card);
        CardChannel channel = card.getBasicChannel();
        ResponseAPDU r = channel.transmit(new CommandAPDU(0x00, 0x84, 0x00, 0x00, 0x08));
        String hex = DatatypeConverter.printHexBinary(r.getBytes());
        System.out.println("Response: " + hex);
// disconnect card:
        card.disconnect(false);

    }

    public static int CONTROL_CODE() {
        String osName = System.getProperty("os.name").toLowerCase();
        if (osName.indexOf("windows") > -1) {
            /* Value used by both MS' CCID driver and SpringCard's CCID driver */
            return (0x31 << 16 | 3500 << 2);
        } else {
            /* Value used by PCSC-Lite */
            return 0x42000000 + 1;
        }

    }

    public static byte[] hexStringToByteArray(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i + 1), 16));
        }
        return data;
    }

}