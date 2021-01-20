package br.com.cad_processo;


import modelo.TipoProcesso;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ControleProcesso {

    @Autowired
    ProcessoDao processoDao;

    @RequestMapping("/cadtipoprocesso")
    public String showform(Model m){
        m.addAttribute("command", new TipoProcesso());
        return "cadtipoprocesso";
    }

    @RequestMapping(value="/save",method = RequestMethod.POST)
    public String save(@ModelAttribute("emp") TipoProcesso emp){
        processoDao.save(emp);
        return "redirect:viewtipoprocesso";//will redirect to viewemp request mapping
    }
    @RequestMapping("/listartipoprocesso")
    public String viewemp(Model m){

            List<TipoProcesso> list= processoDao.getListTipoProcesso();
            m.addAttribute("list",list);

        return "listartipoprocesso";
    }
    @RequestMapping("/viewtipoprocesso")
    public String listartipoprocesso(Model m){

        List<TipoProcesso> list= processoDao.getListTipoProcesso();
        m.addAttribute("list",list);

        return "viewtipoprocesso";
    }
    /* It displays object data into form for the given id.
     * The @PathVariable puts URL data into variable.*/
    @RequestMapping(value="/edittipoprocesso/{id}")
    public String edit(@PathVariable int id, Model m){
        TipoProcesso emp= processoDao.getTipoProcessoById(id);
        m.addAttribute("command",emp);
        return "editartipoprocesso";
    }

    @RequestMapping(value="/editsave",method = RequestMethod.POST)
    public String editsave(@ModelAttribute("emp") TipoProcesso emp){
        processoDao.update(emp);
        return "redirect:/viewtipoprocesso";
    }
    /* It deletes record for the given id in URL and redirects to /viewemp */
    @RequestMapping(value="/deletetipoprocesso/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        processoDao.delete(id);
        return "redirect:/viewtipoprocesso";
    }
}
