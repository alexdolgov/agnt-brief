pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Planet Convert To Boost Interface
   interface IConvertToBoost {

   /// @notice Gets the required BTCB amount to be taken from user given gamma amount and BTCBPercentage user wants to deposit
    function getBTCBAmount(uint256 GAMMAAmount, uint256 addBTCBPercentage) external returns (uint256 BTCBAmount);
    
      
    /// @notice Convert Gamma rewards to GAMMA-BTCB (Boost Generator Tokens)
    function convertToBoost(uint256 GAMMARewards, uint256 BTCBAmount, address _mintAddress, uint256 addBTCBPercentage) external returns (uint256);
    
   }
