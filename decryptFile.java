import java.util.Scanner;
import java.util.List;
import java.io.File;
import java.nio.file.*;
import java.nio.charset.StandardCharsets;

public class decryptFile {
  public static void main(String[] args) {
    try {
      Scanner sc = new Scanner(System.in);
      System.out.print("Enter file name: ");
      String fName = sc.nextLine();
      Path path = Paths.get(fName);
      List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
      int posCounter = -1;

      while(posCounter++ < lines.size()-4) {
        String line = lines.get(posCounter);
        int linePos = posCounter;
        if(line.length() > 0 &&
            line.indexOf("\"") > -1 &&
            line.indexOf("\"\"") == -1) {
          if(line.indexOf("#") > -1) {
            if(line.indexOf("\"") > line.indexOf("#") || line.lastIndexOf("\"") < line.indexOf("#")) {
              continue;
            }
          }
          String s = line.substring(line.indexOf("\"")+1,line.lastIndexOf("\""));
          String findClass = lines.get(posCounter++);
          int counter = 0;
          while(findClass.indexOf("Lcom/inca/security/ib") == -1
              && findClass.indexOf("Lcom/inca/security/n") == -1) {
            findClass = lines.get(posCounter++);
            if(posCounter > lines.size() || counter == 5 || findClass.indexOf("\"") > 0) {
              System.err.println("ERROR: no decryption class found for: "+line+"; linenumber: "+linePos);
              findClass = "";
              break;
            }
            counter++;
          }
          if(findClass == "") continue;
          String c = "";
          if(findClass.indexOf("Lcom/inca/security/ib") > 0) {
            c = "ib";
          } else if(findClass.indexOf("Lcom/inca/security/n") > 0) {
            c = "n";
          }
          String decrypted = decryptString.encrypt(c, s);
          lines.set(linePos,line+" #"+decrypted);
        }
      }
      Files.write(path, lines, StandardCharsets.UTF_8);
    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}