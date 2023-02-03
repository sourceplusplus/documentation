# Production Feedback

**Live Insights** allow developers to easily gather insight feedback about how new code modifications may affect
production before those changes are deployed. There is currently one live insight:

#### [Function Duration](bundled/function-duration.md)

The **Function Duration** insight predicts the expected duration of a function invocation in production based on
the sum of the durations of the various operations within the function that have been recorded in production.
