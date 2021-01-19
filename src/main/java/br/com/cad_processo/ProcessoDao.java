package br.com.cad_processo;

import org.springframework.jdbc.core.JdbcTemplate;

public class ProcessoDao {
    JdbcTemplate template;
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
}
