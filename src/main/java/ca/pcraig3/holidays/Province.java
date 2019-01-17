package ca.pcraig3.holidays;

import lombok.Data;
import org.springframework.lang.Nullable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name="PROVINCE")
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

    Province() {}

    Province(String id, String nameEn, String nameFr) {
        this.id = id;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }
}
