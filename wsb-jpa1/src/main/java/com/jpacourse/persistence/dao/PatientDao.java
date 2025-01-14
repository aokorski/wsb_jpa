package com.jpacourse.persistence.dao;

import com.jpacourse.persistence.entity.PatientEntity;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface PatientDao extends Dao<PatientEntity, Long>
{

    List<PatientEntity> findPatientByLastName(String lastName);

    List<PatientEntity> findPatientsThatHadMoreVisitsThan(Long numberOfVisits);

    List<PatientEntity> findPatientsWithGender (String genderType);
}
