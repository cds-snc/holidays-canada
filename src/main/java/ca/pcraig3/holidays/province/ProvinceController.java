package ca.pcraig3.holidays.province;

import ca.pcraig3.holidays.Links;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@RestController
@Slf4j
@RequestMapping("/v1/provinces")
public class ProvinceController {

    private final ProvinceRepository repository;

    ProvinceController(ProvinceRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    HashMap<String, Object> all(HttpServletRequest request) {
        log.info("Get all '/provinces/'");
        HashMap<String, Object> linkMap = new HashMap<>(Links.getLinkMap("provinces", request.getRequestURL().toString()));

        List<Province> provinces = this.repository.findAll();

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("provinces", provinces);
        responseMap.put("_links", linkMap);
        return responseMap;
    }

    @GetMapping("/{id}")
    HashMap<String, Object> one(HttpServletRequest request, @PathVariable String id) {
        log.info("Get '/provinces/" + id + "'");
        HashMap<String, Object> linkMap = new HashMap<>(Links.getLinkMap("province", request.getRequestURL().toString()));

        Province province = this.repository.findById(id.toUpperCase()).orElseThrow(
                () -> new ProvinceBadRequestException(id));

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("province", province);
        responseMap.put("_links", linkMap);

        return responseMap;
    }
}
