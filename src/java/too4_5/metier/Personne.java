package too4_5.metier;

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
    
}
