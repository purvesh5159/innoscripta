## Docker Setup Instructions
-- Install Docker on your machine.
--Install Docker Compose (if not included with Docker Desktop).

1. Clone the Repository:

   git clone <repository_url>
   cd <repository_folder>

2. Build and Start Docker Containers:


   docker-compose up

3. Access the Application:

    Laravel App: http://localhost:8000
    phpMyAdmin: http://localhost:8080

4. Stop Docker Containers:

    docker-compose down

5. Rebuild Docker (Optional):

    docker-compose up

## Database configuration

    Host: db (internal service name)
    Port: 3306
    Database: innoscripta
    Username: root
    Password: rootsecret