#!/bin/bash
# manage.sh - Manage QGIS Docker Compose stack

set -e

COMPOSE="docker compose"  # No dash

case "$1" in
  start)
    $COMPOSE up -d
    ;;
  stop)
    $COMPOSE down
    ;;
  restart)
    $COMPOSE down
    $COMPOSE up -d
    ;;
  logs)
    $COMPOSE logs -f
    ;;
  status)
    $COMPOSE ps
    ;;
  shell)
    $COMPOSE exec qgis /bin/bash
    ;;
  gui)
    # Set up X11 forwarding for Docker
    if ! xhost | grep -q 'LOCAL:'; then
      echo "Enabling local X11 access for Docker..."
      xhost +local:docker
    fi
    # Export DISPLAY if not set
    if [ -z "$DISPLAY" ]; then
      export DISPLAY=:0
    fi
    $COMPOSE up
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|logs|status|shell|gui}"
    exit 1
    ;;
esac
