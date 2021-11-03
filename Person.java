import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

public class Person {
    private static final Exception FileNotFoundException = null;
    protected String name; 
    protected int age;
    protected Emotion emo; 

    Person() {
        this.name = "UnKnownName"; 
        age = 0; 
        emo = Emotion.happy;  
    }
    
    @Override
    public String toString() {
        String str = "Person<" + this.name + "," + this.age + "," + this.emo + ">"; 
        System.out.print(str); 
        return str; 
    }

    public void getSchedule() throws IOException {
        try {
            File wn = new File(this.name + "_schedule.json"); 
            if(wn.exists() == false) {
                FileNotFoundException e = new FileNotFoundException(); 
                throw e; 
            }
            BufferedWriter out = new BufferedWriter(new FileWriter(wn)); 
            String json_str = "{\"name\"" + ":\"" + this.name + "\","; 
            json_str += "\"age\"" + ":\"" + this.age + "\","; 
            json_str += "\"emo\"" + ":\"" + this.emo + "\"}"; 
            out.write(json_str);
            out.flush();
            out.close(); 
        }
        catch(FileNotFoundException e) {
            System.out.print(e);
        }
    }
}
