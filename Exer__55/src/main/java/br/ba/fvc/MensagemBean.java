/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.ba.fvc;

/**
 *
 * @author layla
 */
import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "mensagemBean")
@ViewScoped
public class MensagemBean implements Serializable {

    private List<String> mensagens = new ArrayList<>();
    private String novaMensagem;
    private int contadorA;

    public String getNovaMensagem() {
        return novaMensagem;
    }

    public void setNovaMensagem(String novaMensagem) {
        this.novaMensagem = novaMensagem;
    }

    public List<String> getMensagens() {
        return mensagens;
    }

    public int getContadorA() {
        return contadorA;
    }

    public void adicionarMensagem() {
        if (mensagens.size() < 10) {
            mensagens.add(novaMensagem);
            novaMensagem = "";
        }
        contarLetrasA();
    }

    public void contarLetrasA() {
        contadorA = 0;
        for (String mensagem : mensagens) {
            contadorA += mensagem.length() - mensagem.replaceAll("(?i)a", "").length();
        }
    }
}
