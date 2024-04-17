package org.es.medicalmanagementbackend;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest(classes = {MedicalManagementBackendApplicationTests.class})
class MedicalManagementBackendApplicationTests {


    @Test
    void contextLoads() {

        System.out.println(new BCryptPasswordEncoder().encode("123456"));
    }


}
