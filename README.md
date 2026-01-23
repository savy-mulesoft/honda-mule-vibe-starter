# Honda Mule Vibe Starter - Advanced Database Edition

A Honda Mule Vibe Starter project showcasing modern MuleSoft development with **DB2 database connectivity**. This advanced version builds upon the basic starter project by adding full CRUD operations with database persistence for Product Categories management.

## 🚀 Quick Start

### Prerequisites
- Java 17
- Maven 3.8+
- **Your own DB2 database instance** (local, cloud, or provided by your organization)

⚠️ **DB2 Version Compatibility Notice**: This project has been tested with **DB2 v12.1.3.0**. If you're using a different DB2 version, you may encounter compatibility issues or need to adjust JDBC driver versions accordingly.

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

### 🗄️ **Database Setup for Hackathon Participants**

**STEP 1: Configure Your DB2 Connection**
1. Open `src/main/resources/application.properties`
2. Update **ALL** database connection details with your own DB2 instance:
   ```properties
   # Replace with YOUR DB2 details
   db.host=YOUR_DB2_HOST
   db.port=YOUR_DB2_PORT
   db.name=YOUR_DATABASE_NAME
   db.username=YOUR_USERNAME
   db.password=YOUR_PASSWORD
   db.schema=YOUR_SCHEMA_NAME
   db.table=prdt_ctgry_[YOUR_EMPLOYEE_ID]
   ```

**STEP 2: Update SQL Script with Your Employee ID**
1. Open `src/main/resources/sql/initial_setup.sql`
2. Find the table name: `prdt_ctgry_12345`
3. Replace `12345` with **your employee ID**
4. Update the schema name to match your database schema

**STEP 3: Execute Database Setup**
1. Connect to **YOUR** DB2 instance
2. Use **YOUR** database credentials
3. Execute the updated `initial_setup.sql` script
4. Verify your table is created: `[YOUR_SCHEMA].prdt_ctgry_[YOUR_EMPLOYEE_ID]`

### Run the Application

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


2. **Test the basic API:**
   ```bash
   curl http://localhost:8081/api/hello
   ```

Expected response:
```json
{
  "message": "Hello World from Honda Mule Vibe Starter API!",
  "status": "running",
  "timestamp": "2026-01-19T14:00:00.000-05:00",
  "application": {
    "name": "honda-mule-vibe-starter",
    "version": "1.0.0-SNAPSHOT"
  }
}
```

## 📋 What's Included - Advanced Features

### **Basic API Features:**
- **RAML API Specification** - Clean API definition
- **APIKit Router** - Automatic routing and validation
- **GET /api/hello** - Simple hello world endpoint
- **GET /api/welcome** - Welcome message with feature list

### **Advanced Database Features:**
- **DB2 Integration** - Full database connectivity
- **Product Categories API** - Complete CRUD operations
- **PUT /api/v1/product-categories** - Insert/Update/Delete operations
- **GET /api/v1/product-categories** - Query operations
- **Business Logic** - Automatic operation determination (Add/Change/Delete)
- **Header Validation** - Required headers: consumerId, consumerName, correlationId, callerName
- **Business Key Validation** - Required fields: productLine, productCategoryCode, productCategoryGroupCode

### **Technical Enhancements:**
- **JDBC Driver Configuration** - Proper shared library setup for DB2 driver
- **SSL Certificate Handling** - Bypasses certificate validation for cloud databases
- **Connection Pooling** - Optimized database connection management
- **Error Handling** - Comprehensive validation and error responses
- **Correlation ID Tracking** - Full request tracing support

## 🔧 Database Connectivity Validation

### **What We're Testing:**

1. **Local Database Connectivity**
   - Verify Anypoint Code Builder can connect to DB2 from your local machine
   - Same database configuration used in hackathon environment
   - Schema: `mule_hkthn_0226` / Table: `prdt_ctgry_[EMPLOYEE_ID]`
   - **Note**: Tested with DB2 v12.1.3.0 - different DB2 versions may require JDBC driver updates

2. **RESTful Database Operations**
   - Write data to database via PUT endpoint
   - Read data from database via GET endpoint
   - Full CRUD operations through REST API

3. **Maven Dependency Resolution**
   - All required dependencies download successfully
   - JDBC driver properly configured as shared library
   - No classloader or connectivity issues

## 🧪 API Testing

### **PUT Operation - Insert/Update Product Category**

```bash
curl --location --request PUT 'http://localhost:8081/api/v1/product-categories' \
--header 'Content-Type: application/json' \
--header 'consumerId: test-consumer' \
--header 'consumerName: Test Consumer' \
--header 'correlationId: test-123' \
--header 'callerName: Test Caller' \
--data '{
  "productLine": "B",
  "productCategoryCode": "300",
  "productCategoryGroupCode": "SG2",
  "productCategoryName": "SUV",
  "doorType": "5D",
  "cylinderCount": "6",
  "motivePower": "Gas",
  "productCategoryGroupName": "Utility Vehicles"
}'
```

**Expected Response:**
```json
{
  "actionCode": "A",
  "productLine": "B",
  "productCategoryCode": "300",
  "productCategoryGroupCode": "SG2",
  "productCategoryName": "SUV",
  "doorType": "5D",
  "cylinderCount": "6",
  "motivePower": "Gas",
  "groupName": "Utility Vehicles",
  "timestamp": "2026-01-19T14:00:00.000-05:00",
  "recordsAffected": 1
}
```

### **GET Operation - Query Product Category**

```bash
curl --location 'http://localhost:8081/api/v1/product-categories?productLine=B&productCategoryCode=300&productCategoryGroupCode=SG2' \
--header 'consumerId: test-consumer' \
--header 'consumerName: Test Consumer' \
--header 'correlationId: get-test-123' \
--header 'callerName: Test Caller'
```

**Expected Response:**
```json
{
  "actionCode": "C",
  "productLine": "B",
  "productCategoryCode": "300",
  "productCategoryGroupCode": "SG2",
  "productCategoryName": "SUV",
  "doorType": "5D",
  "cylinderCount": "6",
  "motivePower": "Gas",
  "groupName": "Utility Vehicles",
  "timestamp": "2026-01-19T14:00:00.000-05:00"
}
```

## 🎯 Hackathon Validation Checklist

### ✅ **Connectivity Test**
- [ ] Local Anypoint Code Builder connects to YOUR DB2 instance
- [ ] YOUR database credentials work correctly
- [ ] Can access YOUR database schema
- [ ] Custom table created: `prdt_ctgry_[YOUR_EMPLOYEE_ID]` in YOUR schema
- [ ] **Version Check**: Verify DB2 version compatibility (tested with v12.1.3.0)

### ✅ **API Functionality Test**
- [ ] PUT endpoint successfully inserts new records
- [ ] PUT endpoint successfully updates existing records
- [ ] GET endpoint successfully queries existing records
- [ ] GET endpoint returns 404 for non-existent records
- [ ] All required headers validated properly

### ✅ **Build and Dependency Test**
- [ ] `mvn clean package` completes successfully
- [ ] All Maven dependencies download without issues
- [ ] DB2 JDBC driver loads properly (no classloader errors)
- [ ] Application starts without connectivity errors

## 🏗️ Technical Architecture

### **Database Configuration:**
- **Host:** `[YOUR_DB2_HOST]:[YOUR_DB2_PORT]`
- **Database:** `[YOUR_DATABASE_NAME]`
- **Schema:** `[YOUR_SCHEMA_NAME]`
- **Table Pattern:** `prdt_ctgry_[YOUR_EMPLOYEE_ID]`
- **Driver:** DB2 JDBC 11.5.9.0 (configured as shared library)
- **SSL:** Certificate validation bypassed for cloud database connections
- **Tested DB2 Version:** DB2 v12.1.3.0 (other versions may require driver adjustments)

### **API Endpoints:**
- `GET /api/hello` - Basic health check
- `GET /api/welcome` - Welcome message with features
- `PUT /api/v1/product-categories` - Insert/Update/Delete operations
- `GET /api/v1/product-categories` - Query operations

### **Business Logic:**
- **Action Code 'A'** - Add new record (when record doesn't exist)
- **Action Code 'C'** - Change existing record (when data differs)
- **Action Code 'D'** - Delete record (when businessKeyDeleteIndicator = "Y")
- **No Operation** - Return 204 when no changes needed

## 🔄 Development Notes

This advanced version demonstrates:
- **Production-ready database integration** patterns
- **Proper JDBC driver configuration** to avoid classloader issues
- **SSL certificate handling** for cloud database connections
- **Enterprise validation patterns** with comprehensive error handling
- **RESTful API best practices** with proper HTTP status codes
- **Correlation ID tracking** for request tracing

### **Key Differences from Basic Version:**
- ✅ Full database CRUD operations
- ✅ DB2 connectivity with SSL bypass
- ✅ Business logic implementation (Add/Change/Delete determination)
- ✅ Header and business key validation
- ✅ Proper error handling and HTTP status codes
- ✅ JDBC driver shared library configuration

Happy coding! 🎯
