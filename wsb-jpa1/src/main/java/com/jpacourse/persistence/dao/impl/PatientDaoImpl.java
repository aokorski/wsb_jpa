package com.jpacourse.persistence.dao.impl;

import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.persistence.entity.PatientEntity;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository

public class PatientDaoImpl extends AbstractDao<PatientEntity, Long> implements PatientDao
{

    @Override
    public List<PatientEntity> findPatientByLastName(String lastName) {
        return entityManager.createQuery("SELECT p FROM PatientEntity p WHERE p.lastName = :lastName", PatientEntity.class)
                .setParameter("lastName", lastName)
                .getResultList();
    }

    @Override
    public List<PatientEntity> findPatientsThatHadMoreVisitsThan(Long numberOfVisits) {
        String query = "SELECT p " +
                "FROM PatientEntity p " +
                "WHERE (SELECT COUNT(v) FROM VisitEntity v WHERE v.patient.id = p.id) > :numberOfVisits";

        return entityManager.createQuery(query, PatientEntity.class)
                .setParameter("numberOfVisits", numberOfVisits)
                .getResultList();
    }

    @Override
    public List<PatientEntity> findPatientsWithGender(String genderType) {
        String query = "SELECT p FROM PatientEntity p WHERE p.genderType = :genderType";
        return entityManager.createQuery(query, PatientEntity.class)
                .setParameter("genderType", genderType)
                .getResultList();
    }
}
