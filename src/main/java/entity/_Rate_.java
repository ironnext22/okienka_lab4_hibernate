package entity;

import jakarta.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "rate", schema = "baza_okienka_lab4")
@NamedQuery(name = "getrates", query = "select e from _Rate_ e")
@NamedQuery(name = "summary", query = "select e.grupyByGrupy.nazwa, count(e.ocena), avg(e.ocena) from _Rate_ e group by e.grupyByGrupy.nazwa")
public class _Rate_ {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "ocena")
    private Integer ocena;
    @Basic
    @Column(name = "data_wystawienia_oceny")
    private Date dataWystawieniaOceny;
    @Basic
    @Column(name = "komentarz")
    private String komentarz;
    @ManyToOne
    @JoinColumn(name = "grupy", referencedColumnName = "id")
    private _Grupy_ grupyByGrupy;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getOcena() {
        return ocena;
    }

    public void setOcena(Integer ocena) {
        this.ocena = ocena;
    }

    public Date getDataWystawieniaOceny() {
        return dataWystawieniaOceny;
    }

    public void setDataWystawieniaOceny(Date dataWystawieniaOceny) {
        this.dataWystawieniaOceny = dataWystawieniaOceny;
    }

    public String getKomentarz() {
        return komentarz;
    }

    public void setKomentarz(String komentarz) {
        this.komentarz = komentarz;
    }

    public _Grupy_ getGrupyByGrupy() {
        return grupyByGrupy;
    }

    public void setGrupyByGrupy(_Grupy_ grupyByGrupy) {
        this.grupyByGrupy = grupyByGrupy;
    }

    @Override
    public String toString() {
        return "_Rate_{" +
                "id=" + id +
                ", ocena=" + ocena +
                ", dataWystawieniaOceny=" + dataWystawieniaOceny +
                ", komentarz='" + komentarz + '\'' +
                ", grupyByGrupy=" + grupyByGrupy +
                '}';
    }
}
