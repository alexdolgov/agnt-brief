pragma solidity 0.8.20;

interface IPrestaking {
  function requestDeposit(
    address token,
    uint256 amount,
    uint256 minShares,
    uint256 timestamp,
    bytes memory signature
  ) external;
  function cancelDeposit(address user, uint256 index) external; // only the user or whitelisted processor
  function processDeposits(address user) external;
  // Add other function signatures as needed
}
