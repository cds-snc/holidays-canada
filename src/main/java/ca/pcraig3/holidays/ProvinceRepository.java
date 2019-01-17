package ca.pcraig3.holidays;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProvinceRepository extends JpaRepository<Province, Long> {

    Province findById (String id) throws ProvinceNotFoundException;
}
