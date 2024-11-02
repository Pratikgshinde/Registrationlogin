package com.RegisterPage;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Repositoryemp extends JpaRepository<empdata,Integer> {

    List<empdata> findByEmailAndPassword(String email, String password);
}
