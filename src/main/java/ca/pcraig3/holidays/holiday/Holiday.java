package ca.pcraig3.holidays.holiday;

import ca.pcraig3.holidays.province.Province;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name="HOLIDAY")
@ToString
public class Holiday {

    @Id
    @Column(name = "ID", nullable = false, unique = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(name="DATE")
    private String date;

    @NotNull
    @Column(name="NAME_EN")
    private String nameEn;

    @NotNull
    @Column(name="NAME_FR")
    private String nameFr;

    @ManyToMany(
            fetch = FetchType.EAGER,
            cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })

    @JoinTable(name = "HOLIDAY_PROVINCE",
            joinColumns = @JoinColumn(name = "HOLIDAY_ID"),
            inverseJoinColumns = @JoinColumn(name = "PROVINCE_ID")
    )
    private final Set<Province> provinces = new HashSet<>();

    // isRelative
    // provinces
    // isNational

    Holiday () {}

    Holiday(@NotNull String date, @NotNull String nameEn, @NotNull String nameFr) {
        this.date = date;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }

    public Long getId() {
        return id;
    }

    public String getDate() {
        return date;
    }

    public String getNameEn() {
        return nameEn;
    }

    public String getNameFr() {
        return nameFr;
    }

    public Set<Province> getProvinces() {
        return provinces;
    }

    public void addProvince(Province province) {
        this.provinces.add(province);
        province.getHolidays().add(this);
    }

    public void removeProvince(Province province) {
        this.provinces.remove(province);
        province.getHolidays().remove(this);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Holiday holiday = (Holiday) o;
        return Objects.equals(id, holiday.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
