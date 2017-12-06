# HaltManager

HaltManager provides a window showing all the breakpoints and halt messages of the system, and allows one to toggle them on/off with a simple click. Halt messages can also be toggled via source code rewriting.
The deactivation/reactivation feature is available in all code browsers, not only in the HaltManager window.

## Installation
```Smalltalk
Metacello new
  baseline: 'HaltManager';
  repository: 'github://dupriezt/HaltManager/src';
  load
 ```
 
 ## Usage
 ### 1) Opening HaltManager
 HaltManager is accessible via the Tools part of the world menu.  
![1_entryinthetoolsmenu](https://user-images.githubusercontent.com/32486709/33613905-2a7cc2a2-d9d6-11e7-8cb7-956dc7b220a3.jpg)

HaltManager shows all the methods in the system that contain breakpoints (and their flavours like one-time only breakpoints), halts (and their flavours like haltOnce, haltIf:...) as well as deactivated breakpoints and halts (and their flavours).  
![2_haltmanagerwindow_initial](https://user-images.githubusercontent.com/32486709/33613913-2e9b59de-d9d6-11e7-944a-7de40071eb67.jpg)

### 2) Deactivating breakpoints and halts
Hovering over the red icon in the gutter will bring up the deactivation options. Click the one you would like to use.  
![3_testmethod_deactivationoptions](https://user-images.githubusercontent.com/32486709/33613917-30829136-d9d6-11e7-8470-f3aade111fd2.jpg)

#### 2.1) Deactivation by metalink
Choosing this option will leave the source code intact, but rewrite the underlying bytecode to prevent the node from stopping the execution. Deactivated nodes are be highlighted in blue to signal their condition.  
**Caution:** *If the method is later recompiled, the node will no longer be deactivated.*  

![4_testmethod_deactivatedbymetalink](https://user-images.githubusercontent.com/32486709/33613920-32b6d5a2-d9d6-11e7-9213-c15fa3a16b2e.jpg)

#### 2.2) Deactivation by rewriting
This option is only available for halt messages, and allows to deactivate them by rewriting them in the source code to inactive variants (`halt` becomes `inactiveHalt`, `haltOnce` becomes `inactiveHaltOnce`...).   
![6_testmethod_deactivatedbyrewriting](https://user-images.githubusercontent.com/32486709/33613922-361ece02-d9d6-11e7-988b-422a150e4f50.jpg)

### 3) Reactivation
To reactivate a breakpoint or halt that has been deactivated, hover over the red icon in the gutter and click the 'Reactivate' or 'Reactivate by rewriting' button.  
![5_testmethod_reactivationbymetalink](https://user-images.githubusercontent.com/32486709/33613921-3486e5e8-d9d6-11e7-8f83-d7056fd5a0f1.jpg)
![7_testmethod_reactivationbyrewriting](https://user-images.githubusercontent.com/32486709/33613927-38ad3e60-d9d6-11e7-813b-a16a4835f61e.jpg)

## Known Bug
Deactivating/reactivating a breakpoint or a halt from the HaltManager window in a method that has the same name as another method displayed in the HaltManager windows results in UI problems (a new tab opens, the method selection pane shows another method than the one that is displayed...). Even if this bug messes the display, it does not affect the features of HaltManager. This is a bug in [calypso](#https://github.com/dionisiydk/Calypso) that will be fixed in the next version.
