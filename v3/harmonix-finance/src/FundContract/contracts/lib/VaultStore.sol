// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "../vaults/hyperliquid/fundStorage.sol";
import "./BaseStore.sol";

/**
 * @title DepositStoreUtils
 * @dev Library for deposit storage functions
 */
library VaultStore {
    struct VaultState {
        uint256 pricePerShare;
        uint256 withdrawPoolAmount;
        uint256 lastHarvestManagementFeeTime;
        uint256 lastHarvestPerformanceFeeTime;
        uint256 nav;
        uint256 deployedTimestamp;
        uint256 highWatermark;
        uint256 pendingWithdrawAmount;
        uint256 pendingWithdrawShares;
    }
    bytes32 public constant PRICE_PER_SHARE =
        keccak256(abi.encode("PRICE_PER_SHARE"));
    bytes32 public constant WITHDRAW_POOL_AMOUNT =
        keccak256(abi.encode("WITHDRAW_POOL_AMOUNT"));
    bytes32 public constant LAST_HARVEST_MANAGEMENT_FEE_TIME =
        keccak256(abi.encode("LAST_HARVEST_MANAGEMENT_FEE_TIME"));
    bytes32 public constant NAV = keccak256(abi.encode("NAV"));
    bytes32 public constant LAST_HARVEST_PERFORMANCE_FEE_TIME = keccak256(abi.encode("LAST_HARVEST_PERFORMANCE_FEE_TIME"));
    bytes32 public constant DEPLOYED_TIMESTAMP = keccak256(abi.encode("DEPLOYED_TIMESTAMP"));
    bytes32 public constant HIGH_WATERMARK = keccak256(abi.encode("HIGH_WATERMARK"));
    bytes32 public constant PENDING_WITHDRAW_AMOUNT = keccak256(abi.encode("PENDING_WITHDRAW_AMOUNT"));
    bytes32 public constant PENDING_WITHDRAW_SHARES = keccak256(abi.encode("PENDING_WITHDRAW_SHARES"));
    
    struct VaultSetting {
        uint256 minimumSupply;
        uint256 capacity;
        uint256 performanceFeeRate;
        uint256 managementFeeRate;
        address managementFeeReceiver;
        address performanceFeeReceiver;
        uint256 networkCost;
    }
    bytes32 public constant ASSET = keccak256(abi.encode("ASSET"));
    bytes32 public constant MINIMUM_SUPPLY =
        keccak256(abi.encode("MINIMUM_SUPPLY"));
    bytes32 public constant CAPACITY = keccak256(abi.encode("CAPACITY"));
    bytes32 public constant PERFORMANCE_FEE_RATE =
        keccak256(abi.encode("PERFORMANCE_FEE_RATE"));
    bytes32 public constant MANAGEMENT_FEE_RATE =
        keccak256(abi.encode("MANAGEMENT_FEE_RATE"));
    bytes32 public constant NETWORK_COST =
        keccak256(abi.encode("NETWORK_COST"));
    bytes32 public constant MANAGEMENT_FEE_RECEIVER =
        keccak256(abi.encode("MANAGEMENT_FEE_RECEIVER"));
    bytes32 public constant PERFORMANCE_FEE_RECEIVER =
        keccak256(abi.encode("PERFORMANCE_FEE_RECEIVER"));

    function getVaultState(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (VaultState memory) {
        uint256 pps = fundStorage.getUint256(
            keccak256(abi.encode(key, PRICE_PER_SHARE))
        );
        uint256 withdrawPoolAmount = fundStorage.getUint256(
            keccak256(abi.encode(key, WITHDRAW_POOL_AMOUNT))
        );
        uint256 lastHarvestManagementFeeTime = fundStorage.getUint256(
            keccak256(abi.encode(key, LAST_HARVEST_MANAGEMENT_FEE_TIME))
        );
        uint256 lastHarvestPerformanceFeeTime = fundStorage.getUint256(
            keccak256(abi.encode(key, LAST_HARVEST_PERFORMANCE_FEE_TIME))
        );
        uint256 nav = fundStorage.getUint256(keccak256(abi.encode(key, NAV)));
        uint256 deployedTimestamp = fundStorage.getUint256(
            keccak256(abi.encode(key, DEPLOYED_TIMESTAMP))
        );
        uint256 highWatermark = fundStorage.getUint256(
            keccak256(abi.encode(key, HIGH_WATERMARK))
        );

        uint256 pendingWithdrawAmount = fundStorage.getUint256(
            keccak256(abi.encode(key, PENDING_WITHDRAW_AMOUNT))
        );

        uint256 pendingWithdrawShares = fundStorage.getUint256(
            keccak256(abi.encode(key, PENDING_WITHDRAW_SHARES))
        );

        return
            VaultState(
                pps,
                withdrawPoolAmount,
                lastHarvestManagementFeeTime,
                lastHarvestPerformanceFeeTime,
                nav,
                deployedTimestamp,
                highWatermark,
                pendingWithdrawAmount,
                pendingWithdrawShares
            );
    }

    function setVaultState(
        FundStorage fundStorage,
        bytes32 key,
        VaultState memory vaultState
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, PRICE_PER_SHARE)),
            vaultState.pricePerShare
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, WITHDRAW_POOL_AMOUNT)),
            vaultState.withdrawPoolAmount
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, LAST_HARVEST_MANAGEMENT_FEE_TIME)),
            vaultState.lastHarvestManagementFeeTime
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, LAST_HARVEST_PERFORMANCE_FEE_TIME)),
            vaultState.lastHarvestPerformanceFeeTime
        );
        fundStorage.setUint256(keccak256(abi.encode(key, NAV)), vaultState.nav);
        fundStorage.setUint256(
            keccak256(abi.encode(key, DEPLOYED_TIMESTAMP)),
            vaultState.deployedTimestamp
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, HIGH_WATERMARK)),
            vaultState.highWatermark
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, PENDING_WITHDRAW_AMOUNT)),
            vaultState.pendingWithdrawAmount
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, PENDING_WITHDRAW_SHARES)),
            vaultState.pendingWithdrawShares
        );
    }

    function getVaultSetting(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (VaultSetting memory) {
        uint256 minimumSupply = fundStorage.getUint256(
            keccak256(abi.encode(key, MINIMUM_SUPPLY))
        );
        uint256 capacity = fundStorage.getUint256(
            keccak256(abi.encode(key, CAPACITY))
        );
        uint256 performanceFeeRate = fundStorage.getUint256(
            keccak256(abi.encode(key, PERFORMANCE_FEE_RATE))
        );
        uint256 managementFeeRate = fundStorage.getUint256(
            keccak256(abi.encode(key, MANAGEMENT_FEE_RATE))
        );
        uint256 networkCode = fundStorage.getUint256(
            keccak256(abi.encode(key, NETWORK_COST))
        );
        address managementFeeReceiver = fundStorage.getAddress(
            keccak256(abi.encode(key, MANAGEMENT_FEE_RECEIVER))
        );
        address performanceFeeReceiver = fundStorage.getAddress(
            keccak256(abi.encode(key, PERFORMANCE_FEE_RECEIVER))
        );
        return
            VaultSetting(
                minimumSupply,
                capacity,
                performanceFeeRate,
                managementFeeRate,
                managementFeeReceiver,
                performanceFeeReceiver,
                networkCode
            );
    }

    function setVaultSetting(
        FundStorage fundStorage,
        bytes32 key,
        VaultSetting memory vaultSetting
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, MINIMUM_SUPPLY)),
            vaultSetting.minimumSupply
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, CAPACITY)),
            vaultSetting.capacity
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, PERFORMANCE_FEE_RATE)),
            vaultSetting.performanceFeeRate
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, MANAGEMENT_FEE_RATE)),
            vaultSetting.managementFeeRate
        );
        fundStorage.setAddress(
            keccak256(abi.encode(key, MANAGEMENT_FEE_RECEIVER)),
            vaultSetting.managementFeeReceiver
        );
        fundStorage.setAddress(
            keccak256(abi.encode(key, PERFORMANCE_FEE_RECEIVER)),
            vaultSetting.performanceFeeReceiver
        );
        fundStorage.setUint256(
            keccak256(abi.encode(key, NETWORK_COST)),
            vaultSetting.networkCost
        );
    }

    function getPricePerShare(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(keccak256(abi.encode(key, PRICE_PER_SHARE)));
    }

    function setPricePerShare(
        FundStorage fundStorage,
        bytes32 key,
        uint256 pricePerShare
    ) internal returns (uint256) {
        return
            fundStorage.setUint256(
                keccak256(abi.encode(key, PRICE_PER_SHARE)),
                pricePerShare
            );
    }

    function getWithdrawPoolAmount(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, WITHDRAW_POOL_AMOUNT))
            );
    }

    function appendWithdrawPoolAmount(
        FundStorage fundStorage,
        bytes32 key,
        uint256 withdrawPoolAmount
    ) internal {
        BaseStore.appendUint256Prop(
            fundStorage,
            key,
            WITHDRAW_POOL_AMOUNT,
            withdrawPoolAmount
        );
    }

    function deductWithdrawPoolAmount(
        FundStorage fundStorage,
        bytes32 key,
        uint256 withdrawPoolAmount
    ) internal {
        BaseStore.deductUint256Prop(
            fundStorage,
            key,
            WITHDRAW_POOL_AMOUNT,
            withdrawPoolAmount
        );
    }

    function setLastHarvestManagementFeeTime(
        FundStorage fundStorage,
        bytes32 key,
        uint256 lastHarvestManagementFeeTime
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, LAST_HARVEST_MANAGEMENT_FEE_TIME)),
            lastHarvestManagementFeeTime
        );
    }

    function setLastHarvestPerformanceFeeTime(
        FundStorage fundStorage,
        bytes32 key,
        uint256 lastHarvestPerformanceceFeeTime
    ) internal {
        fundStorage.setUint256(
            keccak256(abi.encode(key, LAST_HARVEST_PERFORMANCE_FEE_TIME)),
            lastHarvestPerformanceceFeeTime
        );
    }

    function appendNav(
        FundStorage fundStorage,
        bytes32 key,
        uint256 amount
    ) internal {
        BaseStore.appendUint256Prop(fundStorage, key, NAV, amount);
    }

    function deductNav(
        FundStorage fundStorage,
        bytes32 key,
        uint256 amount
    ) internal {
        BaseStore.deductUint256Prop(fundStorage, key, NAV, amount);
    }

    function setNav(
        FundStorage fundStorage,
        bytes32 key,
        uint256 nav
    ) internal {
        fundStorage.setUint256(keccak256(abi.encode(key, NAV)), nav);
    }

    function getNav(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return fundStorage.getUint256(keccak256(abi.encode(key, NAV)));
    }

    function getManagementFeeRate(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, MANAGEMENT_FEE_RATE))
            );
    }

    function getPerformanceFeeRate(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, PERFORMANCE_FEE_RATE))
            );
    }

    function getLastHarvestManagementFeeTime(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, LAST_HARVEST_MANAGEMENT_FEE_TIME))
            );
    }

    function getLastHarvestPerformanceFeeTime(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, LAST_HARVEST_PERFORMANCE_FEE_TIME))
            );
    }

    function getManagementFeeReceiver(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (address) {
        return
            fundStorage.getAddress(keccak256(abi.encode(key, MANAGEMENT_FEE_RECEIVER)));
    }

    function setManagementFeeReceiver(
        FundStorage fundStorage,
        bytes32 key,
        address managementFeeReceiver
    ) internal {
        fundStorage.setAddress(keccak256(abi.encode(key, MANAGEMENT_FEE_RECEIVER)), managementFeeReceiver);
    }

    function getPerformanceFeeReceiver(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (address) {
        return
            fundStorage.getAddress(keccak256(abi.encode(key, PERFORMANCE_FEE_RECEIVER)));
    }

    function setPerformanceFeeReceiver(
        FundStorage fundStorage,
        bytes32 key,
        address performanceFeeReceiver
    ) internal {
        fundStorage.setAddress(keccak256(abi.encode(key, PERFORMANCE_FEE_RECEIVER)), performanceFeeReceiver);
    }       

    function getDeployedTimestamp(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(keccak256(abi.encode(key, DEPLOYED_TIMESTAMP)));
    }

    function setDeployedTimestamp(
        FundStorage fundStorage,
        bytes32 key,
        uint256 deployedTimestamp
    ) internal {
        fundStorage.setUint256(keccak256(abi.encode(key, DEPLOYED_TIMESTAMP)), deployedTimestamp);
    }

    function getVaultKey(address _vault) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(_vault));
    }

    function getHighWatermark(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(keccak256(abi.encode(key, HIGH_WATERMARK)));
    }

    function setHighWatermark(
        FundStorage fundStorage,
        bytes32 key,
        uint256 highWatermark
    ) internal {
        fundStorage.setUint256(keccak256(abi.encode(key, HIGH_WATERMARK)), highWatermark);
    }

    function appendPendingWithdrawAmount(
        FundStorage fundStorage,
        bytes32 key,
        uint256 pendingWithdrawAmount
    ) internal {
        BaseStore.appendUint256Prop(
            fundStorage,
            key,
            PENDING_WITHDRAW_AMOUNT,
            pendingWithdrawAmount
        );
    }

    function deductPendingWithdrawAmount(
        FundStorage fundStorage,
        bytes32 key,
        uint256 pendingWithdrawAmount
    ) internal {
        BaseStore.deductUint256Prop(
            fundStorage,
            key,
            PENDING_WITHDRAW_AMOUNT,
            pendingWithdrawAmount
        );
    }

    function getPendingWithdrawAmount(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, PENDING_WITHDRAW_AMOUNT))
            );
    }

    function appendPendingWithdrawShares(
        FundStorage fundStorage,
        bytes32 key,
        uint256 pendingWithdrawShares
    ) internal {
        BaseStore.appendUint256Prop(
            fundStorage,
            key,
            PENDING_WITHDRAW_SHARES,
            pendingWithdrawShares
        );
    }

    function deductPendingWithdrawShares(
        FundStorage fundStorage,
        bytes32 key,
        uint256 pendingWithdrawShares
    ) internal {
        BaseStore.deductUint256Prop(
            fundStorage,
            key,
            PENDING_WITHDRAW_SHARES,
            pendingWithdrawShares
        );
    }

    function getPendingWithdrawShares(
        FundStorage fundStorage,
        bytes32 key
    ) internal view returns (uint256) {
        return
            fundStorage.getUint256(
                keccak256(abi.encode(key, PENDING_WITHDRAW_SHARES))
            );
    }
}
