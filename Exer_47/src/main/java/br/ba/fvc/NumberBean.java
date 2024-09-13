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

@ManagedBean(name = "numberBean")
@ViewScoped
public class NumberBean implements Serializable {

    private List<Double> numeros;
    private List<Double> metade;

    public NumberBean() {
        numeros = new ArrayList<>(10);
        metade = new ArrayList<>(10);
        for (int i = 0; i < 10; i++) {
            numeros.add(0.0);
            metade.add(0.0);
        }
    }

    public List<Double> getNumeros() {
        return numeros;
    }

    public void setNumeros(List<Double> numeros) {
        this.numeros = numeros;
    }

    public List<Double> getMetade() {
        return metade;
    }

    public void setMetade(List<Double> metade) {
        this.metade = metade;
    }

    public void calcularMetade() {
        metade.clear();
        for (Double number : numeros) {
            metade.add(number / 2);
        }
    }
}
