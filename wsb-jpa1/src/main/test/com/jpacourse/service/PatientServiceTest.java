package com.jpacourse.persistence.service;

import com.jpacourse.dto.PatientTO;
import com.jpacourse.dto.VisitTO;
import com.jpacourse.persistence.dao.DoctorDao;
import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.service.impl.PatientServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PatientServiceTest {

    @Autowired
    private PatientServiceImpl patientService;

    @Autowired
    private PatientDao patientDao;

    @Autowired
    private DoctorDao doctorDao;

    @Test
    public void findById_returnsPatientTO() {
        // given
        Long existingPatientId = 1L;

        // When
        PatientTO patientTO = patientService.findById(existingPatientId);

        // Then
        assertThat(patientTO).isNotNull();
        assertThat(patientTO.getId()).isEqualTo(existingPatientId);
        assertThat(patientTO.getFirstName()).isEqualTo("Tony");
        assertThat(patientTO.getLastName()).isEqualTo("Stark");
        assertThat(patientTO.getTelephoneNumber()).isEqualTo("5550178");
        assertThat(patientTO.getEmail()).isEqualTo("tony.stark@marvel.com");
        assertThat(patientTO.getPatientNumber()).isEqualTo("0148");
        assertThat(patientTO.getDateOfBirth()).isEqualTo("1970-05-29");
        assertThat(patientTO.getGenderType()).isEqualTo("M");
    }

    @Test
    public void shouldFindAllVisitsByPatientId() {
        // given
        Long existingPatientId = 4L;

        // When
        List<VisitTO> visits = patientService.findVisitsForPatient(existingPatientId);

        // then
        assertThat(visits).isNotNull();
        assertThat(visits).isNotEmpty();
    }
}
