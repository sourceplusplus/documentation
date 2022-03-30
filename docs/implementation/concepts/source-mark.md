*Source Marks* are one of the central components of SourceMarker. *Source Marks* are used to give developers a quick indication about the current behavior of a given source code artifact. These markings are placed in and around source code text to indicate there is additional information that can be viewed about that specific source code artifact.

### Gutter Mark

*Gutter Marks* represent the first of the two types of *Source Marks* available. *Gutter Marks* are distinguished by the fact that they do not occur directly inside source code but rather on the side of source code in an area known as the gutter. Typically, the gutter is to the left of source code and is often where line numbers are displayed. *Gutter Marks* are icon-based symbols that are interpreted through the icon which is displayed and context/location in which they are displayed. To get the complete meaning behind any *Gutter Mark* simply click it and the *Source Portal* will appear with the full context.

|                       ![](../../assets/screenshots/performance_ramp.png)                       |
|:----------------------------------------------------------------------------------------------:|
| *Gutter Mark indicating the userList() method is suffering from degrading runtime performance* |

### Inlay Mark

*Inlay Marks* represent the second of the two types of *Source Marks* available. Unlike *Gutter Marks*, *Inlay Marks* are positioned directly before, inside, after, or above textual source code. Whereas *Gutter Marks* are primarily used to convey information about entire classes, methods, and lines, *Inlay Marks* are primarily used to convey information about specific expressions, arguments, and variables. To get the complete meaning behind any *Inlay Mark* simply click it and the *Source Portal* will appear with the full context.

|                       ![](../../assets/screenshots/track_sioobe.gif)                        |
|:-------------------------------------------------------------------------------------------:|
| *Inlay Mark tracking the latest production occurrence of an exception occurring on line 54* |