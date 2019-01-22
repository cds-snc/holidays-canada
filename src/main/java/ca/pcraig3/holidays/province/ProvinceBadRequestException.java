package ca.pcraig3.holidays.province;

public class ProvinceBadRequestException extends RuntimeException {

    public ProvinceBadRequestException(String id) {
        super(String.format("Error: '%s' is not a valid Canadian postal abbreviation. Accepted options are: [%s].", id, String.join(", ", Province.PROVINCE_IDS)));
    }
}
