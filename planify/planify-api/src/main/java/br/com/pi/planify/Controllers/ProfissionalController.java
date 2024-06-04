package br.com.pi.planify.Controllers;

import br.com.pi.planify.model.Profissional;
import br.com.pi.planify.service.ProfissionalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/profissionais")
public class ProfissionalController {

    @Autowired
    private ProfissionalService profissionalService;

    @GetMapping
    public List<Profissional> getAllProfissionais() {
        return profissionalService.getAllProfissionals();
    }
}
