# KORG volca beats

## Description

It is an instrument for digital FM synthesis.

It is part of the volca series by KORG.

It is described by KORG as an "analog rhythm machine".

It is still in production and its retail price is 149.99 USD as of March 2020.

## History

Created by Tatsuya Takahashi and released in 2013.

## Technical specifications

### Power

This instrument can be powered in one of two ways:

* 6x AA batteries
* Power supply
  * 9V DC
  * Center-positive
  * TODO mA

### Audio

Input: none.

Output: 1/8" TRS headphone jack, mono.

### Accesories

Here is a list of optional accesories:

* KORG power supply
  * 100-240V input
  * 9V DC output
  * Center negative
  * 1,700 mA
  * Yellow tip
  * Compatible with Volca series, Monologue and Minilogue
* KORG volca mix: for power, audio mix, sync with other volcas
* KORG SQ-10: for sequencing
* Decksaver: for protection

## User interface

### Back panel

The back panel has a compartment for installing the optional 6x AA batteries.

### Front panel

The front panel includes:

* 01x jack, power input
* 01x jack, audio output
* 02x jacks, sync input and output
* 01x jack, MIDI DIN 5-pin input
* 18x knobs
  * 02x big, black, opaque, no light
  * 08x small, black, opaque, no light
  * 08x small, white, translucent, with light
* 09x buttons
  * 01x black, round, opaque, no light
  * 06x white, rectangle, opaque, with light
  * 02x yellow, rectangle, opaque, with light
* 01x display
  * 04x 7-segment digits, red over black
* 16x touch buttons + 32x LEDS
  * Touch buttons are rectangle and yellow
  * LEDs are round and yellow
  * Each touch button has two corresponding LEDs
  * Upper LEDs are inside of the touch button
  * Lower LED are outside of the touch button

The front panel is divided in two sections: upper and lower.

When a controller has main and secondary labels, it is indicated like this: main (secondary).

#### Upper section

* Power section
  * Power: button, black, round, opaque, no light
  * DC 9V center-positive: jack, power input
* MIDI / sync section:
  * MIDI input: 1x MIDI DIN 5-pin jack
  * Sync in: sync input, 1/8 inch TS mono jack
  * Sync out: sync output, 1/8 inch TS mono jack
* Ouput section
  * Headphone: audio output jack, 1/8 inch TRS stereo jack, mono signal
* Stutter section:
  * Time: knob, big, black, opaque, no light
  * Depth: knob, big, black, opaque, no light
* Display section:
  * 04x 7-segment digits, red over black
* Kick voice section:
  * Kick click: knob, white, translucent, with light
  * Kick pitch: knob, small, black, opaque, no light
  * Kick decay: knob, small, black, opaque, no light
* Snare voice section:
  * Snare snappy: knob, white, translucent, with light
  * Snare pitch: knob, small, black, opaque, no light
  * Snare decay: knob, small, black, opaque, no light
* Tom voice section:
  * Tom hi pitch: knob, white, translucent, with light
  * Tom lo pitch: knob, white, translucent, with light
  * Tom decay: knob, small, black, opaque, no light
* Hat voice section:
  * Hat closed decay: knob, white, translucent, with light
  * Hat open decay: knob, white, translucent, with light
  * Hat grain: knob, small, black, opaque, no light
* Global sound parameters section:
  * PCM speed: knob, white, translucent, with light, with surrounding white ring
  * Tempo:  knob, white, translucent, with light
  * Part level: knob, small, black, opaque, no light
  * Volume: knob, small, black, opaque, no light
* Transport and memory section:
  * Part <: button, white, rectangle, opaque, with light
  * Part >: button, white, rectangle, opaque, with light
  * Mute: button, white, rectangle, opaque, with light
  * (Func): button, white, rectangle, opaque, with light
  * Memory (Write): button, white, rectangle, opaque, with light
  * Step mode (Step jump): button, white, rectangle, opaque, with light
  * Play (Active step): button, yellow, rectangle, opaque, with light
  * Record (Step rec): button, yellow, rectangle, opaque, with light


#### Lower section

This section is a 16-step sequencer, where each step is a rectangle yellow touch button. Each step has 2 associated round yellow LEDs, one in the upper inside part, and another in the lower outside part.

* 16x touch buttons
    * 01, inside: M1 - outside: analogue, kick
    * 02, inside: M2 - outside: analogue, snare
    * 03, inside: M3 - outside: analogue, low tom
    * 04, inside: M4 - outside: analogue, high tom
    * 05, inside: M5 - outside: analogue, closed hat
    * 06, inside: M6 - outside: analogue, open hat
    * 07, inside: M7 - outside: PCM, clap
    * 08, inside: M8 - outside: PCM, claves
    * 09, inside: xx - outside: PCM, agogo
    * 10, inside: xx - outside: PCM, crash
    * 11, inside: xx - outside: motion rec, stutter
    * 12, inside: xx - outside: motion rec, speed
    * 13, inside: xx - outside: global stutter
    * 14, inside: xx - outside: clear, accent step
    * 15, inside: xx - outside: clear, part
    * 16, inside: xx - outside: clear, all

## MIDI

Notes:

* 36: kick
* 38: snare
* 43: low tom
* 50: high tom
* 42: closed hat
* 46: open hat
* 39: clap

### Control Change

* 40: part level - kick
* 41: part level - snare
* 42: part level - low tom
* 43: part level - high tom
* 44: part level - closed hat
* 45: part level - open hat
* 46: part level - clap
* 47: part level - claves
* 48: part level - agogo
* 49: part level - crash

* 50: pcm speed - clap
* 51: pcm speed - claves
* 52: pcm speed - agogo
* 53: pcm speed - crash

* 54: stutter time
* 55: stutter depth
* 56: tom decay
* 57: closed hat decay
* 58: open hat decay
* 59: hat grain
