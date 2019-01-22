package ca.pcraig3.holidays.province;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
public class ProvinceController {

    private final ProvinceRepository repository;
    ProvinceController(ProvinceRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/provinces")
    List<Province> all() {
        log.info("Get all '/provinces/'");


        return this.repository.findAll();
    }

    @GetMapping("/provinces/{id}")
    Province one(@PathVariable String id) {
        log.info("Get '/provinces/" + id + "'");

        return this.repository.findById(id.toUpperCase()).orElseThrow(() -> new ProvinceBadRequestException(id));
    }
}
