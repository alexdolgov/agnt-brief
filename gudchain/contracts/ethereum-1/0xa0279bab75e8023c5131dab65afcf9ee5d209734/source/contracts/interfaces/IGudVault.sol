// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IGudVault {
  function activateDeposit(address firstDepositor) external;
  function proposeUpgrade(address newImplementation) external;
  function cancelUpgrade() external;
}