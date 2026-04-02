FROM python:3.11-slim

WORKDIR /app

# Install system deps + Node.js
RUN apt-get update && apt-get install -y \
    git \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

# Install pnpm
RUN npm install -g pnpm

# Clone OpenClaw
RUN git clone https://github.com/openclaw/openclaw.git

WORKDIR /app/openclaw

# Install dependencies
RUN pnpm install
RUN pnpm build

# Run OpenClaw
CMD ["node", "openclaw.mjs"]