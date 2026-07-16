// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";

/**
 * @title PayoutTokenRegistry
 * @notice Tracks the set of tokens that contribute to reserves and manages the active payout token.
 * @dev Pricing is delegated to {PriceRouter}; this contract only records eligibility and schedules switches.
 *
 * - `valueTokens`: tokens whose balances count toward total redemption reserves.
 * - `activePayoutToken`: token actually paid out by redemption modules.
 * - `scheduledPayoutToken`: pending token to become active at next UTC midnight (`switchTime`).
 *
 * **Security considerations**
 * - Only authorized operators (via {AccessManaged}) may configure or switch tokens.
 * - `emergencySwitch` bypasses the schedule and should be protected by a guardian role.
 */
contract PayoutTokenRegistry is AccessManaged {
    // ============ Constants ============
    // Role identifiers for backward compatibility (informational only)
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");

    uint256 public constant MAX_VALUE_TOKENS = 20;
    uint256 private constant SECONDS_PER_DAY = 86400;

    // ============ Types ============
    struct TokenConfig {
        bool inValueSet; // Contributes to total value
        bool payoutEligible; // Can be active payout token
    }

    // ============ State ============
    mapping(address => TokenConfig) public tokenConfigs;
    address[] public valueTokens;

    address public activePayoutToken;
    address public scheduledPayoutToken;
    uint256 public switchTime;

    // ============ Events ============
    event TokenConfigured(address indexed token, bool inValueSet, bool payoutEligible);
    event TokenRemoved(address indexed token);
    event PayoutTokenScheduled(address indexed token, uint256 switchTime);
    event PayoutTokenSwitched(address indexed previousToken, address indexed newToken);
    event EmergencySwitch(address indexed token);

    // ============ Errors ============
    error InvalidToken();
    error TokenNotConfigured();
    error TokenNotEligible();
    error TooSoonToSwitch();
    error NoScheduledSwitch();
    error AlreadyActive();
    error TooManyTokens();
    error CannotRemoveActiveToken();
    error CannotRemoveScheduledToken();

    // ============ Constructor ============

    /**
     * @notice Initialize the registry with AccessManager
     * @param _accessManager Address of the AccessManager contract
     */
    constructor(address _accessManager) AccessManaged(_accessManager) {
        // Role setup is handled in AccessManager
    }

    // ============ Admin Functions ============

    /**
     * @notice Configure a token's value set and payout eligibility
     * @param token Token address
     * @param inValueSet Whether token contributes to total value
     * @param payoutEligible Whether token can be active payout token
     */
    function setTokenConfig(address token, bool inValueSet, bool payoutEligible)
        external
        restricted
    {
        if (token == address(0)) revert InvalidToken();

        TokenConfig memory oldConfig = tokenConfigs[token];

        // Handle value set changes
        if (inValueSet && !oldConfig.inValueSet) {
            // Adding to value set
            if (valueTokens.length >= MAX_VALUE_TOKENS) revert TooManyTokens();
            valueTokens.push(token);
        } else if (!inValueSet && oldConfig.inValueSet) {
            // Removing from value set
            _removeFromValueSet(token);
        }

        tokenConfigs[token] = TokenConfig(inValueSet, payoutEligible);
        emit TokenConfigured(token, inValueSet, payoutEligible);
    }

    /**
     * @notice Remove a token entirely
     * @param token Token to remove
     */
    function removeToken(address token) external restricted {
        if (token == activePayoutToken) revert CannotRemoveActiveToken();
        if (token == scheduledPayoutToken) revert CannotRemoveScheduledToken();

        if (tokenConfigs[token].inValueSet) {
            _removeFromValueSet(token);
        }

        delete tokenConfigs[token];
        emit TokenRemoved(token);
    }

    /**
     * @notice Schedule a payout token change for next UTC midnight
     * @param token Token to become active payout
     */
    function schedulePayoutToken(address token) external restricted {
        TokenConfig memory config = tokenConfigs[token];
        if (!config.inValueSet && !config.payoutEligible) revert TokenNotConfigured();
        if (!config.payoutEligible) revert TokenNotEligible();
        if (token == activePayoutToken) revert AlreadyActive();

        // Schedule for next UTC midnight
        uint256 currentDay = block.timestamp / SECONDS_PER_DAY;
        uint256 nextMidnight = (currentDay + 1) * SECONDS_PER_DAY;

        scheduledPayoutToken = token;
        switchTime = nextMidnight;

        emit PayoutTokenScheduled(token, nextMidnight);
    }

    /**
     * @notice Execute scheduled payout token switch
     * @dev Callable by anyone after switchTime
     */
    function executeSwitch() external {
        if (block.timestamp < switchTime) revert TooSoonToSwitch();
        if (scheduledPayoutToken == address(0)) revert NoScheduledSwitch();

        // Validate token is STILL eligible
        TokenConfig memory config = tokenConfigs[scheduledPayoutToken];
        if (!config.payoutEligible) revert TokenNotEligible();

        address previousToken = activePayoutToken;
        activePayoutToken = scheduledPayoutToken;
        scheduledPayoutToken = address(0);
        switchTime = 0;

        emit PayoutTokenSwitched(previousToken, activePayoutToken);
    }

    /**
     * @notice Emergency switch to new payout token
     * @param token Token to activate immediately
     */
    function emergencySwitch(address token) external restricted {
        TokenConfig memory config = tokenConfigs[token];
        if (!config.payoutEligible) revert TokenNotEligible();

        address previousToken = activePayoutToken;
        activePayoutToken = token;

        // Clear any scheduled switch
        scheduledPayoutToken = address(0);
        switchTime = 0;

        emit EmergencySwitch(token);
        emit PayoutTokenSwitched(previousToken, token);
    }

    // ============ View Functions ============

    /**
     * @notice Check if token is in value set
     * @param token Token to check
     * @return True if token contributes to total value
     */
    function isValueToken(address token) external view returns (bool) {
        return tokenConfigs[token].inValueSet;
    }

    /**
     * @notice Check if token can be payout token
     * @param token Token to check
     * @return True if eligible for payout
     */
    function isPayoutEligible(address token) external view returns (bool) {
        return tokenConfigs[token].payoutEligible;
    }

    /**
     * @notice Get all value tokens
     * @return Array of tokens in value set
     */
    function getValueTokens() external view returns (address[] memory) {
        return valueTokens;
    }

    /**
     * @notice Get value token count
     * @return Number of tokens in value set
     */
    function getValueTokenCount() external view returns (uint256) {
        return valueTokens.length;
    }

    // ============ Internal Functions ============

    /**
     * @notice Remove token from value tokens array
     * @param token Token to remove
     */
    function _removeFromValueSet(address token) private {
        uint256 length = valueTokens.length;
        for (uint256 i; i < length; i++) {
            if (valueTokens[i] == token) {
                valueTokens[i] = valueTokens[length - 1];
                valueTokens.pop();
                return;
            }
        }
    }
}
