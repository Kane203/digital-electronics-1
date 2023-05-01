# Morse Sender and receiver of the Morse code

### Team members

* Nurmukhanbet Mussabek (responsible for xxx)
* Vladislav Karmanov (responsible for xxx)


### Table of contents

* [Project objectives](#objectives)
* [Project problems](#problems)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

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

Write your text here.

<a name="modules"></a>

## VHDL modules description and simulations

Write your text here.

<a name="top"></a>

## TOP module description and simulations

Write your text here.

<a name="video"></a>

## Video
[First picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/01.jpg)

[Second picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/012.jpg)

[Third picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123.jpg)

[Fourth picture](https://github.com/Kane203/digital-electronics-1/blob/main/labs/project/0123a.jpg)
<a name="references"></a>

## References

1. Write your text here.
