// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


/// @notice Interface for the obsolete vault contract which has issues  
interface IObsoleteVault {
    function transferOwnership(address newOwner) external;
    /// @dev The function to accept ownership 
    function acceptOwnership() external;
    /// @dev The withdraw function for the obsolete vault, which has issues and should not be used
    function withdrawToken(address token) external;
    /// @dev The tax token address
    function serviceToken() external view returns (address);
    /// @dev Check ownership 
    function owner() external view returns (address); 
    /// @dev Check pending ownership 
    function pendingOwner() external view returns (address);
}
