*Source Marks* are one of the central components of the Source++ plugin. *Source Marks* are used to associate and display the production behavior/state with a given source code artifact. These markings are placed in and around source code text to indicate there is additional information about that specific source code artifact.

### Guide Mark

*Guide Marks* represent the first of the three types of *Source Marks* available. *Guide Marks* do not have a visual representation but rather are used to aggregate and associate information about source code structures and their runtime behavior. For example, JVM methods can be annotated with `@RequestMapping` to turn them into HTTP endpoints. Instead of associating runtime data directly to the method, a *Guide Mark*  is created to represent the endpoint and the underlying method is associated to that *Guide Mark*. *Guide Marks* are globally unique and can represent any number of source code structures simultaneously. For example, if the process of "creating an account" is fulfilled by running 3 statements (or three methods), a single *Guide Mark* can be created to represent the entire process. You can then use that *Guide Mark* to associate data to the entire process.

*Guide Marks*  are also used to "bubble up" runtime information to the highest level of the source code structure. Setting a child *Guide Mark* as "failing" will cause the parent *Guide Mark* to also be marked as "failing". This allows for developers to quickly navigate to the specific expressions that are causing the underlying runtime behavior from the root of the source code structure.

### Gutter Mark

*Gutter Marks* represent the second of the three types of *Source Marks* available. *Gutter Marks* are distinguished by the fact that they do not occur directly inside source code but rather on the side of source code in an area known as the gutter. Typically, the gutter is to the left of source code and is often where line numbers are displayed. *Gutter Marks* are icon-based symbols that are interpreted through the icon which is displayed and context/location in which they are displayed. To get the complete meaning behind any *Gutter Mark* simply click it and the *Source Portal* will appear with the full context.

|                       ![](../../assets/screenshots/performance_ramp.png)                       |
|:----------------------------------------------------------------------------------------------:|
| *Gutter Mark indicating the userList() method is suffering from degrading runtime performance* |

### Inlay Mark

*Inlay Marks* represent the third of the three types of *Source Marks* available. Unlike *Gutter Marks*, *Inlay Marks* are positioned directly before, inside, after, or above textual source code. Whereas *Gutter Marks* are primarily used to convey information about entire classes, methods, and lines, *Inlay Marks* are primarily used to convey information about specific expressions, arguments, and variables. To get the complete meaning behind any *Inlay Mark* simply click it and the *Source Portal* will appear with the full context.

|                       ![](../../assets/screenshots/track_sioobe.gif)                        |
|:-------------------------------------------------------------------------------------------:|
| *Inlay Mark tracking the latest production occurrence of an exception occurring on line 54* |
