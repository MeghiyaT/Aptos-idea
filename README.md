# Healthcare Financing Platform

## Description

The Healthcare Financing Platform is a decentralized smart contract built on the Aptos blockchain that enables patients to create funding requests for their medical expenses and allows donors to contribute directly to healthcare costs. This platform eliminates intermediaries and ensures transparent, secure, and efficient healthcare crowdfunding.

The smart contract consists of two core functions:
- **Create Healthcare Request**: Patients can create funding requests with their medical condition details and target funding amount
- **Donate to Healthcare**: Donors can contribute AptosCoin directly to patients' healthcare funding requests

Each funding request includes patient information, medical condition description, funding goals, and real-time tracking of donations received. The system automatically deactivates funding once the target amount is reached.

## Vision

Our vision is to democratize healthcare financing by creating a transparent, accessible, and decentralized platform that connects patients in need with compassionate donors worldwide. We aim to:

- **Break down barriers** to healthcare access by providing an alternative funding mechanism
- **Ensure transparency** through blockchain technology where all transactions are publicly verifiable
- **Eliminate intermediaries** and reduce fees, ensuring maximum funds reach patients
- **Create global accessibility** allowing anyone with internet access to seek or provide healthcare funding
- **Build trust** through smart contract automation and immutable transaction records

We envision a world where financial constraints never prevent someone from receiving necessary medical treatment.

## Future Scope

### Short-term Enhancements
- **Verification System**: Integration with medical institutions to verify healthcare requests
- **Milestone-based Funding**: Release funds based on treatment progress milestones
- **Multi-currency Support**: Accept various cryptocurrencies and stablecoins
- **Mobile Application**: User-friendly mobile app for easy access and management

### Medium-term Developments
- **Insurance Integration**: Connect with decentralized insurance protocols
- **Medical Provider Network**: Direct payments to healthcare providers and hospitals
- **Reputation System**: Implement donor and patient reputation scoring
- **Analytics Dashboard**: Comprehensive tracking and reporting tools

### Long-term Goals
- **Global Healthcare Database**: Anonymous medical data collection for research
- **AI-powered Risk Assessment**: Intelligent funding recommendation system
- **Cross-chain Compatibility**: Support for multiple blockchain networks
- **Regulatory Compliance**: Adaptation to various international healthcare regulations
- **Prescription Drug Funding**: Specialized modules for medication crowdfunding

## Requirements

### System Requirements
- **Aptos CLI**: Latest version installed and configured
- **Move Compiler**: Compatible with Aptos Move language
- **Aptos Account**: Valid Aptos blockchain account with sufficient APT for gas fees
- **Wallet**: Aptos-compatible wallet (Petra, Martian, etc.)

### Technical Requirements
- **Node.js**: Version 16 or higher (for frontend integration)
- **Internet Connection**: Stable connection for blockchain interactions
- **Minimum APT Balance**: 
  - For patients: 0.01 APT (for transaction fees)
  - For donors: Donation amount + 0.001 APT (for transaction fees)

### Development Requirements
- **Aptos Framework**: Latest aptos-framework dependencies
- **Move Language**: Basic understanding of Move smart contract language
- **Blockchain Knowledge**: Understanding of wallet management and transaction signing

## Usage Instructions

### For Patients (Creating Healthcare Funding Requests)

#### Step 1: Prepare Your Information
- Patient name
- Detailed medical condition description
- Target funding amount (in APT)
- Medical documentation (for verification)

#### Step 2: Deploy and Create Request
```bash
# Deploy the smart contract (one-time setup)
aptos move publish --named-addresses MyModule=YOUR_ADDRESS

# Create healthcare funding request
aptos move run \
  --function-id YOUR_ADDRESS::HealthcareFinancing::create_healthcare_request \
  --args string:"John Doe" string:"Heart Surgery - Urgent cardiac procedure needed" u64:1000000000
```

#### Step 3: Share Your Request
- Share your account address with potential donors
- Promote your funding request through social channels
- Monitor donations and progress

### For Donors (Contributing to Healthcare Requests)

#### Step 1: Find Patient Address
- Obtain the patient's Aptos account address
- Verify the legitimacy of the healthcare request

#### Step 2: Make Donation
```bash
# Donate to healthcare request
aptos move run \
  --function-id CONTRACT_ADDRESS::HealthcareFinancing::donate_to_healthcare \
  --args address:PATIENT_ADDRESS u64:100000000
```

#### Step 3: Verify Transaction
- Check transaction status on Aptos Explorer
- Confirm donation was successfully processed

### Command Line Examples

#### Creating a Healthcare Request
```bash
# Example: Creating request for cancer treatment
aptos move run \
  --function-id 0xYOUR_ADDRESS::HealthcareFinancing::create_healthcare_request \
  --args \
    string:"Alice Johnson" \
    string:"Breast Cancer Treatment - Chemotherapy and radiation therapy" \
    u64:5000000000
```

#### Making a Donation
```bash
# Example: Donating 50 APT to patient
aptos move run \
  --function-id 0xCONTRACT_ADDRESS::HealthcareFinancing::donate_to_healthcare \
  --args \
    address:0xPATIENT_ADDRESS \
    u64:5000000000
```

### Web Interface Usage (Future Implementation)

#### For Patients:
1. Connect your Aptos wallet
2. Click "Create Healthcare Request"
3. Fill in patient details and medical information
4. Set funding goal and submit request
5. Share your unique request link

#### For Donors:
1. Connect your Aptos wallet
2. Browse active healthcare requests
3. Select a patient to support
4. Enter donation amount
5. Confirm transaction in wallet

### Important Notes

- **Gas Fees**: All transactions require small APT amounts for gas fees
- **Irreversible Donations**: Once sent, donations cannot be reversed
- **Goal Achievement**: Funding automatically closes when target is reached
- **Verification**: Always verify patient addresses before donating
- **Security**: Never share your private keys or seed phrases

### Troubleshooting

**Common Issues:**
- **Insufficient Balance**: Ensure adequate APT for donations + gas fees
- **Invalid Address**: Double-check patient address format
- **Transaction Failed**: Check network status and try again
- **Wallet Connection**: Refresh page and reconnect wallet

**Error Codes:**
- `Error 1`: Attempting to donate to inactive funding request
- `Move Abort`: Usually indicates insufficient funds or invalid parameters

## Contact Address

**Devnet**: `0x1bd5ec40a4ec0404d801d69afcfbce7926df578a3268d79562792fe93e01c8c3`
<img width="1890" height="907" alt="Screenshot 2025-08-22 113439" src="https://github.com/user-attachments/assets/282247e4-19cf-46ab-be93-8fcbb232770a" />
Note: Contract addresses will be updated once the contract is deployed to the respective networks. Please check this README for the most current deployment addresses.


