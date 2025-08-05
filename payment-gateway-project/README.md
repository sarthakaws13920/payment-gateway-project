Alphanumeric Payment Gateway

Description 
A cloud-native, serverless payment system for canteen/BAV environments. Operators log in through a secure web portal to process user transactions based on alphanumeric ID cards. It handles authentication, item selection, payment deduction, balance display, and updates to a central DynamoDB table.

Features
- Operator login via mobile web app
- Alphanumeric card ID support
- Item-based transaction system (Tea ₹7, Puri ₹7, etc.)
- Real-time balance checking and deduction
- AWS Lambda-powered backend
- DynamoDB for storage
- CI/CD using GitHub Actions
- Terraform for infrastructure provisioning

Tech-Stack
- Java
- AWS Lambda
- DynamoDB
- Terraform
- GitHub Actions
- Docker (optional)
- Jenkins (optional)

Project Structure
payment-gateway-project
.github/workflows
backend
docs
frontend
jenkins
lambda
terraform
.gitignore
README.md

Setup Instructions
Clone the repository
bash
git clone https://github.com/your-username/payment-gateway-project.git
cd payment-gateway-project

Deploy Infrastructure
cd terraform
terraform init
terraform apply

Build Backend
cd backend
mvn clean install
Usage Example
### Example Flow
> User says: "I want 1 tea"
1. Operator logs into `https://transactions.com`
2. Chooses **Canteen**
3. Selects **Tea ₹7**
4. Inputs user card ID `X1Y2Z3`
5. Submits transaction
6. Sees user's updated balance
7. Transaction is logged to DynamoDB

Contributing
Want to help? Follow these steps:
1. Fork the repository
2. Create a new branch (`feature/your-feature`)
3. Make your changes
4. Push and open a Pull Request

License
This project is licensed under the MIT License.

Author
Sarthak Singh 
GitHub: sarthakaws13920 https://github.com/sarthakaws13920

