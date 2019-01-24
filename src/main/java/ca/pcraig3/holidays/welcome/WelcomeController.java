package ca.pcraig3.holidays.welcome;

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
        HashMap<String, Object> linkMap = new HashMap<>();
        linkMap.putAll(getLinkMap("provinces", request.getRequestURL().toString()));
        linkMap.putAll(getLinkMap("holidays", request.getRequestURL().toString()));

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("info", "Hello / Bonjour! Welcome to the Canadian holidays API | Bienvenue dans l’API canadienne des jours fériés");
        responseMap.put("_links", linkMap);


        return responseMap;
    }

    private HashMap<String, Object> getLinkMap(String key, String link) {
        HashMap<String, String> hrefMap = new HashMap<>();
        hrefMap.put("href", String.format("%sv1/%s", link, key));

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put(key, hrefMap);
        return responseMap;
    }
}