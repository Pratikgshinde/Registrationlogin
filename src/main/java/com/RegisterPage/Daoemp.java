package com.RegisterPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class Daoemp implements serviceemp {

    @Autowired
    Repositoryemp r1;

    // Save employee data
    @Override
    public void regsiterdata(empdata s1) {
        r1.save(s1);
    }

    // Find employee by email and password - Returns Optional to avoid exceptions
    @Override
    public Optional<empdata> findbyemailandpass(String email, String password) {
        List<empdata> results = (List<empdata>) r1.findByEmailAndPassword(email, password);

        // Check if there is exactly one result, otherwise return empty
        if (results.size() == 1) {
            return Optional.of(results.get(0));
        } else {
            return Optional.empty(); // No or multiple results
        }
    }

    // Find employee by ID
    @Override
    public Optional<empdata> findbyiddata(int id) {
        return Optional.ofNullable(r1.findById(id).orElse(null));
    }

    @Override
    public void save(empdata e1) {

    }
}
