package modelo;


import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;


public class Processo implements Serializable {

    private int id;
    private String tipoProcesso;
    private int numeroProcesso;


    private Date dataEntrada;

    private Float valorProcesso;
    private String objetivo;

    public Processo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipoProcesso() {
        return tipoProcesso;
    }

    public void setTipoProcesso(String tipoProcesso) {
        this.tipoProcesso = tipoProcesso;
    }

    public int getNumeroProcesso() {
        return numeroProcesso;
    }

    public void setNumeroProcesso(int numeroProcesso) {
        this.numeroProcesso = numeroProcesso;
    }

    public Date getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    public Float getValorProcesso() {
        return valorProcesso;
    }

    public void setValorProcesso(Float valorProcesso) {
        this.valorProcesso = valorProcesso;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Processo processo = (Processo) o;
        return id == processo.id && numeroProcesso == processo.numeroProcesso && tipoProcesso.equals(processo.tipoProcesso) && dataEntrada.equals(processo.dataEntrada) && valorProcesso.equals(processo.valorProcesso) && objetivo.equals(processo.objetivo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, tipoProcesso, numeroProcesso, dataEntrada, valorProcesso, objetivo);
    }
}
