# Morse Sender and receiver of the Morse code

### Team members

* Nurmukhanbet Mussabek 
* Vladislav Karmanov 


### Table of contents

* [Project objectives](#objectives)
* [Project problems](#problems)
* [Hardware description](#hardware)
* [Simulations](#modules)
* [Pictures](#Pictures)
* [References](#references)

<a name="objectives"></a>

## Project objectives

Cílem našého projektu bylo vytvořit vysylač a přijimač Morseova kódu. Kód Morse to je způsob přenosu informace, který používá kombinace krátkých a dlouhých signálů (teček a pomlček) k kódování písmen, číslic a interpunkčních znamének. V našem projektu jsme místo 
tlačitka pro zadavání kódu, použili přepínače. K tomu jsme potřebovali 10 přepínačů z pravého okraje. Funguje to takto: Chcete-li nastavit pomlčku, musíte zapnout dva přepínače a pro tečku je nutné, aby byl v zapnutém stavu pouze jeden pravý přepínač ze dvou. Také jsme v našem projektu použili dvě tlačítka: jedno, centrální, pro vymazání znaků z displeje a druhé, dole, pro zapamatování tohoto symbolu a jeho posunutí doleva a umožnění zobrazení více znaků( až 8 znaků). Pro odesílaní kódu používáme levý spínač, když se rozsvítí prava LEDka to znamená, že odeslání znaků z displeje je úspěšné.



<a name="problems"></a>

## Project problems

**Hlavní problémy našeho kódu:**

• Absence odesílatele

• Nemožnost zobrazení dvou stejných znaků za sebou

• Mezera mezi body v signálu se rovná mezeře mezi dvěma znaky


<a name="hardware"></a>

## Hardware description

Schéma pro top


![top](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/top.PNG)

Schéma pro display driver


![display driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/display_driver.PNG)

### Popis funkce buňek 

**Morse sender:**
Morse sender převádí 10bitový příchozí signál na 21bitový signál. Každý symbol, tečka nebo pomlčka, se skládá ze 4 bitů. Tento kód odešle všechny tyto znaky v sekvenci.


**Switch driver:**
Switch driver se používá k převodu analogového signálu na digitální pro jeho použití jako způsob, jak nastavit morseový kód


**Display driver:**
Display driver slouží k sériovému přepínání všech displejů.


**Hex 7seg:**
Hex 7seg používá se k převodu 10bitového signálu Morseova kódu na 7bitový signál pro výstup informací na displej.


**Mux 10 bit driver:**
Mux 10 bit driver používá se k postupnému pohybu z jednoho displeje na druhý, symbol který nastavíme pomocí přepínačů.

<a name="modules"></a>

## Simulations

top:
![top](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/top.png)

sw driver:
![sw driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/sw.png)

sender:
![sender](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/sender.png)

mux driver:
![mux driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/mux.png)

display driver:
![display driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/disp.png)

clock driver:
![clock driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/pics/clock.png)



<a name="Pictures"></a>

## Pictures
 Ukazka, jak fungue zadání kódu


[First picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/01.jpg)

[Second picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/012.jpg)

[Third picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123.jpg)

[Fourth picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123a.jpg)


<a name="references"></a>

## References

1. [Kód morse](https://kids.britannica.com/kids/article/Morse-Code/390814)
2. [Nexys A7 Reference Manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual)
3. Kódy z PC cvičení 
