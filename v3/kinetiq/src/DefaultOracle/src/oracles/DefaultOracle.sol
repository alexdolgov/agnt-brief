// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title DefaultOracle
 * @notice Oracle implementation for validator performance metrics
 */
contract DefaultOracle is AccessControl {
    using EnumerableSet for EnumerableSet.AddressSet;

    /* ========== STRUCTS ========== */

    struct ValidatorMetrics {
        uint256 balance;
        uint256 performanceScore; // Single aggregated score (0-10000 basis points)
        uint256 reward;
        uint256 slashing;
        uint256 lastUpdateTime;
        uint256 endBlock;
    }

    /* ========== CONSTANT ========== */

    uint256 public constant BASIS_POINTS = 10000; // 100% in basis points

    /* ========== STATE VARIABLES ========== */

    // Role for updating metrics
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    // Minimum time between updates
    uint256 public constant MIN_UPDATE_INTERVAL = 1 hours;

    // Mapping of validator metrics
    mapping(address => ValidatorMetrics) public validatorMetrics;

    // Set of active validators
    EnumerableSet.AddressSet private _validators;

    /* ========== EVENTS ========== */

    event MetricsUpdated(
        address indexed validator,
        uint256 balance,
        uint256 performanceScore,
        uint256 reward,
        uint256 slashing,
        uint256 endBlock
    );

    /* ========== CONSTRUCTOR ========== */

    constructor(address admin, address operator) {
        require(admin != address(0), "Invalid admin");
        require(operator != address(0), "Invalid operator");

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(OPERATOR_ROLE, operator);
    }

    /* ========== EXTERNAL FUNCTIONS ========== */

    /**
     * @notice Update metrics for a validator
     * @param validator Address of the validator
     * @param balance Current balance
     * @param performanceScore Single aggregated performance score (0-10000 basis points)
     * @param reward Reward amount
     * @param slashing Slashing amount
     * @param endBlock End block number
     */
    function updateValidatorMetrics(
        address validator,
        uint256 balance,
        uint256 performanceScore,
        uint256 reward,
        uint256 slashing,
        uint256 endBlock
    ) external onlyRole(OPERATOR_ROLE) {
        require(validator != address(0), "Invalid validator");
        require(performanceScore <= BASIS_POINTS, "Performance score exceeds BASIS_POINTS");

        ValidatorMetrics memory metrics = validatorMetrics[validator];
        require(block.timestamp >= metrics.lastUpdateTime + MIN_UPDATE_INTERVAL, "Update too frequent");

        validatorMetrics[validator] = ValidatorMetrics({
            balance: balance,
            performanceScore: performanceScore,
            reward: reward,
            slashing: slashing,
            lastUpdateTime: block.timestamp,
            endBlock: endBlock
        });

        _validators.add(validator);

        emit MetricsUpdated(validator, balance, performanceScore, reward, slashing, endBlock);
    }

    /**
     * @notice Get metrics for a validator
     * @param validator Address of the validator
     */
    function getValidatorMetrics(address validator)
        external
        view
        returns (uint256 balance, uint256 performanceScore, uint256 reward, uint256 slashing, uint256 timestamp)
    {
        ValidatorMetrics memory metrics = validatorMetrics[validator];
        return (metrics.balance, metrics.performanceScore, metrics.reward, metrics.slashing, metrics.lastUpdateTime);
    }

    /**
     * @notice Get all active validators
     */
    function getValidators() external view returns (address[] memory) {
        return _validators.values();
    }

    /**
     * @notice Check if a validator has metrics
     */
    function hasMetrics(address validator) external view returns (bool) {
        return _validators.contains(validator);
    }
}
