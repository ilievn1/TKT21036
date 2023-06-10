# Install base-image node 16.x
FROM node:16.20

# Open port 5000
EXPOSE 5000

# Set pwd
WORKDIR /usr/src/app

# Copy src code
COPY . .
# Set env as requsted in README.md
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Install needed pkgs
RUN npm install
RUN npm run build
RUN npm install -g serve

# Launch app -> Test with static serve
CMD ["serve", "-s", "-l", "5000", "build"]
