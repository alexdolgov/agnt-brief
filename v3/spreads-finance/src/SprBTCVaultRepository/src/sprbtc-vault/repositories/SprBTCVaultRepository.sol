// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {BaseContract} from "common-contracts/base-contracts/BaseContract.sol";
import {KeyHelper} from "common-contracts/utils/libs/KeyHelper.sol";
import {ISprBTCVaultRepository} from "./ISprBTCVaultRepository.sol";
import "../constants/Tables.sol";

contract SprBTCVaultRepository is ISprBTCVaultRepository, BaseContract {
    constructor(address _beaconAddress) BaseContract(_beaconAddress) {}

    // ==================== SETTERS ====================

    function setWBTCToken(address token) external onlySystem {
        require(token != address(0), "Invalid token");
        dataStore.setAddress(SPRBTC_COLLATERAL_TABLE, KeyHelper.toKey("wbtcToken"), token);
    }

    function setCustodian(address custodian) external onlySystem {
        require(custodian != address(0), "Invalid custodian");
        dataStore.setAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("custodian"), custodian);
    }

    function setTreasury(address treasury) external onlySystem {
        require(treasury != address(0), "Invalid treasury");
        dataStore.setAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("treasury"), treasury);
    }

    function setDepositFee(uint256 fee) external onlySystem {
        require(fee <= 1e18, "Fee too high");
        dataStore.setUint(SPRBTC_FEE_TABLE, KeyHelper.toKey("depositFee"), fee);
    }

    function setWithdrawalFee(uint256 fee) external onlySystem {
        require(fee <= 1e18, "Fee too high");
        dataStore.setUint(SPRBTC_FEE_TABLE, KeyHelper.toKey("withdrawalFee"), fee);
    }

    function setExchangeRate(uint256 rate, uint256 timestamp) external onlySystem {
        require(rate > 0, "Invalid rate");
        dataStore.setUint(SPRBTC_EXCHANGE_RATE_TABLE, KeyHelper.toKey("rate"), rate);
        dataStore.setUint(SPRBTC_EXCHANGE_RATE_TABLE, KeyHelper.toKey("lastUpdated"), timestamp);
    }

    function setMaxQueueSize(uint256 maxSize) external onlySystem {
        require(maxSize > 0, "Invalid size");
        dataStore.setUint(SPRBTC_QUEUE_TABLE, KeyHelper.toKey("maxQueueSize"), maxSize);
    }

    function setMinimumDeposit(uint256 amount) external onlySystem {
        dataStore.setUint(SPRBTC_CONFIG_TABLE, KeyHelper.toKey("minimumDeposit"), amount);
    }

    function setMinimumWithdrawal(uint256 amount) external onlySystem {
        dataStore.setUint(SPRBTC_CONFIG_TABLE, KeyHelper.toKey("minimumWithdrawal"), amount);
    }

    function setRewardDistributor(address distributor) external onlySystem {
        require(distributor != address(0), "Invalid distributor");
        dataStore.setAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("rewardDistributor"), distributor);
    }

    // ==================== GETTERS ====================

    function getWBTCToken() external view returns (address) {
        return dataStore.getAddress(SPRBTC_COLLATERAL_TABLE, KeyHelper.toKey("wbtcToken"));
    }

    function getCustodian() external view returns (address) {
        return dataStore.getAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("custodian"));
    }

    function getTreasury() external view returns (address) {
        address treasury = dataStore.getAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("treasury"));
        // If treasury not set, return custodian as default
        if (treasury == address(0)) {
            return dataStore.getAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("custodian"));
        }
        return treasury;
    }

    function getDepositFee() external view returns (uint256) {
        return dataStore.getUint(SPRBTC_FEE_TABLE, KeyHelper.toKey("depositFee"));
    }

    function getWithdrawalFee() external view returns (uint256) {
        return dataStore.getUint(SPRBTC_FEE_TABLE, KeyHelper.toKey("withdrawalFee"));
    }

    function getExchangeRate() external view returns (uint256 rate, uint256 lastUpdated) {
        rate = dataStore.getUint(SPRBTC_EXCHANGE_RATE_TABLE, KeyHelper.toKey("rate"));
        lastUpdated = dataStore.getUint(SPRBTC_EXCHANGE_RATE_TABLE, KeyHelper.toKey("lastUpdated"));
    }

    function getMaxQueueSize() external view returns (uint256) {
        uint256 maxSize = dataStore.getUint(SPRBTC_QUEUE_TABLE, KeyHelper.toKey("maxQueueSize"));
        return maxSize > 0 ? maxSize : 1000; // Default 1000
    }

    function getMinimumDeposit() external view returns (uint256) {
        return dataStore.getUint(SPRBTC_CONFIG_TABLE, KeyHelper.toKey("minimumDeposit"));
    }

    function getMinimumWithdrawal() external view returns (uint256) {
        return dataStore.getUint(SPRBTC_CONFIG_TABLE, KeyHelper.toKey("minimumWithdrawal"));
    }

    function getRewardDistributor() external view returns (address) {
        return dataStore.getAddress(SPRBTC_ADDRESSES_TABLE, KeyHelper.toKey("rewardDistributor"));
    }
}
