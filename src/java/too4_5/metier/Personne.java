package too4_5.metier;

import java.util.List;
import too4_5.modele.Requetes;

public class Personne {
    private String nom = "MonNom";
    private String prenom = "MonPrenom";
    
    public Personne() {
        
    }
    
    public Personne(String nom, String prenom) {
        this.nom = nom;
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    public boolean isKnown() {
        List<Personne> personnes = Requetes.getPersonnes();
        
        for(Personne p: personnes) {
            if(p.nom.equals(nom) && p.prenom.equals(prenom)) {
                return true;
            }
        }
        
        return false;
    }
    
}
