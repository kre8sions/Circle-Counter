# Circle-Counter
Framer Module

Basic Implementation
====

1. Import the module & create a new Counter instance

```
{Counter} = require "CircleCounter"
layerA =  new Counter
```
2. Set the amount of Dots you want

```
layerA.setCount(60)
```
3. Set a radius to create the dots

```
layerA.makeDots(150)
```
4. Set the speed of the Countdown (i.e if your count is 60 and speed is 1 your countdown will be 60 seconds)

```
layerA.countdown(1)
```

Other properties you can set
====
_dotSize_: set the size of each dot normal >defaulted to 10

_startColor_: initial color of dots >defaulted to grey

_endColor_: final color of dots >defaulted to red

_duration_: length of the transition from switching from startColor to endColor >defaulted to .01

Check out the link
https://framer.cloud/kWfkR
