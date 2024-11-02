package com.RegisterPage;

import java.util.Optional;

public interface serviceemp {

    public void regsiterdata(empdata s1);


    Optional<empdata> findbyemailandpass(String email, String password);


    Optional<empdata> findbyiddata(int id);

    void save(empdata e1);
}
