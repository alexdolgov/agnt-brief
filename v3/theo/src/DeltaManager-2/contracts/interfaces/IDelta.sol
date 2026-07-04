// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDelta {
    function setKYC(address _kyc) external;
    function clawback(address from, uint256 amount) external;
    
    // view functions
    function superAdmin() external view returns (address);
    function clawedBackAmount(address account) external view returns (uint256);
    function completeTransfer (address to, uint256 amount) external;
    // Events
    event TokensClawedBack(address indexed from, address indexed admin, uint256 amount);
}
