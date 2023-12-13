package entity;

import jakarta.persistence.*;

@Entity
@Table(name = "teacher", schema = "baza_okienka_lab4")
@NamedQuery(name = "getteacher",query = "select e from _Teacher_ e")
public class _Teacher_ {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "imie")
    private String imie;
    @Basic
    @Column(name = "nazwisko")
    private String nazwisko;
    @Basic
    @Column(name = "stan")
    private String stan;
    @Basic
    @Column(name = "rok_urodzenia")
    private Integer rokUrodzenia;
    @Basic
    @Column(name = "wynagrodzenie")
    private Double wynagrodzenie;
    @ManyToOne
    @JoinColumn(name = "grupa", referencedColumnName = "id")
    private _Grupy_ grupyByGrupa;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getStan() {
        return stan;
    }

    public void setStan(String stan) {
        this.stan = stan;
    }

    public Integer getRokUrodzenia() {
        return rokUrodzenia;
    }

    public void setRokUrodzenia(Integer rokUrodzenia) {
        this.rokUrodzenia = rokUrodzenia;
    }

    public Double getWynagrodzenie() {
        return wynagrodzenie;
    }

    public void setWynagrodzenie(Double wynagrodzenie) {
        this.wynagrodzenie = wynagrodzenie;
    }

    public _Grupy_ getGrupyByGrupa() {
        return grupyByGrupa;
    }

    public void setGrupyByGrupa(_Grupy_ grupyByGrupa) {
        this.grupyByGrupa = grupyByGrupa;
    }

    @Override
    public String toString() {
        return "_Teacher_{" +
                "id=" + id +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", stan='" + stan + '\'' +
                ", rokUrodzenia=" + rokUrodzenia +
                ", wynagrodzenie=" + wynagrodzenie +
                ", grupyByGrupa=" + grupyByGrupa +
                '}';
    }
}
