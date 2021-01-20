package br.com.cad_processo;

import modelo.TipoProcesso;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProcessoDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }


    public int save(TipoProcesso p) {
        String sql = "insert into tipoprocesso(nomeTipoProcesso) values('" + p.getNomeTipoProcesso() + "')";
        return template.update(sql);
    }

    public int update(TipoProcesso p) {
        String sql = "update tipoprocesso set nomeTipoProcesso='" + p.getNomeTipoProcesso() + "' where id="+p.getId()+"";
        return template.update(sql);
    }

    public int delete(int id) {
        String sql = "delete from tipoprocesso where id=" + id + "";
        return template.update(sql);
    }

    public TipoProcesso getTipoProcessoById(int id) {
        String sql = "select * from tipoprocesso where id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<TipoProcesso>(TipoProcesso.class));
    }

    public List<TipoProcesso> getListTipoProcesso() {
        return template.query("select * from tipoprocesso", new RowMapper<TipoProcesso>() {
            public TipoProcesso mapRow(ResultSet rs, int row) throws SQLException {
                TipoProcesso e = new TipoProcesso();
                e.setId(rs.getInt(1));
                e.setNomeTipoProcesso(rs.getString(2));
                return e;
            }
        });
    }
}
