// Lets write a instructions in Java to create a folder at B2101_QAAE/JavaBasic location

import java.io.File;
public class  DirectoryCreatorApp{

   public static void main(String args[]){
       String dir = "/Users/jahidul/IdeaProjects/B2101_QAAE/JavaBasic/PracticeJava"; 
       File file = new File(dir);
       boolean isFileCreated = file.mkdirs();
       
       if (isFileCreated== true){
          System.out.println("New directory created");
       
       }  else{
        System.out.println("Unable to create new directory");
       }  
   
   }

}
