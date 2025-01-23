# Use the official MySQL image as the base
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=ahaan
ENV MYSQL_DATABASE=database_trial

# Copy initialization scripts to the MySQL init directory
COPY ./init-scripts/*.sql /docker-entrypoint-initdb.d/

CMD ["mysqld", "--bind-address=0.0.0.0"]

# Expose the MySQL port
EXPOSE 3306
