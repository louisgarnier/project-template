#!/bin/bash

# Setup script for template project
# ⚠️ Before running, read: .windsurfrules

set -e  # Exit on error

echo "🚀 Setting up template project..."
echo ""
echo "⚠️  Remember: All AI behavioral rules are in .windsurfrules"
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if we're in the project root
if [ ! -f "README.md" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Backend setup
echo -e "${GREEN}📦 Setting up backend...${NC}"
cd backend

if [ ! -d "venv" ]; then
    echo "Creating Python virtual environment..."
    python3 -m venv venv
fi

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo -e "${GREEN}✅ Backend setup complete!${NC}"
cd ..

# Frontend setup
echo ""
echo -e "${GREEN}📦 Setting up frontend...${NC}"
cd frontend

if [ ! -d "node_modules" ]; then
    echo "Installing Node.js dependencies..."
    npm install
fi

echo -e "${GREEN}✅ Frontend setup complete!${NC}"
cd ..

# Database directory
echo ""
echo "Creating database directory..."
mkdir -p backend/database

echo ""
echo -e "${GREEN}✅ Setup complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Review .windsurfrules (AI behavioral rules)"
echo "2. Review SETUP_CHECKLIST.md"
echo "3. Review README.md (3-tier documentation architecture)"
echo "4. Start backend: cd backend && source venv/bin/activate && python3 -m uvicorn backend.api.main:app --reload"
echo "5. Start frontend: cd frontend && npm run dev"
echo ""
echo "⚠️  Remember: All AI rules live in .windsurfrules — single source of truth"




