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

### 2. Publish API to Anypoint Exchange (Optional)
Want to publish your API specification to Anypoint Exchange? Use Mule Vibe Agent!

**Prompt to use in Mule Vibe Agent:**
```
publish this api to exchange
```

**What to expect:**
The agent will:
1. Examine your RAML specification (`honda-mule-vibe-starter-api.raml`)
2. Extract project information from `pom.xml`
3. Publish the API asset to Anypoint Exchange
4. Provide confirmation with asset details:
   - Asset ID: `honda-mule-vibe-starter-api`
   - Version: `1.0.0`
   - Type: `rest-api` (RAML)
   - Status: `published`

**Benefits of publishing to Exchange:**
- ✅ API Documentation automatically generated
- ✅ API Console for interactive testing
- ✅ Reusable asset for other projects
- ✅ Version management and governance
- ✅ Integration with API Manager for policies

Happy coding! 🎯
