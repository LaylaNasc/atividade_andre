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
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name = "idadeBean")
@SessionScoped
public class IdadeBean implements Serializable {

    private List<Integer> idades = new ArrayList<>();
    private int idade;
    private int menorIdade;
    private int quantidadeMenorIdade;

    public IdadeBean() {
        for (int i = 0; i < 20; i++) {
            idades.add(0);
        }
    }

    public List<Integer> getIdades() {
        return idades;
    }

    public void setIdades(List<Integer> idades) {
        this.idades = idades;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public int getMenorIdade() {
        return menorIdade;
    }

    public int getQuantidadeMenorIdade() {
        return quantidadeMenorIdade;
    }

    public String calcularMenorIdade() {
        if (!idades.isEmpty()) {
            menorIdade = idades.get(0);
            quantidadeMenorIdade = 1;

            for (int i = 1; i < idades.size(); i++) {
                if (idades.get(i) < menorIdade) {
                    menorIdade = idades.get(i);
                    quantidadeMenorIdade = 1;
                } else if (idades.get(i) == menorIdade) {
                    quantidadeMenorIdade++;
                }
            }
        }
        return "resultado";
    }
}
