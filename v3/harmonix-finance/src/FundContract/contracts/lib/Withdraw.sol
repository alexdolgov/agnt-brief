// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// @title Deposit
// @dev Struct for deposits
library UserWithdraw {
    struct WithdrawData {
        uint256 shares;
        uint256 pricePerShare;
        uint256 withdrawAmount;
        uint256 managementFee;
        uint256 createdAt;
        bool isAcquired;
        bool isCollectNetworkCost;
    }

    function setShares(
        WithdrawData memory _withdraw,
        uint256 _shares
    ) internal pure {
        _withdraw.shares = _shares;
    }

    function setPricePerShare(WithdrawData memory _withdraw, uint256 _pricePerShare) internal pure {
        _withdraw.pricePerShare = _pricePerShare;
    }

    function setWithdrawAmount(
        WithdrawData memory _withdraw,
        uint256 _withdrawAmount
    ) internal pure {
        _withdraw.withdrawAmount = _withdrawAmount;
    }

    function setIsAcquired(
        WithdrawData memory _withdraw,
        bool _isAcquired
    ) internal pure {
        _withdraw.isAcquired = _isAcquired;
    }

    function setCreatedAt(
        WithdrawData memory _withdraw,
        uint256 _createdAt
    ) internal pure {
        _withdraw.createdAt = _createdAt;
    }
}
