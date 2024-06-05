package br.edu.pi.planify.entity;

import java.io.Serializable;
import java.util.Objects;

public class FuncionarioId implements Serializable {
    private Long idFunc;
    private Long idPessoa;

    
    public FuncionarioId() {}

   
    public FuncionarioId(Long idFunc, Long idPessoa) {
        this.idFunc = idFunc;
        this.idPessoa = idPessoa;
    }

    
    public Long getIdFunc() { return idFunc; }
    public void setIdFunc(Long idFunc) { this.idFunc = idFunc; }
    public Long getIdPessoa() { return idPessoa; }
    public void setIdPessoa(Long idPessoa) { this.idPessoa = idPessoa; }

    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FuncionarioId that = (FuncionarioId) o;
        return Objects.equals(idFunc, that.idFunc) && Objects.equals(idPessoa, that.idPessoa);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idFunc, idPessoa);
    }
}
