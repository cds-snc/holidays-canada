package ca.pcraig3.holidays.holiday;

public class HolidayNotFoundException extends RuntimeException {

    HolidayNotFoundException(long id) {
        super("Cloud not find province: '" + id + "'");
    }
}