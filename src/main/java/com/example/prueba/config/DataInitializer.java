//package com.example.prueba.config;
//
//import com.example.prueba.model.Persona;
//import com.example.prueba.repository.PersonaRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.stereotype.Component;
//
//@Component
//public class DataInitializer implements CommandLineRunner {
//
//    @Autowired
//    private PersonaRepository personaRepository;
//
//    @Override
//    public void run(String... args) throws Exception {
//        // Registra cinco personas al iniciar la aplicación
//        for (int i = 1; i <= 5; i++) {
//            Persona persona = new Persona();
//            persona.setNombre("Persona " + i);
//            personaRepository.save(persona);
//        }
//        System.out.println("Se han registrado 5 personas en la base de datos.");
//    }
//}