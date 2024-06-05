package br.edu.pi.planify.controller;

import br.edu.pi.planify.entity.Cliente;
import br.edu.pi.planify.entity.ClienteId;
import br.edu.pi.planify.service.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/clientes")
public class ClienteController {
    @Autowired
    private ClienteService clienteService;

    @GetMapping
    public List<Cliente> findAll() {
        return clienteService.findAll();
    }

    @GetMapping("/{idPart1}/{idPart2}")
    public ResponseEntity<Cliente> findById(@PathVariable Long idPart1, @PathVariable Long idPart2) {
        ClienteId id = new ClienteId(idPart1, idPart2);
        Optional<Cliente> cliente = clienteService.findById(id);
        return cliente.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Cliente create(@RequestBody Cliente cliente) {
        return clienteService.save(cliente);
    }

    @PutMapping("/{idPart1}/{idPart2}")
public ResponseEntity<Cliente> update(@PathVariable Long idPart1, @PathVariable Long idPart2, @RequestBody Cliente cliente) {
    ClienteId id = new ClienteId(idPart1, idPart2);
    Optional<Cliente> existingCliente = clienteService.findById(id);
    
    if (existingCliente.isEmpty()) {
        return ResponseEntity.notFound().build();
    }
    
    Cliente updatedCliente = existingCliente.get();

    Cliente savedCliente = clienteService.save(updatedCliente);
    return ResponseEntity.ok(savedCliente);
}

    @DeleteMapping("/{idPart1}/{idPart2}")
    public ResponseEntity<Void> delete(@PathVariable Long idPart1, @PathVariable Long idPart2) {
        ClienteId id = new ClienteId(idPart1, idPart2);
        if (!clienteService.findById(id).isPresent()) {
            return ResponseEntity.notFound().build();
        }
        clienteService.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}
