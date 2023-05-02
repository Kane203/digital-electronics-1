# Morse Sender and receiver of the Morse code

### Team members

* Nurmukhanbet Mussabek (responsible for xxx)
* Vladislav Karmanov (responsible for xxx)


### Table of contents

* [Project objectives](#objectives)
* [Project problems](#problems)
* [Hardware description](#hardware)
* [Simulations](#modules)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

Cílem našého projektu bylo vytvořit vysylač a přijimač Morseova kódu. Kód Morse to je způsob přenosu informace, který používá kombinace krátkých a dlouhých signálů (teček a pomlček) k kódování písmen, číslic a interpunkčních znamének. V našem projektu jsme místo 
tlačitka pro zadavání kódu, použili přepínače. K tomu jsme potřebovali 10 přepínačů z pravého okraje. Funguje to takto: Chcete-li nastavit pomlčku, musíte zapnout dva přepínače a pro čárku je nutné, aby byl v zapnutém stavu pouze jeden pravý přepínač ze dvou. Také jsme v našem projektu použili dvě tlačítka: jedno, centrální, pro vymazání znaků z displeje a druhé, dole, pro zapamatování tohoto symbolu a jeho posunutí doleva a umožnění zobrazení více znaků( až 8 znaků). Pro odesílaní kódu používáme levý spínač, když se rozsvítí prava LEDka to znamená, že odeslání znaků z displeje je úspěšné.

Цель моего проекта состоит в том чтобы создать отправителя и получателя кода Морза. Код Морзе - это система передачи информации, которая использует комбинации коротких и длинных сигналов (точек и тире), чтобы закодировать буквы, цифры и знаки препинания. В нашем проекте мы использовали переключатели вместо точек и тире. Для этого нам потребовалось 10 переключателей с правого края. Работает это так: чтобы задать тире надо "включить" два переключателя,а для запятой необходимо чтобы только один переключатель находился в "включенном" состояний. Так же мы использовали две кнопки в нашем проекте: один для стирания символов с дисплея, а другая чтобы передвинуть символ влево и дать возможность выводить на дисплей несколько символов( вплоть до 8 символов) Для отправителя мы используем самый левый переключатель, когда она загорается это значит что отправка символов с дисплея успешена завершена.

<a name="problems"></a>

## Project problems
Основные проблемы нашего кода:
• Отсутвие отправителя 
• Невозможность вывода на дисплей двух одинаковых символов подряд 
• Промежуток между точками в сигнале равен промежутку между двумя символами
• После каждого символа в сигнале мы видим точку

<a name="hardware"></a>

## Hardware description

Schéma pro top


![top](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/top.PNG)

Schéma pro display driver


![display driver](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/display_driver.PNG)

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



<a name="video"></a>

## Pictures
 Ukazka, jak fungue zadání kódu


[First picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/01.jpg)

[Second picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/012.jpg)

[Third picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123.jpg)

[Fourth picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123a.jpg)


<a name="references"></a>

## References

1. Write your text here.
