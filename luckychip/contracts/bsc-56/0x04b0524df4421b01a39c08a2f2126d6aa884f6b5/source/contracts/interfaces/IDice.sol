// SPDX-License-Identifier: MIT
  
pragma solidity 0.8.11;

interface IDice {
    function tokenAddr() external view returns (address);
    function canWithdrawAmount(uint256 _amount) external view returns (uint256);
    function sendSecret(uint256 requestId, uint256 randomNumber) external;
    function settlePrivateBet(uint256 requestId, uint256 randomNumber) external;
}
