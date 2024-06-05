package br.edu.pi.planify.repository;

import br.edu.pi.planify.entity.Cliente;
import br.edu.pi.planify.entity.ClienteId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, ClienteId> {
}
