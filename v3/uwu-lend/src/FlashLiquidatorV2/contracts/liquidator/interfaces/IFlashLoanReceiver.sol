// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import './ILendingPoolAddressesProvider.sol';
import './ILendingPool.sol';

interface IFlashLoanReceiver {
  function ADDRESSES_PROVIDER() external view returns (ILendingPoolAddressesProvider);

  function LENDING_POOL() external view returns (ILendingPool);

  function executeOperation(
    address[] calldata assets,
    uint256[] calldata amounts,
    uint256[] calldata premiums,
    address initiator,
    bytes calldata params
  ) external returns (bool);
}
