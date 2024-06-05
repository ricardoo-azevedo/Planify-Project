package br.edu.pi.planify.controller;

import br.edu.pi.planify.entity.Servico;
import br.edu.pi.planify.service.ServicoService;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/servicos")
public class ServicoController {
    private final ServicoService servicoService;

    public ServicoController(ServicoService servicoService) {
        this.servicoService = servicoService;
    }

    @GetMapping
    public List<Servico> findAll() {
        return servicoService.findAll();
    }

    @GetMapping("/{id}")
    public Servico findById(@PathVariable Long id) {
        return servicoService.findById(id).orElse(null);
    }

    @PostMapping
    public Servico save(@RequestBody Servico servico) {
        return servicoService.save(servico);
    }

    @PutMapping("/{id}")
    public Servico update(@PathVariable Long id, @RequestBody Servico servico) {
        servico.setIdServ(id);
        return servicoService.save(servico);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        servicoService.deleteById(id);
    }
}

