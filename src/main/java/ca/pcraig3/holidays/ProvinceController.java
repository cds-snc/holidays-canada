package ca.pcraig3.holidays;

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
        return this.repository.findAll();
    }

    @GetMapping("/provinces/{id}")
    Province one(@PathVariable String id) throws ProvinceNotFoundException {
        log.info("Request for '/provinces/" + id + "'");

        Province p = this.repository.findById(id.toUpperCase());

        if(p == null)
            throw new ProvinceNotFoundException(id);

        return p;
    }
}
