This project is a comprehensive full-stack web application aimed at managing vacations. The application encompasses features such as user 
authentication, user management, and vacation tracking. It is structured with a separate backend and frontend, both configured to run within 
Docker containers for streamlined development and deployment. The backend is built with Node.js and uses TypeScript, while the frontend is 
developed with React.

Key Features:
 - User Authentication and Management: Secure login and registration systems.
 - Vacation Tracking: Allows users to add, view, and manage vacation details.
 - Responsive Design: Frontend built to provide a seamless experience across various devices.
 - Scalability: Dockerized setup ensures the application can be easily scaled and deployed.

User Features:
 - Registration and Login: Users can create an account and log in securely.
 - View Vacations: Users can browse and view details of various vacations.
 - Book Vacations: Users can book vacations and manage their bookings.
 - Profile Management: Users can update their profile information.
 - Follow Vacations: Users can follow specific vacations to receive updates.

Admin Features:
 - Admin Dashboard: Admins have access to a dashboard for managing the application.
 - Vacation Management: Admins can add, update, and remove vacation listings.
 - Booking Management: Admins can view and manage all user bookings.
 - Reporting: Admins can generate reports on user activity and vacation bookings.

Run with Docker Compose:
 - docker-compose up --build in terminal

 For local development:
 - backend: cd backend
            npm install
            npm run start:dev
 - frontend: cd frontend
             npm install
             npm start

