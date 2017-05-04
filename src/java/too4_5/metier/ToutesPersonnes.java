package too4_5.metier;

import java.util.ArrayList;
import java.util.List;
import too4_5.modele.Requetes;

public class ToutesPersonnes {
    private List<Personne> personnes = new ArrayList<>();
    
    public void initList() {
        personnes = Requetes.getPersonnes();
    }
    
    public List<Personne> getPersonnes() {
        if(personnes.size() < 1) {
            initList();
        }
        return personnes;
    }
}
