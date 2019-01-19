package ca.pcraig3.holidays.holiday;

import ca.pcraig3.holidays.holiday.Holiday;
import ca.pcraig3.holidays.holiday.HolidayRepository;
import ca.pcraig3.holidays.province.Province;
import ca.pcraig3.holidays.province.ProvinceNotFoundException;
import ca.pcraig3.holidays.province.ProvinceRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@Slf4j
public class HolidayController {

    private final HolidayRepository repository;
    HolidayController(HolidayRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/holidays")
    List<Holiday> all(@RequestParam(value = "national", required=false) Boolean national) {

        if(national != null) {
            String message = national ? "national" : "non-national";
            log.info(String.format("Get all %s '/holidays'", message));

            return this.repository.findByIsNational(national);
        }
        
        log.info("Get all '/holidays'");
        return this.repository.findAll(); }

    @GetMapping("/holidays/{id}")
    Holiday one(@PathVariable Long id) {
        log.info("Get '/holidays/" + id + "'");
        return this.repository.findById(id).orElseThrow(() -> new HolidayNotFoundException(id));
    }

}

