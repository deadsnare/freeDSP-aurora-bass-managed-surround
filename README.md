# freeDSP-aurora-bass-managed-surround

Plugins for freeDSP Aurora allowing bass management for 5.3 and 7.1 systems.

## DSP programs

TO DO

## Intended workflow

1. Measure response of all satellites and subs with REW
2. Align/EQ subs with MSO if more than one present
3. Time align impulses on satellites using Delay block
4. Correct modes and interference on satellites up to Schröder frequency (~300 Hz) using EQ block; REW calculates settings
5. Adjust gain of satellites using Gain block
6. Using XOver, Phase and LFE delay blocks, implement the actual bass management; see <https://www.andyc.diy-audio-engineering.org/mso/html/tech-topics/optimizing-the-splice-1.html> and <https://www.andyc.diy-audio-engineering.org/mso/html/tech-topics/optimizing-the-splice-2.html>
7. Implement house curve using target curve EQ
8. Use LFE lowpass to filter out full-range signals from faulty surround music masters (e.g. NIN's The Downward Spiral)
