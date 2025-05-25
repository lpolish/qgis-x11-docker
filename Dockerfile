FROM qgis/qgis:latest

# Set environment variables for X11
ENV DISPLAY=:0

# Optionally set a working directory
WORKDIR /home/qgis

# Entrypoint to run QGIS Desktop by default
ENTRYPOINT ["qgis"]
