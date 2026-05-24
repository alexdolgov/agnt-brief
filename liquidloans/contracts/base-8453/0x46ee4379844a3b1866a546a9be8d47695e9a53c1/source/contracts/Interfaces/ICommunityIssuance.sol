// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface ICommunityIssuance { 
    
    // --- Events ---
    
    event LOANTokenAddressSet(address _loanTokenAddress);
    event StabilityPoolAddressSet(address _stabilityPoolAddress);
    event TotalLOANIssuedUpdated(uint _totalLOANIssued);

    // --- Functions ---

    function setAddresses(address _loanTokenAddress, address _stabilityPoolAddress) external;

    function issueLOAN() external returns (uint);

    function sendLOAN(address _account, uint _LOANamount) external;
}

// 2025 Liquid Loans