# Start from the base image (assumed from "debian.sh --arch 'arm64'")
FROM debian:bookworm

# Set environment variables for Ruby gems
ENV GEM_HOME="$HOME/gems"
ENV PATH="$HOME/gems/bin:$PATH"

# Update package lists
RUN apt-get update && \
    apt-get install -y ruby-full build-essential && \
    rm -rf /var/lib/apt/lists/*

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Set the working directory
WORKDIR /j-dir

# Create the working directory
RUN mkdir cellrex-docs
WORKDIR /j-dir/cellrex-docs

