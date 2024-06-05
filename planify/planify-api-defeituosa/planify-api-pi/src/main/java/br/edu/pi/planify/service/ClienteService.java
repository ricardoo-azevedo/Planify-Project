package br.edu.pi.planify.service;

import br.edu.pi.planify.entity.Cliente;
import br.edu.pi.planify.entity.ClienteId;
import br.edu.pi.planify.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteService {
    @Autowired
    private ClienteRepository clienteRepository;

    public List<Cliente> findAll() {
        return clienteRepository.findAll();
    }

    public Optional<Cliente> findById(ClienteId id) {
        return clienteRepository.findById(id);
    }

    public Cliente save(Cliente cliente) {
        return clienteRepository.save(cliente);
    }

    public void deleteById(ClienteId id) {
        clienteRepository.deleteById(id);
    }
}
