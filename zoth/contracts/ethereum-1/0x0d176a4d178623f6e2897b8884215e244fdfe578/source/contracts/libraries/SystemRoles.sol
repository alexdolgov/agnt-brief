// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
import '../utils/Constants.sol';

/**
 * @title System Roles
 * @notice Defines roles and their configurations
 * @dev Uses constants from main Constants library
 * @author ZeUSD Protocol Team
 * @custom:security-contact paras@zoth.io
 */
library SystemRoles {
    // Core Administrative Roles
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant EMERGENCY_ROLE = keccak256('EMERGENCY_ROLE');
    bytes32 public constant UPGRADER_ROLE = keccak256('UPGRADER_ROLE');
    bytes32 public constant WITHDRAWAL_MANAGER_ROLE = keccak256('WITHDRAWAL_MANAGER_ROLE');

    // Vault Management Roles
    bytes32 public constant VAULT_ADMIN_ROLE = keccak256('VAULT_ADMIN_ROLE');
    bytes32 public constant ASSET_MANAGER_ROLE = keccak256('ASSET_MANAGER_ROLE');

    // Risk & Control Roles
    bytes32 public constant RISK_CONTROLLER_ROLE = keccak256('RISK_CONTROLLER_ROLE');
    bytes32 public constant LIQUIDATOR_ROLE = keccak256('LIQUIDATOR_ROLE');
    bytes32 public constant PRICE_ADMIN_ROLE = keccak256('PRICE_ADMIN_ROLE');

    // Rewards & Incentives
    bytes32 public constant REWARD_MANAGER_ROLE = keccak256('REWARD_MANAGER_ROLE');

    /**
     * @notice Role configuration data structure
     * @param adminRole Role that can grant/revoke this role
     * @param timelock Required delay for critical operations
     * @param requiresConsensus Whether consensus is required
     * @param revocable Whether role can be revoked
     * @param pausable Whether role can be paused
     */
    struct RoleConfig {
        bytes32 adminRole;
        uint256 timelock;
        bool requiresConsensus;
        bool revocable;
        bool pausable;
    }

    /**
     * @notice Permission configuration data structure
     * @param role Role identifier
     * @param functionSig Function signature
     * @param enabled Whether permission is active
     * @param restrictions Additional restrictions (bitmap)
     */
    struct Permission {
        bytes32 role;
        bytes4 functionSig;
        bool enabled;
        uint256 restrictions;
    }

    /**
     * @notice Returns DEFAULT_ADMIN_ROLE configuration
     * @dev Highest authority, requires consensus and delay
     */
    function getDefaultAdminConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.TWO_DAYS,
                requiresConsensus: true,
                revocable: false,
                pausable: false
            });
    }

    /**
     * @notice Returns EMERGENCY_ROLE configuration
     * @dev Quick response role, no delay but revocable
     */
    function getEmergencyConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: 0,
                requiresConsensus: false,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns UPGRADER_ROLE configuration
     * @dev Contract upgrade role, requires consensus
     */
    function getWithdrawalManagerConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.ONE_DAY,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns UPGRADER_ROLE configuration
     * @dev Contract upgrade role, requires consensus
     */
    function getUpgraderConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.ONE_DAY,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns VAULT_ADMIN_ROLE configuration
     * @dev Vault management role with delay
     */
    function getVaultAdminConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.ONE_DAY,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns ASSET_MANAGER_ROLE configuration
     * @dev Asset management under vault admin
     */
    function getAssetManagerConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: VAULT_ADMIN_ROLE,
                timelock: Constants.TWELVE_HOURS,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns RISK_CONTROLLER_ROLE configuration
     * @dev Risk parameter management role
     */
    function getRiskControllerConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.TWELVE_HOURS,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns LIQUIDATOR_ROLE configuration
     * @dev Liquidation execution role, no delay
     */
    function getLiquidatorConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: RISK_CONTROLLER_ROLE,
                timelock: 0,
                requiresConsensus: false,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns PRICE_ADMIN_ROLE configuration
     * @dev Oracle management role
     */
    function getPriceAdminConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.TWELVE_HOURS,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }

    /**
     * @notice Returns REWARD_MANAGER_ROLE configuration
     * @dev Rewards management role
     */
    function getRewardManagerConfig() internal pure returns (RoleConfig memory) {
        return
            RoleConfig({
                adminRole: DEFAULT_ADMIN_ROLE,
                timelock: Constants.ONE_DAY,
                requiresConsensus: true,
                revocable: true,
                pausable: true
            });
    }
}
