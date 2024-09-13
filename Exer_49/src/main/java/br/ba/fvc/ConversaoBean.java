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

@ManagedBean(name = "conversaoBean")
@ViewScoped
public class ConversaoBean implements Serializable {

    private int limiteInferior;
    private int limiteSuperior;
    private int decremento;
    private List<String> tabelaConversao;

    public ConversaoBean() {
        tabelaConversao = new ArrayList<>();
    }

    public int getLimiteInferior() {
        return limiteInferior;
    }

    public void setLimiteInferior(int limiteInferior) {
        this.limiteInferior = limiteInferior;
    }

    public int getLimiteSuperior() {
        return limiteSuperior;
    }

    public void setLimiteSuperior(int limiteSuperior) {
        this.limiteSuperior = limiteSuperior;
    }

    public int getDecremento() {
        return decremento;
    }

    public void setDecremento(int decremento) {
        this.decremento = decremento;
    }

    public List<String> getTabelaConversao() {
        return tabelaConversao;
    }

    public void gerarTabelaConversao() {
        tabelaConversao.clear();
        if (decremento <= 0) {
            tabelaConversao.add("Decremento deve ser maior que zero.");
            return;
        }

        for (int celsius = limiteSuperior; celsius >= limiteInferior; celsius -= decremento) {
            double fahrenheit = celsius * 9.0 / 5.0 + 32;
            tabelaConversao.add(String.format("%d°C = %.2f°F", celsius, fahrenheit));
        }
    }
}

