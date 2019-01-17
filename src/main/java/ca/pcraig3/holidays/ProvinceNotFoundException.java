package ca.pcraig3.holidays;

public class ProvinceNotFoundException extends RuntimeException {

    ProvinceNotFoundException(String id) {
        super("Could not find province: '" + id + "'");
    }
}
