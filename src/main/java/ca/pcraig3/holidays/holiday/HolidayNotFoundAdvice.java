package ca.pcraig3.holidays.holiday;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class HolidayNotFoundAdvice {

    @ResponseBody
    @ExceptionHandler(HolidayNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String holidayNotFoundHandler(HolidayNotFoundException e) { return e.getMessage(); }
}
