// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";

/// @title ILaunchpadPositionFactory
/// @notice Interface for the LimitedPositionFactory contract
interface ILaunchpadPositionFactory {
    /// @notice Information about a deployed manager
    struct ManagerInfo {
        address manager;
        address owner;
        uint256 deployedAt;
    }

    /// @notice Emitted when a new LimitedPositionManager is deployed
    event ManagerDeployed(address indexed manager, address indexed owner, PoolKey poolKey);

    /// @notice Emitted when min rebalance parameters are updated
    event MinParamsUpdated(uint256 minTicksLeft, uint256 minTicksRight);

    /// @notice Emitted when fee recipient is updated
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Emitted when LaunchpadOrderBookFactory is set
    event LaunchpadOrderBookFactorySet(address indexed launchpadOrderBookFactory);

    /// @notice Get the fee recipient address
    /// @return address The fee recipient
    function feeRecipient() external view returns (address);

    /// @notice Get minimum ticks left for rebalancing
    /// @return uint256 Minimum ticks left
    function minTicksLeft() external view returns (uint256);

    /// @notice Get minimum ticks right for rebalancing
    /// @return uint256 Minimum ticks right
    function minTicksRight() external view returns (uint256);

    /// @notice Deploy LaunchpadPositionManager, deposit liquidity, and rebalance in one atomic transaction
    /// @dev Auto-generates manager name as "LaunchpadManager-{counter}" and uses hardcoded UniformStrategy
    /// @param poolKey The pool key for the Uniswap V4 pool
    /// @param managerOwner The owner of the new LaunchpadPositionManager
    /// @param deposit0Desired Amount of token0 to deposit
    /// @param deposit1Desired Amount of token1 to deposit
    /// @param to Address to receive the LP shares
    /// @param from Address to pull tokens from (must have approved the manager)
    /// @param inMin Minimum amounts for each position (slippage protection)
    /// @return mpm Address of the deployed LaunchpadPositionManager
    function deployDepositAndRebalance(
        PoolKey memory poolKey,
        address managerOwner,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        address from,
        uint256[2][] memory inMin
    ) external payable returns (address mpm);

    /// @notice Update minimum rebalance parameters
    /// @param _minTicksLeft New minimum ticks left
    /// @param _minTicksRight New minimum ticks right
    function updateMinParams(uint256 _minTicksLeft, uint256 _minTicksRight) external;

    /// @notice Set the fee recipient
    /// @param _feeRecipient New fee recipient address
    function setFeeRecipient(address _feeRecipient) external;

    /// @notice Set the LaunchpadOrderBookFactory address
    /// @dev Used to break circular dependency during deployment
    /// @param _launchpadOrderBookFactory LaunchpadOrderBookFactory address
    function setLaunchpadOrderBookFactory(address _launchpadOrderBookFactory) external;

    /// @notice Get CLAIM_MANAGER role hash
    /// @return bytes32 The claim manager role
    function CLAIM_MANAGER() external view returns (bytes32);

    /// @notice Get FEE_MANAGER role hash
    /// @return bytes32 The fee manager role
    function FEE_MANAGER() external pure returns (bytes32);

    /// @notice Check if account has role or is owner
    /// @param role The role to check
    /// @param account The account to check
    /// @return bool True if account has role or is owner
    function hasRoleOrOwner(bytes32 role, address account) external view returns (bool);

    /// @notice Check if account has role
    /// @param role The role to check
    /// @param account The account to check
    /// @return bool True if account has role
    function hasRole(bytes32 role, address account) external view returns (bool);
}
