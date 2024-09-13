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

@ManagedBean(name = "ricciBean")
@ViewScoped
public class RicciBean implements Serializable {

    private int numeroTermos;
    private List<Integer> serieRicci;
    private String mensagemErro;

    public RicciBean() {
        serieRicci = new ArrayList<>();
        mensagemErro = "";
    }

    public int getNumeroTermos() {
        return numeroTermos;
    }

    public void setNumeroTermos(int numeroTermos) {
        this.numeroTermos = numeroTermos;
    }

    public List<Integer> getSerieRicci() {
        return serieRicci;
    }

    public String getMensagemErro() {
        return mensagemErro;
    }

    public void gerarSerieRicci() {
        serieRicci.clear();
        mensagemErro = "";

        if (numeroTermos < 1) {
            mensagemErro = "O número de termos deve ser pelo menos 1.";
            return;
        }

        int[] ricci = new int[Math.max(numeroTermos, 10)];
        ricci[0] = 1;
        ricci[1] = 1;

        for (int i = 2; i < ricci.length; i++) {
            ricci[i] = ricci[i - 1] + ricci[i - 2];
        }

        for (int i = 0; i < 10 && i < ricci.length; i++) {
            serieRicci.add(ricci[i]);
        }
    }
}
