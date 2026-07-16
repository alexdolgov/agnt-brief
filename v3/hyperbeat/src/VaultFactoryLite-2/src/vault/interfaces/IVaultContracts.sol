// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { MultiRolesAuthority } from "solmate/auth/authorities/MultiRolesAuthority.sol";
import { ExchangeRateUpdater } from "../ExchangeRateUpdater.sol";

/**
 * @title IVaultContracts
 * @notice Interface definitions for all vault system contracts
 * @dev Used to reduce bytecode size in VaultFactory while maintaining functionality
 */

interface IVaultToken {
    function setAuthority(MultiRolesAuthority authority) external;
}

interface IPricer {
    function setAuthority(MultiRolesAuthority authority) external;
    function updateDepositReceiver(address depositReceiver) external;
    function baseAsset() external view returns (address);
    function setAssetConfig(address token, address priceProvider) external;
}

interface IDepositReceiver {
    function setAuthority(MultiRolesAuthority authority) external;
    function setWithdrawalQueue(address withdrawalQueue) external;
    function setPricer(address pricer) external;
    function setDnCoreWriter(address dnCoreWriter, bool enabled) external;
}

interface IDepositor {
    function setAuthority(MultiRolesAuthority authority) external;
    function toggleDepositToken(address token, bool enabled) external;
}

interface IWithdrawalQueue {
    function setAuthority(MultiRolesAuthority authority) external;
}

interface IExchangeRateUpdater {
    function setAuthority(MultiRolesAuthority authority) external;
}

interface IDnCoreWriterVault {
    function setWithdrawalQueue(address withdrawalQueue) external;
    function toggleWithdrawalToken(address token) external;
    function grantRole(bytes32 role, address account) external;
    function revokeRole(bytes32 role, address account) external;
    function ADMIN_ROLE() external view returns (bytes32);
    function WITHDRAWAL_ROLE() external view returns (bytes32);
    function BRIDGE_ROLE() external view returns (bytes32);
    function TRADING_AGENT_ROLE() external view returns (bytes32);
}

// Struct definitions for deployment parameters
library VaultStructs {
    struct PricerAssetConfig {
        address token;
        address priceProvider;
    }

    struct DepositTokenConfig {
        address token;
        bool enabled;
    }

    struct RoleAssignments {
        address finalAdmin;
        address solver;
        address allocator;
        address exchangeRateUpdater;
        address feeClaimer;
    }

    struct DeploymentParams {
        string vaultTokenName;
        string vaultTokenSymbol;
        address baseAsset;
        address feeRecipient;
        uint16 upperBound;
        uint16 lowerBound;
        uint24 minUpdateDelay;
        uint16 managementFee;
        uint16 performanceFee;
        ExchangeRateUpdater.SpotPositionConfig[] spotConfigs;
        ExchangeRateUpdater.AssetConfig[] exchangeRateAssetConfigs;
        address usdcToBaseAssetAggregator;
        PricerAssetConfig[] pricerAssetConfigs;
        DepositTokenConfig[] depositTokenConfigs;
        RoleAssignments roles;
    }

    struct DeployedContracts {
        MultiRolesAuthority authority;
        IVaultToken vaultToken;
        IPricer pricer;
        IDepositReceiver depositReceiver;
        IDepositor depositor;
        IWithdrawalQueue withdrawalQueue;
        IDnCoreWriterVault dnCoreWriter;
        IExchangeRateUpdater exchangeRateUpdater;
    }
}