package br.com.cad_processo;


import modelo.Processo;
import modelo.TipoProcesso;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ControleProcesso {

    @Autowired
    ProcessoDao processoDao;

    /*
     *
     *
     * funções tipo processo
     *
     *
     * */
    @RequestMapping("/cadtipoprocesso")
    public String showform(Model m) {
        m.addAttribute("command", new TipoProcesso());
        return "cadtipoprocesso";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("emp") TipoProcesso emp) {
        processoDao.save(emp);
        return "redirect:viewtipoprocesso";//will redirect to viewemp request mapping
    }

    @RequestMapping("/listartipoprocesso")
    public String viewemp(Model m) {

        List<TipoProcesso> list = processoDao.getListTipoProcesso();
        m.addAttribute("list", list);

        return "listartipoprocesso";
    }

   /* @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("dd/MM/yyyy"), true));
    }*/

    @RequestMapping("/viewtipoprocesso")
    public String listartipoprocesso(Model m) {

        List<TipoProcesso> list = processoDao.getListTipoProcesso();
        m.addAttribute("list", list);
        return "viewtipoprocesso";
    }

    /* It displays object data into form for the given id.
     * The @PathVariable puts URL data into variable.*/
    @RequestMapping(value = "/edittipoprocesso/{id}")
    public String edit(@PathVariable int id, Model m) {
        TipoProcesso emp = processoDao.getTipoProcessoById(id);
        m.addAttribute("command", emp);
        return "editartipoprocesso";
    }

    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("emp") TipoProcesso emp) {
        processoDao.update(emp);
        return "redirect:/viewtipoprocesso";
    }

    /* It deletes record for the given id in URL and redirects to /viewemp */
    @RequestMapping(value = "/deletetipoprocesso/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable int id) {
        processoDao.delete(id);
        return "redirect:/viewtipoprocesso";
    }

    /*
     *
     *
     * funções processo
     *
     *
     * */
    @RequestMapping("/cadprocesso")
    public String formprocesso(Model m) {
        List<TipoProcesso> listTipoProcesso = processoDao.getListTipoProcesso();
        List<String> resultList = new ArrayList<String>();
        for (TipoProcesso value : listTipoProcesso) {
            resultList.add(String.valueOf(value.getNomeTipoProcesso()));
        }
        m.addAttribute("listaT", resultList);
        m.addAttribute("listaP", listTipoProcesso);

        m.addAttribute("command", new Processo());
        return "cadprocesso";
    }

    @RequestMapping(value = "/saveProcesso", method = RequestMethod.POST)
    public String saveProcesso(@ModelAttribute("processo") Processo emp) throws ParseException {

        processoDao.saveProcesso(emp);
        return "redirect:viewprocesso";//will redirect to viewemp request mapping
    }

    @RequestMapping("/listarprocesso")
    public String viewpro(Model m) {

        List<Processo> list = processoDao.getProcesso();
        m.addAttribute("list", list);

        return "listarprocesso";
    }

    @RequestMapping("/viewprocesso")
    public String listarprocesso(Model m) {

        List<Processo> list = processoDao.getProcesso();
        m.addAttribute("list", list);

        return "viewprocesso";
    }


    @RequestMapping(value = "/editprocesso/{id}")
    public String editprocesso(@PathVariable int id, Model m) {
        Processo emp = processoDao.getProcessoById(id);
        List<TipoProcesso> listTipoProcesso = processoDao.getListTipoProcesso();
        List<String> resultList = new ArrayList<String>();
        for (TipoProcesso value : listTipoProcesso) {
            resultList.add(String.valueOf(value.getNomeTipoProcesso()));
        }
        m.addAttribute("listaT", resultList);
        m.addAttribute("listaP", listTipoProcesso);
        m.addAttribute("command", emp);
        return "editarprocesso";
    }

    @RequestMapping(value = "/editsaveprocesso", method = RequestMethod.POST)
    public String editsaveprocesso(@ModelAttribute("emp") Processo emp) {
        processoDao.updateProcesso(emp);
        return "redirect:/viewprocesso";
    }

    /* It deletes record for the given id in URL and redirects to /viewemp */
    @RequestMapping(value = "/deleteprocesso/{id}", method = RequestMethod.GET)
    public String deleteprocesso(@PathVariable int id) {
        processoDao.deleteProcesso(id);
        return "redirect:/viewprocesso";
    }


}
