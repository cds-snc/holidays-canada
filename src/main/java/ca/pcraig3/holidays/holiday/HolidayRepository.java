package ca.pcraig3.holidays.holiday;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HolidayRepository extends JpaRepository<Holiday, Long> {

    List<Holiday> findByIsNational(Boolean national);

    @Query("select h from Holiday h " +
            "join h.provinces province " +
            "where province.id = ?1")
    List<Holiday> findByProvinceId(String provinceId);
}