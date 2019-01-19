package ca.pcraig3.holidays.holiday;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HolidayRepository extends JpaRepository<Holiday, Long> {

    List<Holiday> findByIsNational(Boolean national);
}