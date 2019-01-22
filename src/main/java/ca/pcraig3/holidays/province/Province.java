package ca.pcraig3.holidays.province;

import ca.pcraig3.holidays.holiday.Holiday;
import com.fasterxml.jackson.annotation.*;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Arrays;
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
    @JsonIgnoreProperties("provinces")
    @OrderBy
    private final Set<Holiday> holidays = new HashSet<>();

    protected Province() {}

    protected Province(String id, String nameEn, String nameFr) {
        if(! isProvinceId(id))
            throw new RuntimeException(String.format("Error: '%s' is not a real province or territory.", id));

        this.id = id;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }

    public static String[] PROVINCE_IDS = { "AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT" };

    public static boolean isProvinceId(String id) {
        return Arrays.asList(PROVINCE_IDS).contains(id);
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
