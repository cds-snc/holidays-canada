package ca.pcraig3.holidays.province;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    HashMap<String, List<Province>> all() {
        log.info("Get all '/provinces/'");

        List<Province> provinces = this.repository.findAll();

        HashMap<String, List<Province>> responseMap = new HashMap<>();
        responseMap.put("provinces", provinces);
        return responseMap;
    }

    @GetMapping("/{id}")
    HashMap<String, Province> one(@PathVariable String id) {
        log.info("Get '/provinces/" + id + "'");
        Province province = this.repository.findById(id.toUpperCase()).orElseThrow(
                () -> new ProvinceBadRequestException(id));

        HashMap<String, Province> responseMap = new HashMap<>();
        responseMap.put("province", province);
        return responseMap;
    }
}
