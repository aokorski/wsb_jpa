package com.jpacourse.mapper;
import com.jpacourse.dto.PatientTO;
import com.jpacourse.dto.VisitTO;
import com.jpacourse.persistence.entity.PatientEntity;
import java.util.List;
public final class PatientMapper
{
    public static PatientTO mapToTO(final PatientEntity patientEntity)
    {
        if (patientEntity == null)
        {
            return null;
        }
        final PatientTO patientTO = new PatientTO();
        patientTO.setId(patientEntity.getId());
        patientTO.setFirstName(patientEntity.getFirstName());
        patientTO.setLastName(patientEntity.getLastName());
        patientTO.setTelephoneNumber(patientEntity.getTelephoneNumber());
        patientTO.setPatientNumber(patientEntity.getPatientNumber());
        patientTO.setDateOfBirth(patientEntity.getDateOfBirth());
        patientTO.setEmail(patientEntity.getEmail());
        patientTO.setGenderType(patientEntity.getGenderType());

        if (patientEntity.getVisits() != null) {
            patientTO.setVisits(VisitMapper.mapToTOList(patientEntity.getVisits()));
        }

        return patientTO;
    }
}
