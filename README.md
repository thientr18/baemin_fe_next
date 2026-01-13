# Baemin Frontend - Next.js Application

A Next.js food delivery application built with React, TypeScript, Ant Design, and Tailwind CSS.

## Project Overview

This project is a food delivery platform frontend built with:
- **Next.js 14.2.4** - React framework with App Router
- **TypeScript** - Type-safe development
- **Ant Design** - UI component library
- **Tailwind CSS** - Utility-first CSS framework
- **pnpm** - Fast, disk space efficient package manager

## Docker Deployment

This project is containerized using Docker for easy deployment and consistent environments.

### Prerequisites

- Docker installed on your system
- Docker daemon running

### Building the Docker Image

Build the Docker image using the following command:

```bash
docker build . -t img-baemin_fe_next
```

This command will:
1. Use Node.js 20 Alpine base image
2. Install project dependencies using yarn
3. Build the Next.js application for production
4. Create an optimized Docker image

### Running the Container

Run the containerized application:

```bash
docker run -d -p 3002:3000 --name cons-baemin_fe_next img-baemin_fe_next
```

The application will be available at `http://localhost:3002`

**Container options:**
- `-d` - Run container in detached mode (background)
- `-p 3002:3000` - Map host port 3002 to container port 3000
- `--name cons-baemin_fe_next` - Assign a name to the container

### Docker Management Commands

**Stop the container:**
```bash
docker stop cons-baemin_fe_next
```

**Start the container:**
```bash
docker start cons-baemin_fe_next
```

**Remove the container:**
```bash
docker rm cons-baemin_fe_next
```

**Remove the image:**
```bash
docker rmi img-baemin_fe_next
```

**View container logs:**
```bash
docker logs cons-baemin_fe_next
```

**View running containers:**
```bash
docker ps
```

## Local Development (Without Docker)

If you want to run the project locally for development:

```bash
# Install dependencies
pnpm install

# Run development server
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## Project Structure

- `/app` - Next.js App Router pages and layouts
- `/components` - Reusable React components
- `/public` - Static assets (images, fonts)
- `Dockerfile` - Docker configuration for containerization

## Environment Configuration

The application runs on port 3000 inside the container. Modify the port mapping in the `docker run` command to change the external port.

## Notes

- The Dockerfile uses yarn for dependency management with an extended network timeout for reliability
- Production builds are optimized for performance
- The container uses Alpine Linux for minimal image size
