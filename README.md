# HaltManager

HaltManager provides a window showing all the breakpoints and halt messages of the system, and allows one to toggle them on/off with a simple click. Halt messages can also be toggled via source code rewriting.

## Installation
```Smalltalk
Metacello new
  baseline: 'HaltManager';
  repository: 'github://dupriezt/HaltManager/src';
  load
 ```
 
 ## Usage
 HaltManager is accessible via the Tools part of the world menu.  
![1_entryinthetoolsmenu](https://user-images.githubusercontent.com/32486709/33613905-2a7cc2a2-d9d6-11e7-8cb7-956dc7b220a3.jpg)

HaltManager shows all the method in the system containing breakpoints (and their flavours like one-time only breakpoints), halts (and their flavours like haltOnce, haltIf:...) as well as deactivated breakpoints and halts (and flavours).
![2_haltmanagerwindow_initial](https://user-images.githubusercontent.com/32486709/33613913-2e9b59de-d9d6-11e7-944a-7de40071eb67.jpg)






![3_testmethod_deactivationoptions](https://user-images.githubusercontent.com/32486709/33613917-30829136-d9d6-11e7-8470-f3aade111fd2.jpg)
![4_testmethod_deactivatedbymetalink](https://user-images.githubusercontent.com/32486709/33613920-32b6d5a2-d9d6-11e7-9213-c15fa3a16b2e.jpg)
![5_testmethod_reactivationbymetalink](https://user-images.githubusercontent.com/32486709/33613921-3486e5e8-d9d6-11e7-8f83-d7056fd5a0f1.jpg)
![6_testmethod_deactivatedbyrewriting](https://user-images.githubusercontent.com/32486709/33613922-361ece02-d9d6-11e7-988b-422a150e4f50.jpg)
![7_testmethod_reactivationbyrewriting](https://user-images.githubusercontent.com/32486709/33613927-38ad3e60-d9d6-11e7-813b-a16a4835f61e.jpg)
