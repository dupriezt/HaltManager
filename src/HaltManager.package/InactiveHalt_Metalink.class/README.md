My class side allows to:
- deactivate halts (and its flavours like haltOnCOunt:, haltIf: ...), by adding metalinks removing the bytecode of these halts to their corresponding ast nodes.
- reactivate halts (and its flavours) that have been deactivated by the addition of a metalink, restoring the original behaviour of the halt.
- keep track of all the inactive halts (and their corresponding metalinks) in the system, and keep this list up to date when some of their metalinks are removed due to being in methods being modified, method being removed, or method being in classes being removed

class variables:
- allInactiveHalts: <LinkedList of InactiveHalt_Metalink>  All the InactiveHalts_Metalink currently active in the system.

My instances are representations of these inactive halts, and hold references to  a) the corresponding ast node of the halt that was deactivated and b) to the metalink added to the halt ast node to prevent it from halting the execution.

instance variables:
- correspondingHaltNode: <RBMessageNode> see a) above
- link <Metalink> see b) above