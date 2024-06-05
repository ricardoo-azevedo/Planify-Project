package br.edu.pi.planify.entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Entity
@Table(name = "tb_agendamento")
public class Agendamento {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idAgend;

    @Embedded
    private ClienteId clienteId;

    @ManyToOne
    @JoinColumns({
        @JoinColumn(name = "clie_id_part1", referencedColumnName = "idPart1", insertable = false, updatable = false),
        @JoinColumn(name = "clie_id_part2", referencedColumnName = "idPart2", insertable = false, updatable = false)
    })
    private Cliente cliente;

    @ManyToOne
    @JoinColumn(name = "id_servico", referencedColumnName = "id_servico", nullable = false)
    private Servico servico;

    @ManyToOne
    @JoinColumn(name = "func_agend", referencedColumnName = "idFunc", nullable = false)
    private Funcionario funcionario;

    @Column(nullable = false)
    private LocalDate dataAgend;

    @Column(nullable = false)
    private LocalTime horaAgend;

    @Column(nullable = false)
    private LocalDateTime dtRegAgend = LocalDateTime.now();

    // Getters and Setters
    public Long getIdAgend() {
        return idAgend;
    }

    public void setIdAgend(Long idAgend) {
        this.idAgend = idAgend;
    }

    public ClienteId getClienteId() {
        return clienteId;
    }

    public void setClienteId(ClienteId clienteId) {
        this.clienteId = clienteId;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Servico getServico() {
        return servico;
    }

    public void setServico(Servico servico) {
        this.servico = servico;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public LocalDate getDataAgend() {
        return dataAgend;
    }

    public void setDataAgend(LocalDate dataAgend) {
        this.dataAgend = dataAgend;
    }

    public LocalTime getHoraAgend() {
        return horaAgend;
    }

    public void setHoraAgend(LocalTime horaAgend) {
        this.horaAgend = horaAgend;
    }

    public LocalDateTime getDtRegAgend() {
        return dtRegAgend;
    }

    public void setDtRegAgend(LocalDateTime dtRegAgend) {
        this.dtRegAgend = dtRegAgend;
    }
}
