// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "./IHelixDeal.sol";

interface IHelixFactory {
  function createDeal(
        address _borrower,
        address _dealWallet,
        address _paymentToken, 
        uint256 _threshold, // 2 admins - 1 borrow -> 66% // 2 admins -> 100%
        uint256 _salt, 
        uint256[] calldata _allowedUIDTypes,
        uint256 dbDealId
    ) external returns (IHelixDeal);
}