// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title Protocol Constants
 * @author ZeUSD Protocol Team
 * @notice Central source for all protocol constants
 * @dev Single source of truth for contract identifiers and constants
 * @custom:security Constants should never be modified after deployment
 */
library Constants {
    /**
     * @notice Protocol Contract Identifiers
     * @dev Unique identifiers for protocol contracts in registry
     */
    bytes32 public constant CONTRACT_ACCESS_CONTROLLER = keccak256('CONTRACT_ACCESS_CONTROLLER');
    bytes32 public constant CONTRACT_REGISTRY = keccak256('CONTRACT_REGISTRY');
    bytes32 public constant CONTRACT_ZEUSD_TOKEN_OLD = keccak256('CONTRACT_ZEUSD_TOKEN_OLD');
    bytes32 public constant CONTRACT_ZEUSD_TOKEN = keccak256('CONTRACT_ZEUSD_TOKEN');
    bytes32 public constant CONTRACT_ROUTER = keccak256('CONTRACT_ROUTER');
    bytes32 public constant CONTRACT_PRICE_ORACLE = keccak256('CONTRACT_PRICE_ORACLE');
    bytes32 public constant CONTRACT_ZEUSD_CDP = keccak256('CONTRACT_ZEUSD_CDP');
    bytes32 public constant CONTRACT_ZEUSD_CDP_OLD = keccak256('CONTRACT_ZEUSD_CDP_OLD');
    bytes32 public constant CONTRACT_WITHDRAWAL_SYSTEM = keccak256('CONTRACT_WITHDRAWAL_SYSTEM');
    bytes32 public constant CONTRACT_VAULT_REGISTRY = keccak256('CONTRACT_VAULT_REGISTRY');
    bytes32 public constant CONTRACT_USYC_VAULT = keccak256('CONTRACT_USYC_VAULT');
    bytes32 public constant CONTRACT_USYC = keccak256('CONTRACT_USYC');
    bytes32 public constant CONTRACT_USDC = keccak256('CONTRACT_USDC');

    /**
     * @notice Time Constants
     * @dev Standard time periods used throughout the protocol
     */
    uint256 public constant ONE_HOUR = 1 hours;
    uint256 public constant ONE_DAY = 1 days;
    uint256 public constant ONE_WEEK = 7 days;
    uint256 public constant TWO_DAYS = 2 days;
    uint256 public constant TWELVE_HOURS = 12 hours;
    uint256 public constant MAX_DAILY_REQUESTS = 20;

    /**
     * @notice Delay period for emergency actions
     */
    uint256 public constant EMERGENCY_DELAY = 1 hours;
}
