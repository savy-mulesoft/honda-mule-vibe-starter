# Honda Mule Vibe Starter

A Honda Mule Vibe Starter project showcasing modern MuleSoft development.

## 🚀 Quick Start

### Prerequisites
- Java 17
- Maven 3.8+

### Run the Application

1. **Build and run:**
   ```bash
   mvn clean package
   Visual Studio > Run and Debug
   ```

2. **Test the API:**
   ```bash
   curl http://localhost:8081/api/hello
   ```

Expected response:
```json
{
  "message": "Hello World from Honda Mule Vibe Starter API!",
  "status": "running",
  "timestamp": "2026-01-18T13:01:51.123-05:00",
  "application": {
    "name": "honda-mule-vibe-starter",
    "version": "1.0.0-SNAPSHOT"
  }
}
```

## 📋 What's Included

- **RAML API Specification** - Clean API definition
- **APIKit Router** - Automatic routing and validation
- **GET /api/hello** - Simple hello world endpoint
- **Local Development Ready** - Just run and test

Happy coding! 🎯
