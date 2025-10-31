# Getting Started on Okteto with NestJS

This example demonstrates how to use [Okteto](https://www.okteto.com/) to develop, debug, and test a [NestJS](http://nestjs.com/) application in Kubernetes.

## Prerequisites

- [Okteto CLI](https://www.okteto.com/docs/get-started/install-okteto-cli/) installed
- [VS Code](https://code.visualstudio.com/) (for debugging)
- Access to an Okteto cluster

## Deploy the Application

Deploy your NestJS application to Okteto with a single command:
```bash
okteto deploy
```

This command reads the `okteto.yml` manifest and deploys all the required resources to your Okteto namespace.

## Develop with Live Code Reloading

Start your development environment with hot-reload enabled:
```bash
okteto up -- npm run dev
```

This command:
- Synchronizes your local code with the remote development container
- Starts the NestJS application in watch mode
- Automatically reloads the application when you save changes to your code

Your application will be available at the URL shown in the terminal output. Edit your code locally and see changes reflected immediately!

## Debug with VS Code

This repository includes VS Code debug configuration out of the box.

### Steps to Debug:

1. Start the application in debug mode:
```bash
   okteto up -- npm run debug
```

2. In VS Code, open the **Run and Debug** panel (or press `Ctrl+Shift+D` / `Cmd+Shift+D`)

3. Select the **"Debug NestJS"** configuration from the dropdown

4. Click the green play button (or press `F5`) to attach the debugger

5. Set breakpoints in your code and start debugging!

The debugger will connect to your application running in the Okteto cluster, allowing you to inspect variables, step through code, and troubleshoot issues as if running locally.

## Run End-to-End Tests

Execute your end-to-end test suite in the Okteto environment:
```bash
okteto test
```

This command runs the tests defined in your `okteto.yml` manifest against your deployed application, ensuring your code works correctly in a production-like environment.

## Learn More

- [Okteto Documentation](https://www.okteto.com/docs/)
- [NestJS Documentation](https://docs.nestjs.com/)
- [Okteto Development Environments](https://www.okteto.com/docs/core/development-environments/)

## Clean Up

To remove all resources from your Okteto namespace:
```bash
okteto destroy
```