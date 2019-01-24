package ca.pcraig3.holidays;

import ca.pcraig3.holidays.holiday.HolidayNotFoundException;
import org.springframework.boot.autoconfigure.web.servlet.error.AbstractErrorController;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class JsonErrorController extends AbstractErrorController {

    public JsonErrorController(ErrorAttributes errorAttributes) {
        super(errorAttributes);
    }

    @RequestMapping(value = "/error", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public HashMap<String, HashMap<String, Object>> handleError(HttpServletRequest request) {
        HashMap<String, Object> errorAttributes = new HashMap<>(super.getErrorAttributes(request, false));
        return ApiError.addErrorRootKey(errorAttributes);
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}