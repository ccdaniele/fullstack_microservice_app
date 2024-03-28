# PodRace

![Alt text](temporary/pd-client-service/image-1.png)

PodRace is a FullStack application created by some Dev/IT's enthusiasts based in a microservice architecture to generate HTTP request, events, logs and infrastructure metrics for testing monitoring tools (such as Datadog) in a real and fun environment.

The logic of the application is based in a team challenge or "Pods Race" in which the Players (Support engineers) will collect points to their Pods (teams) completing custom events.

These customs events can be day to day actions with points associated to them, example:

- Solving a ticket = 20 pts
- Finishing a customer call = 10 pts
- Paraprograming = 10 pts
- Push a PR = 10 pts
- Building a new feature = 100 pts
- Bring cookies to the team = 1 billions pts

# About its components

PodRace has two main services 

* **pd-client-service:**

Which has been built using the latest nextjs app router to provide an independent frontend service with "client components" to execute the UI functions and "server components" to handle request made to a REST API

For more information about this, please refer to the it's own readme: https://github.com/ccdaniele/fullstack_microservice_app/blob/main/pd-client-service/README.md

* **pd-users-api:**

A ruby on rails based API which provides different endpoints including a **setRandom** controller which will respond with a random object from the index available in an specific database table. 

This services uses Sqlite in the testing environment and Postgres in dev.

For more information about this, please refer to the it's own readme: https://github.com/ccdaniele/fullstack_microservice_app/blob/main/pd-users-api/readme.md

# Future Features: 

- Containerized version running on Kubernetes
- A messaging and streaming broker (rabbitmq with Golang) to manage the request between the Client and those "randomized" functions in the backend. 
