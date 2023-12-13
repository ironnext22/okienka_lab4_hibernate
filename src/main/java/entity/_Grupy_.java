package entity;

import jakarta.persistence.*;

@Entity
@Table(name = "grupy", schema = "baza_okienka_lab4")
@NamedQuery(name = "getgrupy", query = "select e from _Grupy_ e")
public class _Grupy_ {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "nazwa")
    private String nazwa;
    @Basic
    @Column(name = "pojemnść")
    private Integer pojemnść;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public Integer getPojemnść() {
        return pojemnść;
    }

    public void setPojemnść(Integer pojemnść) {
        this.pojemnść = pojemnść;
    }

    @Override
    public String toString() {
        return "_Grupy_{" +
                "id=" + id +
                ", nazwa='" + nazwa + '\'' +
                ", pojemnść=" + pojemnść +
                '}';
    }
}
