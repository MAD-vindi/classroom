#  Classroom Status App 🏛️🧑‍🎓👩‍🎓

## Project Structure
An app to check which class is empty and which one is occupied. Initial input is based on the timetable but the status of whether the classroom is occupied or not can be updated by teachers who login to it.


---

## Tech stack used:

The tech stack used here is,

- Node and express JS

- MySQL (as database)

- Handlebars(Templating Language)

- CSS

---

### `Before contributing look into `[CONTRIBUTING GUIDELINES](./CONTRIBUTING.md)

## Prerequisites

>MySQL installed on your system, if not follow this [Link](https://www.youtube.com/watch?v=7S_tz1z_5bA&t=294s) for mac and this [Link](https://www.youtube.com/watch?v=7S_tz1z_5bA&t=294s) for windows

>Nodejs installed on your system, if not follow this [Link](https://www.youtube.com/watch?v=__7eOCxJyow)

---
## Project setup instructions:

-	From transaction.sql in db folder copy everything and paste into new file in MySQL workbench for execution of all queries in this way initial db with tables and values will be set
-	In .env file update your username and password
-	Now open terminal in current folder [project folder] and enter command ```npm install``` to install all necessary node modules
-	After installation run ```npm app.js``` or ```nodemon app.js``` to start the server, there will be a log in console immediately after starting of server
-	In browser enter URL http://localhost:8000/ and after this there will be another log saying that "Connected to database with connection ID: "
-	This completes setup for this project
---
## Troubleshoot

>>If you encounter this type of error “ER_NOT_SUPPORTED_AUTH_MODE Client does not support authentication protocol requested by server error”, you can follow this trouble shoot technique [Click me](https://www.youtube.com/watch?v=H0jxDMyaKe8&t=4s)

>> If there are any other issues feel free to ask in our [Community Discord Server](https://discord.com/invite/4A8YqmK)

---

## Resources

-	Look into the CRUD operations in this [video](https://youtu.be/1aXZQcG2Y6I), code in the repository is careful modification of the code that is taught in this video.
-	Walkthrough [video](https://youtu.be/W8jySpfRUDY) of connecting express server to MySQL.
-	Authentication reference [video](https://youtu.be/ORExt-aYiqo)
---

## Final version of the project
Click [here](https://www.figma.com/file/xUNe4RoZlwYStGIOY3cqoq/web-project-1?node-id=0%3A1) for the UI design and prototype of the project.

![classroom1](https://user-images.githubusercontent.com/108210777/194824416-33211cc3-789a-43e7-b5a6-436bd82784f8.png)

![classroom2O](https://user-images.githubusercontent.com/108210777/194824491-6b4d070a-c194-44ac-b268-3469cfc97802.png)


![classroom2](https://user-images.githubusercontent.com/108210777/194767532-77f10536-0505-4788-ae26-fe5d1cfb7249.png)

![classroom3](https://user-images.githubusercontent.com/108210777/194767539-7be841f7-f3a3-47de-b472-086e5b5dfae1.png)


---

## Intended final project:
A Classroom status web app which provides staff authentication and updating the current status of the classrooms through the separate portal accessible only for the staffs.
