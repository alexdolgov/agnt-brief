// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "../vaults/hyperliquid/fundStorage.sol";
import "./Withdraw.sol";
import "./BaseStore.sol";

/**
 * @title DepositStoreUtils
 * @dev Library for withdraw storage functions
 */
library WithdrawStore {
    using UserWithdraw for UserWithdraw.WithdrawData;

    bytes32 public constant WITHDRAW_TYPE =
        keccak256(abi.encode("WITHDRAW_TYPE"));
    bytes32 public constant SHARES = keccak256(abi.encode("SHARES"));
    bytes32 public constant PRICE_PER_SHARE =
        keccak256(abi.encode("PRICE_PER_SHARE"));
    bytes32 public constant PROFIT = keccak256(abi.encode("PROFIT"));
    bytes32 public constant WITHDRAW_AMOUNT =
        keccak256(abi.encode("WITHDRAW_AMOUNT"));
    bytes32 public constant TRADING_FEE = keccak256(abi.encode("TRADING_FEE"));
    bytes32 public constant CREATED_AT = keccak256(abi.encode("CREATED_AT"));
    bytes32 public constant IS_ACQUIRED = keccak256(abi.encode("IS_ACQUIRED"));

    function get(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (UserWithdraw.WithdrawData memory) {
        UserWithdraw.WithdrawData memory withdraw;

        withdraw.setShares(
            fundStorage.getUint256(keccak256(abi.encode(key, SHARES)))
        );
        withdraw.setPricePerShare(
            fundStorage.getUint256(keccak256(abi.encode(key, PRICE_PER_SHARE)))
        );
        withdraw.setWithdrawAmount(
            fundStorage.getUint256(keccak256(abi.encode(key, WITHDRAW_AMOUNT)))
        );
        withdraw.setCreatedAt(
            fundStorage.getUint256(keccak256(abi.encode(key, CREATED_AT)))
        );
        withdraw.setIsAcquired(
            fundStorage.getBool(keccak256(abi.encode(key, IS_ACQUIRED)))
        );

        return withdraw;
    }

    function set(
        FundStorage fundStorage,
        bytes32 key,
        UserWithdraw.WithdrawData memory withdraw
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, SHARES)),
            withdraw.shares
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, PRICE_PER_SHARE)),
            withdraw.pricePerShare
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, WITHDRAW_AMOUNT)),
            withdraw.withdrawAmount
        );
        fundStorage.setBool(
            keccak256(abi.encode(key, IS_ACQUIRED)),
            withdraw.isAcquired
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, CREATED_AT)),
            withdraw.createdAt
        );
    }

    function setWithdrawAmount(
        FundStorage fundStorage,
        bytes32 key,
        uint256 amount
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, WITHDRAW_AMOUNT)),
            amount
        );
    }

    function setIsAcquired(
        FundStorage fundStorage,
        bytes32 key,
        bool value
    ) internal {
        fundStorage.setBool(keccak256(abi.encode(key, IS_ACQUIRED)), value);
    }

    function getIsAcquired(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (bool) {
        return fundStorage.getBool(keccak256(abi.encode(key, IS_ACQUIRED)));
    }

    function getWithdrawKey(
        address _vault,
        address _account
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(WITHDRAW_TYPE, _vault, _account));
    }
}
