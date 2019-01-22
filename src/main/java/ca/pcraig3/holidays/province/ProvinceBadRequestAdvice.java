package ca.pcraig3.holidays.province;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ProvinceBadRequestAdvice {

    @ResponseBody
    @ExceptionHandler(ProvinceBadRequestException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String provinceNotFoundHandler(ProvinceBadRequestException e) {
        return e.getMessage();
    }
}
