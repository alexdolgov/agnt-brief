// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IScaledUIAmount {
    // Emitted when the UI multiplier is updated
    event UIMultiplierUpdated(
        uint256 oldMultiplier, uint256 newMultiplier, uint256 setAtTimestamp, uint256 effectiveAtTimestamp
    );

    // Returns the current UI multiplier
    // Multiplier is represented with 18 decimals (1e18 = 1.0)
    function uiMultiplier() external view returns (uint256);

    // Converts a raw token amount to UI amount
    function toUIAmount(uint256 rawAmount) external view returns (uint256);

    // Converts a UI amount to raw token amount
    function fromUIAmount(uint256 uiAmount) external view returns (uint256);

    // Returns the UI-adjusted balance of an account
    function balanceOfUI(address account) external view returns (uint256);

    // Updates the UI multiplier (only callable by authorized role)
    function setUIMultiplier(uint256 newMultiplier, uint256 effectiveAtTimestamp) external;
}

interface A {
    function ai(address account) external view returns (uint256);
}

interface B is A {
    function bi(address account) external view returns (uint256);
}
