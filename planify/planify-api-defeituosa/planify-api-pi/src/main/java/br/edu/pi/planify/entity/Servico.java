package br.edu.pi.planify.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "tb_servicos")
public class Servico {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_servico")
    private Long idServ;

    @Column(nullable = false, length = 50)
    private String atvServ;

    @Column(nullable = false)
    private BigDecimal valorServ;

    @Column(nullable = false)
    private Integer tempoServ;

    @Column(nullable = false)
    private LocalDateTime dtMatServ = LocalDateTime.now();

    // Getters and Setters
    public Long getIdServ() {
        return idServ;
    }

    public void setIdServ(Long idServ) {
        this.idServ = idServ;
    }

    public String getAtvServ() {
        return atvServ;
    }

    public void setAtvServ(String atvServ) {
        this.atvServ = atvServ;
    }

    public BigDecimal getValorServ() {
        return valorServ;
    }

    public void setValorServ(BigDecimal valorServ) {
        this.valorServ = valorServ;
    }

    public Integer getTempoServ() {
        return tempoServ;
    }

    public void setTempoServ(Integer tempoServ) {
        this.tempoServ = tempoServ;
    }

    public LocalDateTime getDtMatServ() {
        return dtMatServ;
    }

    public void setDtMatServ(LocalDateTime dtMatServ) {
        this.dtMatServ = dtMatServ;
    }
}
