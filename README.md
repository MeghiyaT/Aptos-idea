# Healthcare Financing Platform

A decentralized healthcare financing platform built on the Aptos blockchain that enables patients to create funding requests for medical expenses and allows donors to contribute directly to healthcare needs.

## Overview

This smart contract provides a transparent and secure way for patients to raise funds for their medical treatments while giving donors confidence that their contributions directly reach those in need. The platform automatically manages fund distribution and tracks progress toward funding goals.

## Features

- **Patient-Controlled Funding**: Patients can create personalized healthcare funding requests
- **Transparent Donations**: All contributions are recorded on the blockchain for complete transparency
- **Automatic Goal Tracking**: The contract automatically tracks progress and deactivates funding when goals are met
- **Direct Transfers**: Donations go directly from donors to patients without intermediaries
- **Secure Transactions**: Built on Aptos blockchain ensuring security and immutability

## Smart Contract Functions

### 1. `create_healthcare_request`

Creates a new healthcare funding request for a patient.

**Parameters:**
- `patient: &signer` - The patient creating the funding request
- `name: vector<u8>` - Patient's name
- `condition: vector<u8>` - Description of the medical condition
- `goal: u64` - Target funding amount needed (in APT)

**Usage:**
```move
create_healthcare_request(patient_signer, b"John Doe", b"Heart Surgery", 10000);
```

### 2. `donate_to_healthcare`

Allows donors to contribute funds to a specific patient's healthcare request.

**Parameters:**
- `donor: &signer` - The donor making the contribution
- `patient_address: address` - Address of the patient receiving funds
- `amount: u64` - Amount to donate (in APT)

**Usage:**
```move
donate_to_healthcare(donor_signer, patient_address, 500);
```

## Data Structure

### HealthcareFunding
```move
struct HealthcareFunding {
    patient_name: vector<u8>,        // Name of the patient
    medical_condition: vector<u8>,   // Description of medical condition
    total_raised: u64,               // Total amount raised so far
    funding_goal: u64,               // Target amount needed for treatment
    is_active: bool,                 // Whether funding is still active
}
```

## How It Works

1. **Create Request**: A patient calls `create_healthcare_request` with their details and funding goal
2. **Receive Donations**: Donors can contribute by calling `donate_to_healthcare` with the patient's address
3. **Automatic Tracking**: The contract updates the total raised amount with each donation
4. **Goal Completion**: When the funding goal is reached, the request is automatically deactivated

## Requirements

- Aptos CLI installed
- Move compiler
- Aptos testnet/mainnet account with APT tokens

## Deployment

1. Clone the repository
2. Compile the Move contract:
   ```bash
   aptos move compile
   ```
3. Deploy to Aptos network:
   ```bash
   aptos move publish
   ```

## Security Features

- **Active Status Check**: Only accepts donations to active funding requests
- **Direct Transfers**: Uses Aptos framework's secure coin transfer mechanisms
- **Immutable Records**: All transactions are permanently recorded on the blockchain

## Use Cases

- Emergency medical procedures
- Chronic illness treatments
- Surgical operations
- Mental health therapy
- Rehabilitation programs
- Medical equipment purchases

## Contributing

Contributions are welcome! Please ensure all code follows Move best practices and includes appropriate tests.

## License

This project is open source and available under the MIT License.

## Disclaimer

This smart contract is for educational and demonstration purposes. Always conduct thorough testing and security audits before deploying to mainnet or handling real funds.
