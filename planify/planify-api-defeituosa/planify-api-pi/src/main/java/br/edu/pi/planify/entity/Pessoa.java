package br.edu.pi.planify.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@MappedSuperclass
public class Pessoa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPessoa;

    public Long getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(Long idPessoa) {
        this.idPessoa = idPessoa;
    }

    @Column(nullable = false, length = 50)
    private String nomePessoa;

    public String getNomePessoa() {
        return nomePessoa;
    }

    public void setNomePessoa(String nomePessoa) {
        this.nomePessoa = nomePessoa;
    }

    @Column(nullable = false, length = 16)
    private String fonePessoa;

    public String getFonePessoa() {
        return fonePessoa;
    }

    public void setFonePessoa(String fonePessoa) {
        this.fonePessoa = fonePessoa;
    }

    @Column(nullable = false, unique = true, length = 100)
    private String emailPessoa;

    public String getEmailPessoa() {
        return emailPessoa;
    }

    public void setEmailPessoa(String emailPessoa) {
        this.emailPessoa = emailPessoa;
    }

    @Column(nullable = false)
    private LocalDateTime dtRegPessoa = LocalDateTime.now();

    public LocalDateTime getDtRegPessoa() {
        return dtRegPessoa;
    }

    public void setDtRegPessoa(LocalDateTime dtRegPessoa) {
        this.dtRegPessoa = dtRegPessoa;
    }

    
}
