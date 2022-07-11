# New Command

The `New Command` command allows developer to add commands to the Live Command Palette which may be committed along with the source code and shared and used by other developers.

## Parameters

* `name`: The name of the command.

### Usage

```
new command hello world
```

#### Example: new command hello world

> File path: .spp/commands/hello-world.kts

```kotlin
import spp.plugin.*
import spp.command.*
import spp.jetbrains.sourcemarker.PluginUI.*

class HelloWorldCommand : LiveCommand() {
    override val name = "hello-world"
    override val description = "<html><span style=\"color: ${getCommandTypeColor()}\">" +
            "My custom live command" + "</span></html>"

    override fun trigger(context: LiveCommandContext) {
        show("Hello world")
    }
}

registerCommand(HelloWorldCommand())
```
