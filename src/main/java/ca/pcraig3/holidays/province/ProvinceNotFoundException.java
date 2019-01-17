package ca.pcraig3.holidays.province;

public class ProvinceNotFoundException extends RuntimeException {

    ProvinceNotFoundException(String id) {
        super("Could not find province: '" + id + "'");
    }
}
