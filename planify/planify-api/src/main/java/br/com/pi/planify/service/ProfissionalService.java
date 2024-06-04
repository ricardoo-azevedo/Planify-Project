package br.com.pi.planify.service;

import br.com.pi.planify.model.Profissional;
import br.com.pi.planify.repository.ProfissionalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfissionalService {
    @Autowired
    private ProfissionalRepository profissionalRepository;

    public List<Profissional> getAllProfissionals() {
        return profissionalRepository.findAll();
    }
}
