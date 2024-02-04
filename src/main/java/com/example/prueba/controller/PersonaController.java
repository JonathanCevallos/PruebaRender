package com.example.prueba.controller;

import com.example.prueba.model.Persona;
import com.example.prueba.repository.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/personas")
public class PersonaController {

    @Autowired
    private PersonaRepository personaRepository;  // Asumiendo que tienes un repositorio llamado PersonaRepository

    @GetMapping()
    public List<Persona> findAll() {
        return personaRepository.findAll();
    }
}