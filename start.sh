#!/bin/bash

# Invoice Manager Startup Script
echo "🚀 Starting Invoice Manager..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ and try again."
    exit 1
fi

# Check if PostgreSQL is running
if ! command -v psql &> /dev/null; then
    echo "⚠️  PostgreSQL not found. Make sure PostgreSQL is installed and running."
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Check if backend dependencies are installed
if [ ! -d "backend/node_modules" ]; then
    echo "📦 Installing backend dependencies..."
    cd backend && npm install && cd ..
fi

# Check if frontend dependencies are installed
if [ ! -d "frontend/node_modules" ]; then
    echo "📦 Installing frontend dependencies..."
    cd frontend && npm install && cd ..
fi

# Run database migrations if needed
echo "🗄️  Setting up database..."
cd backend && npm run db:migrate && cd ..

# Seed database with sample data
echo "🌱 Seeding database with sample data..."
cd backend && npm run db:seed && cd ..

echo "✅ Setup complete!"
echo ""
echo "📱 Application URLs:"
echo "   Frontend: http://localhost:5173"
echo "   Backend API: http://localhost:3001"
echo "   Health Check: http://localhost:3001/health"
echo ""
echo "🔑 Demo Credentials:"
echo "   Admin: admin@company.com / password123"
echo "   Manager: manager@company.com / password123"
echo "   User: user@company.com / password123"
echo ""
echo "🚀 Starting development servers..."

# Start both frontend and backend
npm run dev