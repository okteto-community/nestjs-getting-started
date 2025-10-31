Getting Started on Okteto with NestJS

This example shows how to leverage Okteto to develop a [NestJS](http://nestjs.com/) App with Okteto. 

## Launch the application

```
okteto deploy
```

## Develop the application

```
okteto up -- npm run dev
```

## Debug the application
The repository is already configured to debug with VS Code.

On your terminal, run the command below to start the application in debug mode
```
okteto up -- npm run debug
```

In VSCode, click the debug button, and then run the `Debug NestJS` configuration to attach your debugger to the running application. Add a breakpoint and debug away


## Run tests

The okteto manifest is configured to run end to end tests with one command
```
okteto test
```