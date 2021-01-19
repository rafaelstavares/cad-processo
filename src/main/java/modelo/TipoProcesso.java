package modelo;

public class TipoProcesso {

    private int id;
    private String nomeTipoProcesso;

    public TipoProcesso() {
    }

    public TipoProcesso(int id, String nomeTipoProcesso) {
        this.id = id;
        this.nomeTipoProcesso = nomeTipoProcesso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeTipoProcesso() {
        return nomeTipoProcesso;
    }

    public void setNomeTipoProcesso(String nomeTipoProcesso) {
        this.nomeTipoProcesso = nomeTipoProcesso;
    }
}
