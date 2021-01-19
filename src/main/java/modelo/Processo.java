package modelo;

import java.util.Date;

public class Processo {

    private int id;
    private String tipoProcesso;
    private int numeroProcesso;
    private Date dataEntrada;
    private Float valorRecurso;
    private String objetivo;

    public Processo() {
    }

    public Processo(int id, String tipoProcesso, int numeroProcesso, Date dataEntrada, Float valorRecurso, String objetivo) {
        this.id = id;
        this.tipoProcesso = tipoProcesso;
        this.numeroProcesso = numeroProcesso;
        this.dataEntrada = dataEntrada;
        this.valorRecurso = valorRecurso;
        this.objetivo = objetivo;
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

    public Float getValorRecurso() {
        return valorRecurso;
    }

    public void setValorRecurso(Float valorRecurso) {
        this.valorRecurso = valorRecurso;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }
}
