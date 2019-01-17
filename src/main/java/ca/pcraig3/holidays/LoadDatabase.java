package ca.pcraig3.holidays;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@Slf4j
public class LoadDatabase {

    @Bean
    CommandLineRunner initDatabase(ProvinceRepository repository) {
        return args -> {
            log.info("Preloading " + repository.save(new Province("ON", "Ontario", "Ontario")));
            log.info("Preloading " + repository.save(new Province("QC", "Quebec", "Québec")));
        };
    }
}
