# Invoice Management System

🏢 **Enterprise-grade invoice management system** with comprehensive approval workflows, AI-powered data extraction, and real-time collaboration features.

## ✨ Features

### 🔐 Authentication & Authorization
- JWT-based authentication with refresh tokens
- Role-based access control (Admin, Manager, User, Viewer)
- Secure password hashing and session management

### 📋 Invoice Management
- Drag-and-drop file upload with multiple format support
- AI-powered data extraction from invoice documents
- Rich invoice display with approval actions
- Complete audit trail and change history

### 🔄 Approval Workflows
- Multi-level approval processes
- Configurable approval limits by role
- Email notifications for pending approvals
- Escalation and delegation capabilities

### 📊 Dashboard & Analytics
- Real-time statistics and metrics
- Recent invoices and pending approvals
- Interactive charts and visualizations
- Mobile-responsive design

### 👥 Vendor Management
- Comprehensive vendor profiles
- Risk scoring and approval status
- Vendor performance tracking
- 3-way matching with purchase orders

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ and npm
- PostgreSQL 14+
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MikeGeeBK25/invoice-management-system.git
   cd invoice-management-system
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp backend/.env.example backend/.env
   # Edit backend/.env with your database credentials
   ```

4. **Set up the database**
   ```bash
   npm run db:migrate
   npm run db:seed
   ```

5. **Start the development server**
   ```bash
   npm run dev
   ```

6. **Access the application**
   - Frontend: http://localhost:5173
   - Backend API: http://localhost:3001
   - Health Check: http://localhost:3001/health

## 🔑 Demo Credentials

- **Admin**: admin@company.com / password123
- **Manager**: manager@company.com / password123
- **User**: user@company.com / password123

## 🏗️ Project Structure

```
invoice-management-system/
├── backend/              # Node.js/Express API server
│   ├── src/
│   │   ├── controllers/  # Route controllers
│   │   ├── models/       # Database models
│   │   ├── middleware/   # Express middleware
│   │   ├── routes/       # API routes
│   │   ├── services/     # Business logic
│   │   └── utils/        # Utility functions
│   ├── prisma/          # Database schema and migrations
│   └── uploads/         # File upload storage
├── frontend/            # React application
│   ├── src/
│   │   ├── components/  # Reusable UI components
│   │   ├── pages/       # Application pages
│   │   ├── store/       # Redux state management
│   │   ├── services/    # API service layer
│   │   ├── hooks/       # Custom React hooks
│   │   └── utils/       # Utility functions
│   └── public/          # Static assets
├── docs/                # Technical documentation
└── scripts/             # Build and deployment scripts
```

## 🛠️ Technology Stack

### Frontend
- **React 18** with TypeScript
- **Tailwind CSS** for styling
- **Redux Toolkit** for state management
- **React Router** for navigation
- **Lucide React** for icons
- **Recharts** for data visualization

### Backend
- **Node.js** with Express
- **TypeScript** for type safety
- **Prisma** ORM with PostgreSQL
- **JWT** for authentication
- **Multer** for file uploads
- **Nodemailer** for email notifications

### Database
- **PostgreSQL 14+**
- Comprehensive relational schema
- Audit trails and soft deletes
- Optimized indexes for performance

## 📱 Key Components

### Dashboard
- Statistics cards with real-time data
- Recent invoices list
- Pending approvals queue
- Interactive charts and metrics

### Invoice Upload
- Drag-and-drop interface
- Multi-file support
- AI data extraction preview
- Validation and error handling

### Approval Workflow
- Role-based approval routing
- Email notifications
- Comments and audit trail
- Escalation mechanisms

### User Management
- Role assignment and permissions
- Profile management
- Activity tracking
- Security settings

## 🔧 Development

### Available Scripts

- `npm run dev` - Start development servers
- `npm run build` - Build production bundles
- `npm run test` - Run test suites
- `npm run lint` - Run ESLint
- `npm run typecheck` - TypeScript type checking
- `npm run db:migrate` - Run database migrations
- `npm run db:seed` - Seed database with sample data

### Code Quality
- ESLint configuration for consistent code style
- TypeScript for type safety
- Prettier for code formatting
- Husky for pre-commit hooks

## 🚢 Deployment

### Environment Configuration
1. Set up production environment variables
2. Configure PostgreSQL database
3. Set up file storage (local or cloud)
4. Configure email service (SMTP)

### Production Build
```bash
npm run build
npm start
```

### Docker Support
```bash
docker-compose up -d
```

## 📚 API Documentation

The API follows RESTful conventions with comprehensive error handling:

- `GET /api/health` - Health check endpoint
- `POST /api/auth/login` - User authentication
- `GET /api/invoices` - List invoices with filtering
- `POST /api/invoices` - Create new invoice
- `PUT /api/invoices/:id/approve` - Approve invoice
- `GET /api/users` - User management
- `GET /api/vendors` - Vendor information

## 🔒 Security Features

- JWT authentication with refresh tokens
- Password hashing with bcrypt
- Rate limiting on API endpoints
- Input validation and sanitization
- SQL injection prevention
- XSS protection
- CORS configuration

## 📈 Scalability Features

- Efficient database queries with proper indexing
- Redis caching for session management
- File storage abstraction for cloud deployment
- Horizontal scaling support
- Performance monitoring and logging

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

🚀 **Built with Claude Code** - Enterprise-grade AI-powered development