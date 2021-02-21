# Bastl Kastle Drum

## About

Mini modular digital synthesiser, released in 2020. Price 90 euros. It is a new firmware and face panel for the Bastl Kastle v.15 synthesizer by Bastl Instruments.

## Enclosure

Made of fiberglass.

## Power

3x AA batteries or micro USB jack.

## Front panel

* 7x knobs:
  * DRUM MOD knob
  * PITCH MOD knob
  * TEMPO MOD knob
  * DECAY knob: shortest is at center, counter clockwise with pitch mod, clockwise no pitch mod.
  * DRUM knob: 8 drum synthesis modes
  * PITCH knob
  * TEMPO knob

* 1x toggle switch:
  * BATT / USB switch

* Patchbay:
  * 2x I/O: L, R
  * 2x POWER: +, -
  * 2x TRIG IN
  * 3x DRUM MOD
  * 3x PITCH MOD
  * 3x TEMPO MOD
  * 3x DECAY
  * 2x CLK IN
  * 2x FEED PATTERN
  * 2x DRUMS
  * 3x NOISES
  * 3x CLK: square wave
  * 3x LFO: triangle wave
  * 3x PATTERN

## Back panel

* 1x USB POWER jack: power with micro USB cable
* 1x I/0 jack: 
* 1x OUT jack: 1/8" stereo TRS output, it can drive headphones or connected to a mixer.

## Voltages

The PATTERN output has 16 steps of stepped voltages.

TRIGGER IN: recognizes 3 different zones of voltages: 1, 2, 3.

When the voltage in TRIGGER IN sees a transition of voltage between 1-3 and 3-1, it responds with a bigger envelope than adjacents zones 1-2, 2-1, 2-3, 3-2.

## Operation

Connect CLK to TRIG IN

Or connect PATTERN to TRIG IN for accented patterns



## Reference

* Bastl Kastle Drum website, available at https://bastl-instruments.com/instruments/kastle-drum

* Bastl Kastle Drum manual, available at https://bastl-instruments.com/instruments/kastle-drum
* Kastle Drum - Discover rhythm on a tiny modular groovebox, available at https://www.youtube.com/watch?v=-wj1_NOucN0
* Kastle Drum - every feature explained - modular glitch-drummachine, available at https://www.youtube.com/watch?v=12swhHgedlU
* Repository with the code, available at https://github.com/bastl-instruments/kastle
