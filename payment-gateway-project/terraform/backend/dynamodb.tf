# Purpose: DynamoDB table setup
# Maintainer: Sarthak
resource "aws_dynamodb_table" "transactions" {
    name = "payment-transaction"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "transaction_id"
    
    attribute {
      name = "transaction_id"
      type = "S"
    }

    point_in_time_recovery {
      enabled = true
    }
    server_side_encryption {
      enabled = true
    }

    tags = {
        Project = "aplhanumeric payment gateway"
        Creator = "sarthak"
    }

  # Sample item schema - for dev reference only
  #
  # Sample Recharge Item:
  # {
  #   "transaction_id": "txn_00123abc",
  #   "card_id": "USER123XYZ",
  #   "timestamp": "dd/mm/yy hh/mm/ss",
  #   "recharge amount": 50,
  #   "transaction_type": "credit",
  #   "category": "recharge",
  #   "balance_after_recharge": 50,
  #   "GR_Number": "G09166",
  #
  # }
  #
  # Sample Deduction Item:
  # {
  #   "transaction_id": "txn_00124xyz",
  #   "card_id": "USER123XYZ",
  #   "timestamp": "dd/mm/yy hh/mm/ss",
  #   "amount": 30,
  #   "transaction_type": "debit",
  #   "category": "canteen",
  #   "balance_after_txn": 20,
  #   "GR_number": "G09166",
  # }
}
