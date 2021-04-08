// moog-subharmonicon.ck
// november 2020
// by aarón montoya-moraga

// from the Moog Subharmonicon Manual

// Moog Subharmonicon receives MIDI clock information
// and responds to MIDI CC messages

// Parameter: VCO 1 Frequency
// MIDI CC#:  004 [MSB] / 036 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB] (14 bit)
// Remarks:   Provides +-2.5 octaves of control, added to the VCO 1 FREQ
//            knob setting. When the VCO 1 FREQ knob is in the center
//            position, the MIDI CC will sweep the same range as the knob.

// Parameter: VCO 1 SUB 1 Frequency
// MIDI CC#:  103
// Default:   0
// Range:     000-007: 16, 008-015: 15, 016-023: 14, 024-031: 13,
//            032-039: 12, 040-047: 11, 048-055: 10, 056-063: 09,
//            064-071: 08, 072-079: 07, 080-087: 06, 088-095: 05,
//            096-103: 04, 104-111: 03, 112-119: 02, 120-127: 01
// Remarks:   MIDI CC replaces the (VCO 1) SUB 1 FREQ knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCO 1 SUB 2 Frequency
// MIDI CC#:  104
// Default:   0
// Range:     000-007: 16, 008-015: 15, 016-023: 14, 024-031: 13,
//            032-039: 12, 040-047: 11, 048-055: 10, 056-063: 09,
//            064-071: 08, 072-079: 07, 080-087: 06, 088-095: 05,
//            096-103: 04, 104-111: 03, 112-119: 02, 120-127: 01
// Remarks:   MIDI CC replaces the (VCO 1) SUB 2 FREQ knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCO 2 Frequency
// MIDI CC#:  012 [MSB] / 044 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB] (14 bit)
// Remarks:   Provides +-2.5 octaves of control, added to the VCO 2 FREQ
//            knob setting. When the VCO 2 FREQ knob is in the center
//            position, the MIDI CC will sweep the same range as the knob.

// Parameter: VCO 2 SUB 1 Frequency
// MIDI CC#:  105
// Default:   0
// Range:     000-007: 16, 008-015: 15, 016-023: 14, 024-031: 13,
//            032-039: 12, 040-047: 11, 048-055: 10, 056-063: 09,
//            064-071: 08, 072-079: 07, 080-087: 06, 088-095: 05,
//            096-103: 04, 104-111: 03, 112-119: 02, 120-127: 01
// Remarks:   MIDI CC replaces the (VCO 2) SUB 1 FREQ knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCO 2 SUB 2 Frequency
// MIDI CC#:  106
// Default:   0
// Range:     000-007: 16, 008-015: 15, 016-023: 14, 024-031: 13,
//            032-039: 12, 040-047: 11, 048-055: 10, 056-063: 09,
//            064-071: 08, 072-079: 07, 080-087: 06, 088-095: 05,
//            096-103: 04, 104-111: 03, 112-119: 02, 120-127: 01
// Remarks:   MIDI CC replaces the (VCO 2) SUB 2 FREQ knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCF (EG) ATTACK
// MIDI CC#:  023 [MSB] / 055 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB]
// Remarks:   MIDI CC replaces the VCF ATTACK knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCF (EG) DECAY
// MIDI CC#:  024 [MSB] / 056 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB]
// Remarks:   MIDI CC replaces the VCF DECAY knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCA (EG) ATTACK
// MIDI CC#:  028 [MSB] / 060 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB]
// Remarks:   MIDI CC replaces the VCA ATTACK knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: VCA (EG) DECAY
// MIDI CC#:  029 [MSB] / 061 [LSB]
// Default:   0
// Range:     000-127 [MSB] / 000-127 [LSB]
// Remarks:   MIDI CC replaces the VCA DECAY knob setting;
//            moving this knob overrides the MIDI CC value.

// Parameter: Play (MIDI Transport)
// MIDI CC#:  SysEx
// Default:   ON
// Range:     OFF; ON
// Remarks:   SysEx files can be found at www.moogmusic.com

// Parameter: Rhythm Generator Logic
// MIDI CC#:  113
// Default:   0
// Range:     000-063 OR / 64-127 XOR
// Remarks:   OR logic advances the sequencer every time a clock
//            is received from one or both Rhythm Generators.
//            XOR logic only advances the sequencer when just
//            a singular clock is true - if both Rhythm Generators
//            are true, the sequencer will not advance.

// Parameter: MIDI Channel
// MIDI CC#:  SysEx
// Default:   1
// Range:     01-16, All
// Remarks:   SysEx files can be found at www.moogmusic.com

public class MoogSubharmonicon extends Chugen {
	
	// declare MidiOut variable
	MidiOut midiOut;
	
	// declare MidiMsg variable
	MidiMsg msg;
	
	// declare midiPort variable
	// default value 0
	0 => int midiPort;
	
	// declare midiChannel variable
	// default value is 01, values between 01-16
	1 => int midiChannel;
	
	[4, 36,
	103, 104,
	12, 44,
	105, 106,
	23, 55,
	24, 56,
	28, 60,
	29, 61,
	113] @=> int midiControlChangeNumbers[];
	
	["VCO 1 Frequency MSB", "VCO 1 Frequency LSB",
	"VCO 1 SUB 1 Frequency", "VCO 1 SUB 2 Frequency",
	"VCO 2 Frequency MSB", "VCO 2 Frequency LSB",
	"VCO 2 SUB 1 Frequency", "VCO 2 SUB 2 Frequency",
	"VCF (EG) ATTACK MSB", "VCF (EG) ATTACK LSB",
	"VCF (EG) DECAY MSB", "VCF (EG) DECAY LSB",
	"VCA (EG) ATTACK MSB", "VCA (EG) ATTACK LSB",
	"VCA (EG) DECAY MSB", "VCA (EG) DECAY LSB",
	"Rhythm Generator Logic"] @=> string midiControlChangeNames[];
	
	function int subFrequencyFromMidiToInt(int midiNumber) {
		return 16 - midiNumber / 8;
	}
	
	function int subFrequencyFromIntToMidi(int intValue) {
		return 8 * (16 - intValue);
	}
	
	
	
}