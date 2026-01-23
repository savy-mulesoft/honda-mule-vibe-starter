# Honda Mule Vibe Starter

A Honda Mule Vibe Starter project showcasing modern MuleSoft development.

## 🚀 Quick Start

### Prerequisites
- Java 17
- Maven 3.8+

### ⚠️ **VERY IMPORTANT** - Before You Start
**Replace the Organization ID in pom.xml with your own Anypoint Platform Organization ID!**

1. Open `pom.xml`
2. Find this line: `<groupId>e5c02810-ef86-427e-8e6b-f3d3abe55974</groupId>`
3. Replace `e5c02810-ef86-427e-8e6b-f3d3abe55974` with your Anypoint Platform Organization ID
4. Also update: `<exchange.organization.id>e5c02810-ef86-427e-8e6b-f3d3abe55974</exchange.organization.id>`

**How to find your Organization ID:**
- Log into Anypoint Platform
- Go to Access Management > Organization
- Copy your Organization ID from the details

### Run the Application

1. **Build and run:**
   ```bash
   # Run this command in VSCode terminal (zsh)
   mvn clean package
   ```
   <img width="1291" height="311" alt="Screenshot 2026-01-23 at 11 22 40 AM" src="https://github.com/user-attachments/assets/0c8c0e64-b85e-40ae-8079-6944cee298fb" />


   **Then:**
   ```bash
   Visual Studio > Run and Debug > Run Mule Application
   ```
   <img width="412" height="196" alt="Screenshot 2026-01-23 at 11 23 23 AM" src="https://github.com/user-attachments/assets/853f21bc-1333-4ced-88ea-b125a4932a09" />


   

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

## 🔄 Next Steps

### 1. Test Your API Locally
After running the application, test the endpoint:

```bash
curl http://localhost:8081/api/hello
```

Or use Postman:
- Method: GET
- URL: `http://localhost:8081/api/hello`

Verify you get the expected response showing your API is working correctly.

### 2. Add Welcome Endpoint and Publish to Exchange
Extend your API by adding a welcome endpoint and publishing to Anypoint Exchange using Mule Vibe Agent!

**Prompt to use in Mule Vibe Agent:**
```
Create a new endpoint /welcome in the API that responds with a welcome message. Update the API specification and publish the updated API to Anypoint Exchange, and implement the flow with the welcome functionality.
```

**What to expect:**
The agent will:
1. Update the RAML specification (`honda-mule-vibe-starter-api.raml`) to include `/welcome` endpoint
2. Modify the Mule flow (`honda-mule-vibe-starter.xml`) to implement the welcome functionality
3. Publish the updated API specification to Anypoint Exchange
4. Provide confirmation with updated asset details:
   - Asset ID: `honda-mule-vibe-starter-api`
   - New endpoint: `GET /api/welcome`
   - Updated version and Exchange publication status

**Testing Instructions:**
After the agent completes the task:

1. **Test locally first:**
   ```bash
   # Start your application
   mvn clean package
   # Then run via Visual Studio > Run and Debug
   
   # Test the new welcome endpoint
   curl http://localhost:8081/api/welcome
   ```

2. **Validate on Anypoint Exchange:**
   - Log into Anypoint Platform
   - Navigate to Design Center > Exchange
   - Find your published API asset
   - Use the API Console to test the `/welcome` endpoint
   - Verify the updated specification includes the new endpoint


Happy coding! 🎯
