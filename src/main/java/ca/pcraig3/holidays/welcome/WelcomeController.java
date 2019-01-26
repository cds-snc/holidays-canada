package ca.pcraig3.holidays.welcome;

import ca.pcraig3.holidays.Links;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@RestController
@Slf4j
public class WelcomeController {

    @GetMapping("/")
    HashMap<String, Object> one(HttpServletRequest request) {
        log.info(String.format("Get '%s'", request.getRequestURI()));

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("message", "Hello / Bonjour! Welcome to the Canadian holidays API | Bienvenue dans l’API canadienne des jours fériés");
        responseMap.put("_links", Links.getLinkMap("root", request.getRequestURL().toString()));

        return responseMap;
    }
}