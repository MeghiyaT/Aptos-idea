module MyModule::HealthcareFinancing {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing a healthcare funding request.
    struct HealthcareFunding has store, key {
        patient_name: vector<u8>,    // Name of the patient
        medical_condition: vector<u8>, // Description of medical condition
        total_raised: u64,           // Total amount raised so far
        funding_goal: u64,           // Target amount needed for treatment
        is_active: bool,             // Whether funding is still active
    }

    /// Function to create a new healthcare funding request.
    /// @param patient: The signer creating the funding request
    /// @param name: Patient's name
    /// @param condition: Description of the medical condition
    /// @param goal: Target funding amount needed
    public fun create_healthcare_request(
        patient: &signer, 
        name: vector<u8>, 
        condition: vector<u8>, 
        goal: u64
    ) {
        let healthcare_funding = HealthcareFunding {
            patient_name: name,
            medical_condition: condition,
            total_raised: 0,
            funding_goal: goal,
            is_active: true,
        };
        move_to(patient, healthcare_funding);
    }

    /// Function for donors to contribute to a healthcare funding request.
    /// @param donor: The signer making the donation
    /// @param patient_address: Address of the patient receiving funds
    /// @param amount: Amount to donate
    public fun donate_to_healthcare(
        donor: &signer, 
        patient_address: address, 
        amount: u64
    ) acquires HealthcareFunding {
        let healthcare_funding = borrow_global_mut<HealthcareFunding>(patient_address);
        
        // Only allow donations to active funding requests
        assert!(healthcare_funding.is_active, 1);
        
        // Transfer the donation from donor to patient
        let donation = coin::withdraw<AptosCoin>(donor, amount);
        coin::deposit<AptosCoin>(patient_address, donation);
        
        // Update the total raised amount
        healthcare_funding.total_raised = healthcare_funding.total_raised + amount;
        
        // Deactivate funding if goal is reached
        if (healthcare_funding.total_raised >= healthcare_funding.funding_goal) {
            healthcare_funding.is_active = false;
        };
    }
}