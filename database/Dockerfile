# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_ROOT_user=VARCHAR
ENV MYSQL_ROOT_PASSWORD=VARCHAR
# Copy SQL scripts to initialize the database
# If you have initialization SQL scripts, place them in a folder named 'docker-entrypoint-initdb.d' relative to this Dockerfile
WORKDIR /app
COPY . /app

# Expose the MySQL port
EXPOSE 3306

# Command to start MySQL service when the container starts
CMD ["mysqld"]

# Optionally, you can include a health check to verify the container's health status
# HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
#   CMD mysqladmin ping -h 127.0.0.1 -u root --password=$MYSQL_ROOT_PASSWORD || exit 1
