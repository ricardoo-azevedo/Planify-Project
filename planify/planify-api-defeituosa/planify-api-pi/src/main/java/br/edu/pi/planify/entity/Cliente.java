package br.edu.pi.planify.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "clientes")
public class Cliente {
    @EmbeddedId
    private ClienteId id;

    @Column(nullable = false)
    private LocalDateTime dtMatClie = LocalDateTime.now();

    public LocalDateTime getDtMatClie() {
        return dtMatClie;
    }

    public void setDtMatClie(LocalDateTime dtMatClie) {
        this.dtMatClie = dtMatClie;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cliente cliente = (Cliente) o;
        return Objects.equals(id, cliente.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}

