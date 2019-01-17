package ca.pcraig3.holidays.holiday;

import ca.pcraig3.holidays.holiday.Holiday;
import ca.pcraig3.holidays.holiday.HolidayRepository;
import ca.pcraig3.holidays.province.Province;
import ca.pcraig3.holidays.province.ProvinceNotFoundException;
import ca.pcraig3.holidays.province.ProvinceRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    List<Holiday> all() {
        log.info("Get all '/holidays'");

        return this.repository.findAll(); }

    @GetMapping("/holidays/{id}")
    Holiday one(@PathVariable Long id) {
        log.info("Get '/holidays/" + id + "'");
        HolidayRepository hr = this.repository;
        Optional<Holiday> h = hr.findById(id);

        if(h == null)
            throw new HolidayNotFoundException(id);

        return h.get();

        //return this.repository.findById(id).orElseThrow(() -> new HolidayNotFoundException(id));
    }

}

