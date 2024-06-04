package br.com.pi.planify.Controllers;

import br.com.pi.planify.model.Agendamento;
import br.com.pi.planify.service.AgendamentoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/agendamento")
public class AgendamentoController {

    @Autowired
    private AgendamentoService agendamentoService;

    @PostMapping
    public Agendamento createAgendamento(@Validated @RequestBody Agendamento agendamento) {
        return agendamentoService.createAgendamento(agendamento);
    }

    @GetMapping
    public List<Agendamento> getAllAgendamentos() {
        return agendamentoService.getAllAppointments();
    }
}
