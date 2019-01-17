package ca.pcraig3.holidays.holiday;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name="HOLIDAY")
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

    // isRelative
    // provinces
    // isNational

    Holiday () {}

    Holiday(@NotNull String date, @NotNull String nameEn, @NotNull String nameFr) {
        this.date = date;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }
}
