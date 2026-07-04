// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @dev Hardhat test mock - GaugeEmission for AccessHub tests
contract MockGaugeEmissionForHubTest {
    uint256 public lastMultiplier;
    bool public lastGaugeActive;
    address public lastWithdrawToken;
    address public lastWithdrawTo;
    uint256 public lastWithdrawAmount;

    function updateEmissionsMultiplier(uint256 _multiplier) external {
        lastMultiplier = _multiplier;
    }

    function setGaugeActive(bool _isGaugeActive) external {
        lastGaugeActive = _isGaugeActive;
    }

    function emergencyWithdraw(address _token, address _to, uint256 _amount) external {
        lastWithdrawToken = _token;
        lastWithdrawTo = _to;
        lastWithdrawAmount = _amount;
    }
}
