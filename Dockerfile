# Use the official MySQL image as the base
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=ahaan
ENV MYSQL_DATABASE=database_trial

# Copy the SQL file to the initialization directory
COPY db.sql /docker-entrypoint-initdb.d/

# Optional: Copy a custom entrypoint script if needed
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use the default entrypoint or a custom one if specified
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
