package ca.pcraig3.holidays;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class Province {

    @Id
    private String id;
    private String nameEn;
    private String nameFr;

    Province() {}

    Province(String id, String nameEn, String nameFr) {
        this.id = id;
        this.nameEn = nameEn;
        this.nameFr = nameFr;
    }
}
