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
    bytes32 public constant CONTRACT_ZEUSD = keccak256('CONTRACT_ZEUSD');
    bytes32 public constant CONTRACT_ROUTER = keccak256('CONTRACT_ROUTER');
    bytes32 public constant CONTRACT_TREASURY = keccak256('CONTRACT_TREASURY');
    bytes32 public constant CONTRACT_ORACLE = keccak256('CONTRACT_ORACLE');
    bytes32 public constant CONTRACT_DEPOSIT_NFT = keccak256('CONTRACT_DEPOSIT_NFT');
    bytes32 public constant CONTRACT_WITHDRAWAL_SYSTEM = keccak256('CONTRACT_WITHDRAWAL_SYSTEM');

    /**
     * @notice Time Constants
     * @dev Standard time periods used throughout the protocol
     */
    uint256 public constant ONE_HOUR = 1 hours;
    uint256 public constant ONE_DAY = 1 days;
    uint256 public constant ONE_WEEK = 7 days;
    uint256 public constant TWO_DAYS = 2 days;
    uint256 public constant TWELVE_HOURS = 12 hours;

    /**
     * @notice Protocol Parameters
     * @dev Governance and operational limits
     */
    /// @notice Maximum number of roles a single account can hold
    uint256 public constant MAX_ROLES_PER_ACCOUNT = 10;

    /// @notice Maximum number of members that can be assigned to a role
    uint256 public constant MAX_MEMBERS_PER_ROLE = 50;

    /// @notice Percentage threshold required for consensus decisions (66%)
    uint256 public constant CONSENSUS_THRESHOLD = 66;

    /// @notice Delay period for emergency actions
    uint256 public constant EMERGENCY_DELAY = 1 hours;
}
