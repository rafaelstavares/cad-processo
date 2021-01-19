package br.com.cad_processo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ControleProcesso {

    @Autowired
    ProcessoDao processoDao;


}
