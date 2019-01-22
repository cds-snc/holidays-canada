package ca.pcraig3.holidays.holiday;

import ca.pcraig3.holidays.province.Province;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
public class HolidayController {

    private final HolidayRepository repository;
    HolidayController(HolidayRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/holidays")
    List<Holiday> all(@RequestParam(value = "national", required=false) Boolean national, @RequestParam(value = "province", required=false) String provinceId) {

        if(national != null) {
            String message = national ? "national" : "non-national";

            List<Holiday> h = this.repository.findByIsNational(national);
            log.info(String.format("Get all %s '/holidays'. Found: %d.", message, h.size()));
            return h;
        }

        // string should not be null or empty
        if(!StringUtils.isEmpty(provinceId)){
            provinceId = provinceId.toUpperCase();

            // make sure we have a valid province ID
            if(!Province.isProvinceId(provinceId))
                throw new RuntimeException(String.format("Error: '%s' is not a valid Canadian postal abbreviation. Accepted options are: [%s].", provinceId, String.join(", ", Province.PROVINCE_IDS)));

            List<Holiday> h = this.repository.findByProvinceId(provinceId);
            log.info(String.format("Get '/holidays' for province '%s'. Found: %d.", provinceId, h.size()));
            return h;
        }


        List<Holiday> h = this.repository.findAll();
        log.info(String.format("Get all '/holidays'. Found: %d.", h.size()));
        return h;
    }

    @GetMapping("/holidays/{id}")
    Holiday one(@PathVariable Long id) {
        log.info("Get '/holidays/" + id + "'");
        return this.repository.findById(id).orElseThrow(() -> new HolidayNotFoundException(id));
    }

}

