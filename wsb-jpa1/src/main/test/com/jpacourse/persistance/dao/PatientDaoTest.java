package com.jpacourse.persistence.dao;

import com.jpacourse.persistence.entity.PatientEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@Transactional
public class PatientDaoTest {

    @Autowired
    private PatientDao patientDao;

    @Test
    public void shouldFindPatientsByLastName() {
        // given
        String lastName = "Stark";

        // when
        List<PatientEntity> patients = patientDao.findPatientByLastName(lastName);

        // then
        assertThat(patients).isNotEmpty();
        assertThat(patients).allMatch(patient -> lastName.equals(patient.getLastName()));
    }

    @Test
    public void shouldFindPatientsWithMoreThan2Visits() {
        // given
        Long visitThreshold = 2L;
        List<PatientEntity> patients = patientDao.findPatientsThatHadMoreVisitsThan(visitThreshold);

        // when
        assertThat(patients).isNotEmpty();

        // then
        for (PatientEntity patient : patients) {
            long visitCount = patient.getVisits().size();
            assertThat(visitCount).isGreaterThan(visitThreshold);
        }
    }

    @Test
    public void findPatientsWithGender() {
        // given
        String genderType = "F";

        // when
        List<PatientEntity> patients = patientDao.findPatientsWithGender(genderType);

        // then
        assertThat(patients).isNotEmpty();
        assertThat(patients).allMatch(patient -> genderType.equals(patient.getGenderType()));
    }

}