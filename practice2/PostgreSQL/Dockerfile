# Use PostgreSQL Alpine base image
FROM postgres:alpine

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=user1
ENV POSTGRES_PASSWORD=password1
ENV POSTGRES_DB=database1

# Copy the SQL script to the docker-entrypoint-initdb.d directory
# This is where the PostgreSQL Docker image looks for initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432
