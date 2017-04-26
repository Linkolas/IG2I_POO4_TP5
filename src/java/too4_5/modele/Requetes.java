package too4_5.modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import too4_5.metier.Personne;

public class Requetes {
    private static Connection getConnection() throws ClassNotFoundException, SQLException {
        String driverClass = "org.apache.derby.jdbc.ClientDriver";
        String urlDatabase = "jdbc:derby://localhost:1527/TP_POO_5";
        Class.forName(driverClass);
        return DriverManager.getConnection(urlDatabase);
    }
    
    public static List<Personne> getPersonnes() {
        Connection conn;
        List<Personne> liste = new ArrayList<>();
        try {
            conn = getConnection();
        } catch (Exception e) {
            return liste;
        }
        
        Statement stmt = null;
        String query = "SELECT * from PERSONNE";
        
        try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String nom = rs.getString("NOM");
                String prenom = rs.getString("PRENOM");
                Personne p = new Personne(nom, prenom);
                liste.add(p);
            }
        } catch (Exception e) {
            
        } finally {
            try {
                if (stmt != null) { 
                    stmt.close();
                } 
            } catch (Exception e) {
                
            }
        }
        
        return liste;
    }
}
