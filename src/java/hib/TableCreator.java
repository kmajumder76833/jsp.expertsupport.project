
package hib;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import table.*;

public class TableCreator {
    public static void main(String[] args) {
        Configuration cfg=new Configuration(); //to configure, create a driver
        cfg.addAnnotatedClass(Answers.class);

        cfg.configure();//configure
        SchemaExport se=new SchemaExport(cfg);//to make a table from the config
        se.create(true, true);//do you wanna view?, wanna execute?
        System.out.println("Table(s) created");
    }
}
