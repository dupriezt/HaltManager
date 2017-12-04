My class side allows to:
- deactivate breakpoints, replacing them with metalinks that do not do anything and are just present to mark the position of an inactive breakpoint (so that it can be displayed in code browsers, and an option to reactivate it offerred in the ui)
- reactivate inactive breakpoints, restoring the original breakpoint
- keep track of all the inactive breakpoints in the system, and keep this list up to date when some inactive breakpoints are removed due to being in methods being modified, method being removed, or method being in classes being removed

class variables:
- allInactiveBreakpoints <LinkedList of InactiveBreakpoint>

My instances are representations of these inactive breakpoints, and hold references to  a) the corresponding original breakpoint that was deactivated and b) to the metalink added to the node this breakpoint was attached to marking the position of the inactive breakpoint

instance variables:
- correspondingActiveBreakpoint <Breakpoint> see a) above
- link <Metalink> see b) above