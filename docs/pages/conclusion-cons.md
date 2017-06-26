### Drawbacks

Reactive approach has drawbacks that stem from ReactiveObjC implementation:
0. RAC functions unwrap to dozens of function calls, which is more CPU intensive
0. Threads are used extensively, so you may get crashes if you do things in the wrong thread
0. Syntax is somewhat cryptic, but custom macros may save a lot of confusion

