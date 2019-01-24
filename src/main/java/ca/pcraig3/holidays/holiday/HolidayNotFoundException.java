package ca.pcraig3.holidays.holiday;

public class HolidayNotFoundException extends RuntimeException {

    HolidayNotFoundException(long id) {
        super("Error: Could not find 'holidays/" + id + "'");
    }
}