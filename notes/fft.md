# FFT Notes

To get FFT with changing time intervals it requires a interpolating the signal first then taking the FFT.

## ngspice method
using ngspice there is a linearize command that will linearize nodes specified. 
For a good FFT you want the sampling rate to be high enough that its max frequency is higher than the signal in question. Also it need to be long enough to increase its accuracy for the low frequency signals.

Creates a new setplot, you need to do `setplot` to see all plots then choose `setplot tran1` to access the non linearized waveforms

```spice
let lin-tstart = 4n $ skip the start-up phase
let lin-tstop = 14n $ end earlier(just for demonstration)
let lin-tstep = 5p
linearize out25 out50
plot out25 out50
```


## Post processing method
Requires python library nfft and scipy if you wnat to format it post sim
https://github.com/jakevdp/nfft/blob/master/README.md

