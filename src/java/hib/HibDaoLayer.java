package hib;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import table.*;

public class HibDaoLayer {
    private static Configuration cfg;
    private static SessionFactory sf;
    
    static{
        cfg= new Configuration();

        cfg.addAnnotatedClass(EASLogin.class);
        cfg.addAnnotatedClass(Questions.class);
        cfg.addAnnotatedClass(Answers.class);
        // add entity classes later
        cfg.configure(); //no parameter means default is hibernate.cfg.xml, otherwise mention within quotes
        
        sf=cfg.buildSessionFactory();//api has been updated, and there's some other class for this function, but this is still supported
    }
    
    public static Configuration getHibConfig(){
        return cfg;
        
    }
    
    public static SessionFactory getHibSessionFactory(){
        return sf;
    }
    
    public static Session getHibSession(){
        Session session=sf.openSession();
        return session;
    }
}

