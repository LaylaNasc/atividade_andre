/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.ba.fvc;

/**
 *
 * @author wilia
 */
import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "fetuccineBean")
@ViewScoped
public class FetuccineBean implements Serializable {

    private int numeroTermos;
    private List<Integer> serieFetuccine;
    private String mensagemErro;

    public FetuccineBean() {
        serieFetuccine = new ArrayList<>();
        mensagemErro = "";
    }

    public int getNumeroTermos() {
        return numeroTermos;
    }

    public void setNumeroTermos(int numeroTermos) {
        this.numeroTermos = numeroTermos;
    }

    public List<Integer> getSerieFetuccine() {
        return serieFetuccine;
    }

    public String getMensagemErro() {
        return mensagemErro;
    }

    public void gerarSerieFetuccine() {
        serieFetuccine.clear();
        mensagemErro = "";

        if (numeroTermos < 1) {
            mensagemErro = "O número de termos deve ser pelo menos 1.";
            return;
        }

        int[] fetuccine = new int[numeroTermos];
        if (numeroTermos > 0) {
            fetuccine[0] = 1;
        }
        if (numeroTermos > 1) {
            fetuccine[1] = 1 + 3;
        }

        for (int i = 2; i < numeroTermos; i++) {
            fetuccine[i] = fetuccine[i - 1] + 2 * fetuccine[i - 2] + 3;
        }

        for (int i : fetuccine) {
            serieFetuccine.add(i);
        }
    }
}
