package br.com.pi.planify.repository;

import br.com.pi.planify.model.Agendamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;

@Repository
public interface AgendamentoRepository extends JpaRepository<Agendamento, Long> {
    boolean existsByProfissionalIdAndDateTime(Long profissionalId, LocalDateTime dateTime);
}
