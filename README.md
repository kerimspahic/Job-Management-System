# Job Management App

## Table of Contents
- [About](#about)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installing](#installing)
- [Usage](#usage)
- [Used Gems](#used-gems)

---

## About
This project is a simple web application built with Rails 8 and Tailwind CSS. It demonstrates foundational concepts of the Rails framework and provides a clean user interface using Tailwind CSS. 

The application includes:
- Email-based authentication with OTP for secure login.
- Job management features such as job posting, searching, and viewing.
- Pagination and styling for an enhanced user experience.

The primary goal of this application is to create a functional, beginner-friendly app while adhering to modern development practices.

---

## Getting Started
Follow these instructions to set up the project locally for development and testing.

### Prerequisites
Ensure you have the following installed on your system:
- **Ruby**: 3.3.6  
- **Rails**: 8.0.0  
- **SQLite**: 3.37.2  
- **Node.js**: 22.11.0  
- **npm**: 10.9.0  
- **Yarn**: 1.22.22  

Install the required dependencies:
# Install Ruby using the ruby installer and verify the version
```bash
ruby -v
```
# Install Rails
```bash
gem install rails -v 8.0.0
```
# Install SQLite and Verify installation
```bash
sqlite3 --version
```

# Install Node.js and verify the version
```bash
node -v
npm -v
```
# Install Yarn
```bash
npm install --global yarn
```
### Installing
Follow these steps to get the development environment running:
1. Clone the repository:
```bash
git clone https://github.com/kerimspahic/Job-Management-System.git
cd Job-Management-System
```

2. Install the required gems:
```bash
bundle install
```

3. Set up the database:
```bash
rails db:create db:migrate
```

4. Install Tailwind CSS:
```bash
rails tailwindcss:install
```

5. Start the development server:
```bash
rails server
```

6. Open your browser and navigate to:
```bash
http://localhost:3000
```

## Usage
### Key Features

1. Authentication:
    - Enter an email address to log in.
    - Verify with the one-time code sent to your email.
    - Option to log out.

2. Job Management:
    - Add new jobs using the provided form.
    - View jobs in a paginated table.
    - Search jobs by title, location, or type.

3. Styling and Design:
    - Uses Tailwind CSS for styling.

## Used Gems

- **tailwindcss-rails** (v3.0): Integrates Tailwind CSS into the Rails app.
- **rotp** (v6.3): For OTP generation and validation.
- **kaminari**: Provides pagination support.