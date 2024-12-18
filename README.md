# Logistics Website

A modern, feature-rich logistics and transportation management system built with Laravel. This platform provides comprehensive solutions for managing logistics operations, tracking shipments, and handling customer interactions.

## Features

- **User Management**
  - Secure authentication and authorization
  - Role-based access control
  - User profile management

- **Logistics Management**
  - Shipment tracking
  - Real-time delivery updates
  - Route optimization
  - Package management
  - Warehouse tracking

- **Content Management**
  - Dynamic page builder
  - Blog management
  - FAQ system
  - Gallery management
  - Testimonials
  - Team members showcase

- **Multi-language Support**
  - Built-in language management
  - Content translation system
  - RTL support

- **Additional Features**
  - Contact form management
  - Newsletter subscription
  - SEO optimization tools
  - Media library
  - Backup management
  - Theme customization
  - Mobile-responsive design

## Requirements

- PHP >= 8.1
- MySQL >= 5.7 or MariaDB >= 10.3
- Composer
- Node.js & NPM
- Apache or Nginx server
- SSL certificate (recommended for production)

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/donwolfonline/Logistics-website.git
   cd Logistics-website
   ```

2. **Install PHP dependencies**
   ```bash
   composer install
   ```

3. **Install Node.js dependencies**
   ```bash
   npm install
   ```

4. **Environment Setup**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Configure Database**
   - Create a new database
   - Update .env file with database credentials
   ```bash
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_database_name
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```

6. **Run Migrations and Seeders**
   ```bash
   php artisan migrate
   php artisan db:seed
   ```

7. **Build Assets**
   ```bash
   npm run dev
   ```

8. **Create Storage Link**
   ```bash
   php artisan storage:link
   ```

9. **Set Permissions** (Linux/Unix)
   ```bash
   chmod -R 777 storage bootstrap/cache
   ```

## Docker Setup

The project includes Docker configuration. To run using Docker:

```bash
docker-compose up -d
```

## Usage

1. **Access the application**
   - Development: `http://localhost:8000`
   - Production: Configure your domain accordingly

2. **Admin Panel**
   - Access: `http://your-domain/admin`
   - Default credentials:
     - Email: admin@example.com
     - Password: password

## Development

- **Run development server**
  ```bash
  php artisan serve
  ```

- **Watch for asset changes**
  ```bash
  npm run watch
  ```

## Security

- Keep your dependencies up to date
- Use strong passwords
- Enable two-factor authentication
- Regular backups
- Monitor logs

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the [MIT License](LICENSE).

## Support

For support, please contact [support@example.com](mailto:support@example.com)

## Credits

Built with [Laravel](https://laravel.com/) and maintained by [Your Name/Company].
