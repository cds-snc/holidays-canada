package ca.pcraig3.holidays;

import ca.pcraig3.holidays.holiday.HolidayNotFoundException;
import ca.pcraig3.holidays.province.ProvinceBadRequestException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.HashMap;

@ControllerAdvice
public class JsonErrorControllerAdvice extends ResponseEntityExceptionHandler {

    @ResponseBody
    @ExceptionHandler(HolidayNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    HashMap<String, HashMap<String, Object>> holidayNotFoundHandler(HolidayNotFoundException e) {
        ApiError apiError = new ApiError(HttpStatus.NOT_FOUND, e);
        return apiError.getError();
    }

    @ResponseBody
    @ExceptionHandler({ ProvinceBadRequestException.class, NumberFormatException.class })
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    HashMap<String, HashMap<String, Object>> badRequestHandler(Exception e) {
        ApiError apiError = new ApiError(HttpStatus.BAD_REQUEST, e);
        return apiError.getError();
    }
}