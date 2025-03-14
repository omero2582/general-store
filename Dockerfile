# Every RUN is its own shell that exits after running its command
# This means to set the working directory between lines, you must use WORKDIR
# CMD executes when the container starts. The other commands run during image build (process before starting the container)
FROM node:20.16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY ./frontend/package*.json ./frontend/
COPY ./backend/package*.json ./backend/

# Install dependencies
RUN cd frontend && npm ci
RUN cd backend && npm ci --production

# Copy the frontend and backend source code to the container
COPY ./frontend ./frontend
COPY ./backend ./backend
COPY ./shared ./shared

# Build the frontend
RUN cd frontend && npm run build

# Set the working directory to the backend folder
# Makes path.resolve() one liner inside of backend work, instead of long path.join
WORKDIR /app/backend

# Expose the port that the backend will run on
EXPOSE 3000

# Set the command to run the backend server
CMD ["npm", "start"]
