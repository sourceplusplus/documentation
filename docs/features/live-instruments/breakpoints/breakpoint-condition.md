# Breakpoint Condition

Uses https://www.baeldung.com/spring-expression-language

Example
```java
int s = 1;
int r = 2;
```
Breakpoint on line 2 with condition `s == 1` would trigger the breakpoint.
`(s - 1) == 0` would also trigger the breakpoint.