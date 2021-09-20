The *Source Portal* is the primary visual interface of SourceMarker. It is a dynamic and contextual interface that displays visualizations relevant to the source code currently in focus. The *Source Portal* is used to convey larger amounts of relevant runtime information than is possible through *Source Marks*.

To view the *Source Portal* you can click any visible *Source Mark* or you can type the keyboard combination:

```
CONTROL+SHIFT+S
```

Doing so will trigger the *Source Portal* to display directly above the artifact for which the information correlates, like so:

![](../.github/media/screenshots/open_activity.gif)

Given that the *Source Portal* is a contextual interface, there are a few different views which you may see once you've triggered the *Source Portal*.

## Overview

The Overview view displays general endpoint, service, and database statistics giving an overall view for the entire class. This is the default view of the *Source Portal* when triggered in the context of a source code class. This view displays each method of the class representing endpoints (e.g. `@RequestMapping`) in the class will be represented in this view.

![](../.github/media/screenshots/overview.gif)

## Activity

The Activity view displays general artifact statistics to gather an overall view of a source code artifact's runtime behavior. The Activity view displays the artifact's throughput, response time, and SLA (service level agreement). Each of these settings may be clicked to change the displayed graph for more detailed viewing. This view also contains temporal configuration settings so different time ranges can be viewed for each of these statistics.

![](../.github/media/screenshots/activity_view.gif)

## Traces

The Traces view is used to navigate gathered distributed traces. The Traces view is able to display the latest, slowest, and failed traces for a given source code artifact.

![](../.github/media/screenshots/latest_traces.gif)

### Trace Stack

Clicking on an individual trace will display the direct children traces. If those child traces have children as well which can be correlated to specific source code, clicking on those traces will display the next layer of traces and simultaneously navigate to the correlating source code.

![](../.github/media/screenshots/trace_stack.png)

### Span Info

Clicking on an individual trace span will display the span information. This includes data like span tags, logs, and exceptions.

![](../.github/media/screenshots/span_info.gif)

## Logs

The Logs view is used to view live logs related to a given source code artifact.

![](../.github/media/screenshots/logging.gif)
