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

@ManagedBean(name = "numberBean")
@SessionScoped
public class NumberBean implements Serializable {

    private List<Integer> numeros = new ArrayList<>();
    private List<Integer> numerosFiltrados = new ArrayList<>();

    public NumberBean() {
        for (int i = 0; i < 100; i++) {
            numeros.add(0);
        }
    }

    public List<Integer> getNumeros() {
        return numeros;
    }

    public void setNumeros(List<Integer> numeros) {
        this.numeros = numeros;
    }

    public List<Integer> getNumerosFiltrados() {
        return numerosFiltrados;
    }

    public void setNumerosFiltrados(List<Integer> numerosFiltrados) {
        this.numerosFiltrados = numerosFiltrados;
    }

    public String filtrarNumero() {
        numerosFiltrados.clear();
        for (int i = 0; i < numeros.size(); i++) {
            if (numeros.get(i) >= 0) {
                numerosFiltrados.add(numeros.get(i));

            }
        }

        return "resultado";
    }
}
