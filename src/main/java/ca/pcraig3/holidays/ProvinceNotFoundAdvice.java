package ca.pcraig3.holidays;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ProvinceNotFoundAdvice {

    @ResponseBody
    @ExceptionHandler(ProvinceNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String provinceNotFoundHandler(ProvinceNotFoundException e) {
        return e.getMessage();
    }
}
