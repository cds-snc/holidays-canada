package ca.pcraig3.holidays.province;

import ca.pcraig3.holidays.holiday.Holiday;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="PROVINCE")
@ToString
public class Province {

    @Id
    @NotNull
    @Column(name="ID")
    private String id;

    @NotNull
    @Column(name="NAME_EN")
    private String nameEn;

    @NotNull
    @Column(name="NAME_FR")
    private String nameFr;

    @ManyToMany(mappedBy = "provinces")
    @JsonIgnore
    private final Set<Holiday> holidays = new HashSet<>();

    protected Province() {}

    Province(String id, String nameEn, String nameFr) {
        this.id = id;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }

    public String getId() {
        return id;
    }

    public String getNameEn() {
        return nameEn;
    }

    public String getNameFr() {
        return nameFr;
    }

    public Set<Holiday> getHolidays() {
        return holidays;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Province province = (Province) o;

        if (!id.equals(province.id)) return false;
        if (!nameEn.equals(province.nameEn)) return false;
        return nameFr.equals(province.nameFr);
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + nameEn.hashCode();
        result = 31 * result + nameFr.hashCode();
        return result;
    }
}
