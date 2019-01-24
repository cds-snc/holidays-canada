package ca.pcraig3.holidays;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.http.HttpStatus;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

class ApiError {

    private HttpStatus status;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS+00:00")
    private Date timestamp;
    private String message;

    ApiError(HttpStatus status, Throwable ex) {
        this.timestamp = new Date();
        this.status = status;
        this.message = ex.getMessage();
    }

    private HashMap<String, Object> getErrorFields() {
        HashMap<String, Object> errorFields = new HashMap<>();
        errorFields.put("status", this.status.value());
        errorFields.put("timestamp", this.timestamp);
        errorFields.put("message", this.message);

        return errorFields;
    }

    public HashMap<String, HashMap<String, Object>> getError() {
        HashMap<String, HashMap<String, Object>> error = new HashMap<>();
        error.put("error", this.getErrorFields());

        return error;
    }

    public static HashMap<String, HashMap<String, Object>> addErrorRootKey(HashMap<String, Object> error) {
        HashMap<String, HashMap<String, Object>> newError = new HashMap<>();
        String errorMessage = error.getOrDefault("error", "Internal server error").toString();
        errorMessage += "".equals(error.getOrDefault("message", "")) ? "" : ": " + error.get("message").toString();
        error.put("message", errorMessage);
        error.remove("error");

        newError.put("error", error);

        return newError;
    }
}