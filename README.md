# QGIS Docker Project

This project sets up a Docker environment for running QGIS using the `qgis/qgis` Docker image. It includes persistent storage for data and configuration files.

## Project Structure

- **docker-compose.yml**: Defines the services, networks, and volumes for the Docker application.
- **data/**: Directory for storing persistent data generated by the QGIS application.
- **config/**: Directory for configuration files related to the QGIS application.
- **README.md**: Documentation for the project.

## Getting Started

1. **Clone the repository**:
   ```
   git clone https://github.com/lpolish/qgis-x11-docker.git
   cd qgis-x11-docker
   ```

2. **Start the application**:
   Run the following command to start the Docker containers:
   ```
   ./manage.sh gui
   ```

## Persistent Storage

The `data` and `config` directories are mounted as volumes in the Docker container to ensure that any changes made within the QGIS application are saved and can be accessed in future sessions.

## Additional Information

For more details on using QGIS, refer to the official QGIS documentation.
