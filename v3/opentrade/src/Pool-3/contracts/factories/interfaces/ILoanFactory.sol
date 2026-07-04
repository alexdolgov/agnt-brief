//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../interfaces/ILoan.sol";

/**
 * @title Interface for the LoanFactory.
 */
interface ILoanFactory {
  /**
   * @dev Emitted when a loan is created.
   */
  event LoanCreated(address indexed addr, address indexed poolAddr);

  /**
   * @dev Creates a loan
   * @dev Emits `LoanCreated` event.
   */
  function createLoan(
    address borrower,
    address pool,
    address liquidityAsset,
    ILoanSettings memory settings
  ) external returns (address);

  function version() external pure returns (uint16);
}
