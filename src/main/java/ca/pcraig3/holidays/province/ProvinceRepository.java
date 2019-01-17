package ca.pcraig3.holidays.province;

import ca.pcraig3.holidays.province.Province;
import ca.pcraig3.holidays.province.ProvinceNotFoundException;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProvinceRepository extends JpaRepository<Province, Long> {

    Province findById (String id) throws ProvinceNotFoundException;
}
