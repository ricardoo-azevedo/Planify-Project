package br.edu.pi.planify.entity;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ClienteId implements Serializable {
    private Long idPart1;
    private Long idPart2;

    public ClienteId() {
    }

    public ClienteId(Long idPart1, Long idPart2) {
        this.idPart1 = idPart1;
        this.idPart2 = idPart2;
    }


    public Long getIdPart1() {
        return idPart1;
    }

    public void setIdPart1(Long idPart1) {
        this.idPart1 = idPart1;
    }

    public Long getIdPart2() {
        return idPart2;
    }

    public void setIdPart2(Long idPart2) {
        this.idPart2 = idPart2;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ClienteId clienteId = (ClienteId) o;
        return Objects.equals(idPart1, clienteId.idPart1) && Objects.equals(idPart2, clienteId.idPart2);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idPart1, idPart2);
    }
}
