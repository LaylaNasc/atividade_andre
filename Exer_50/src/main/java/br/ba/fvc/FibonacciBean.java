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

@ManagedBean(name = "fibonacciBean")
@ViewScoped
public class FibonacciBean implements Serializable {

    private int numeroTermos;
    private List<Integer> serieFibonacci;

    public FibonacciBean() {
        serieFibonacci = new ArrayList<>();
    }

    public int getNumeroTermos() {
        return numeroTermos;
    }

    public void setNumeroTermos(int numeroTermos) {
        this.numeroTermos = numeroTermos;
    }

    public List<Integer> getSerieFibonacci() {
        return serieFibonacci;
    }

    public void gerarSerieFibonacci() {
        serieFibonacci.clear();
        if (numeroTermos <= 0) {
            serieFibonacci.add(0);
            return;
        }

        int a = 0;
        int b = 1;
        serieFibonacci.add(a);
        if (numeroTermos > 1) {
            serieFibonacci.add(b);
        }

        for (int i = 2; i < numeroTermos; i++) {
            int c = a + b;
            serieFibonacci.add(c);
            a = b;
            b = c;
        }
    }
}
