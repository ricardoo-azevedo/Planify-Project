package br.edu.pi.planify.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "tb_funcionarios")
@IdClass(FuncionarioId.class)
public class Funcionario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idFunc;

    public Long getIdFunc() {
        return idFunc;
    }

    public void setIdFunc(Long idFunc) {
        this.idFunc = idFunc;
    }

    @Id
    @Column(name = "id_pessoa")
    private Long idPessoa;

    public Long getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(Long idPessoa) {
        this.idPessoa = idPessoa;
    }

    @Column(name = "dt_reg_pessoa", nullable = false)
    private LocalDateTime dtRegPessoa;

    public LocalDateTime getDtRegPessoa() {
        return dtRegPessoa;
    }

    public void setDtRegPessoa(LocalDateTime dtRegPessoa) {
        this.dtRegPessoa = dtRegPessoa;
    }

    @Column(name = "email_pessoa", nullable = false, unique = true, length = 100)
    private String emailPessoa;

    public String getEmailPessoa() {
        return emailPessoa;
    }

    public void setEmailPessoa(String emailPessoa) {
        this.emailPessoa = emailPessoa;
    }

    @Column(name = "fone_pessoa", nullable = false, length = 16)
    private String fonePessoa;

    public String getFonePessoa() {
        return fonePessoa;
    }

    public void setFonePessoa(String fonePessoa) {
        this.fonePessoa = fonePessoa;
    }

    @Column(name = "nome_pessoa", nullable = false, length = 50)
    private String nomePessoa;

    public String getNomePessoa() {
        return nomePessoa;
    }

    public void setNomePessoa(String nomePessoa) {
        this.nomePessoa = nomePessoa;
    }

    @Column(name = "cargo_func", nullable = false, length = 50)
    private String cargoFunc;

    public String getCargoFunc() {
        return cargoFunc;
    }

    public void setCargoFunc(String cargoFunc) {
        this.cargoFunc = cargoFunc;
    }

    @Column(name = "dt_mat_func", nullable = false)
    private LocalDateTime dtMatFunc;

    public LocalDateTime getDtMatFunc() {
        return dtMatFunc;
    }

    public void setDtMatFunc(LocalDateTime dtMatFunc) {
        this.dtMatFunc = dtMatFunc;
    }

}
