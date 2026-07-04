// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface IAerodromePortfolioOracle {
    /// STRUCTS ///

    /// @notice Information about a tracked Aerodrome pool.
    /// @param isClPool True if the pool is a Concentrated Liquidity pool, false if it's a V2 pool
    /// @param pool Address of the Aerodrome pool contract
    struct PoolInfo {
        bool isClPool;
        address pool;
    }

    /// EVENTS ///

    /// @notice Emitted when a pool is added to tracking.
    /// @param pool Address of the added pool.
    /// @param isCLPool Whether the pool is a CLPool.
    event AddedPool(address pool, bool isCLPool);
    /// @notice Emitted when a pool is removed from tracking.
    /// @param pool Address of the removed pool.
    event RemovedPool(address pool);
    /// @notice Emitted when a bribe token is added to tracking.
    /// @param bribeToken Address of the added bribe token.
    event AddedBribeToken(address bribeToken);
    /// @notice Emitted when a bribe token is removed from tracking.
    /// @param token Address of the removed bribe token.
    event RemovedBribeToken(address token);

    /// ERRORS ///

    /// @notice Thrown when the system is unable to determine the price of a given asset.
    error AeraPeriphery__CantPriceAsset(address asset);
    /// @notice Thrown when attempting to use an ERC4626 vault in an unsupported operation.
    error AeraPeriphery__ERC4626NotAllowed();
    /// @notice Thrown when attempting to add a pool that has already been added at the specified index.
    error AeraPeriphery__PoolAlreadyAdded(uint256 index);
    /// @notice Thrown when a function restricted to vault owners is called by a non-owner address.
    error AeraPeriphery__CallerIsNotVaultOwner();
    /// @notice Thrown when attempting to add a bribe token that has already been added at the specified index.
    error AeraPeriphery__BribeTokenAlreadyAdded(uint256 index);
    /// @notice Thrown when the Voter address provided is the zero address.
    error AeraPeriphery__VoterIsZeroAddress();
    /// @notice Thrown when the SugarHelper address provided is the zero address.
    error AeraPeriphery__SugarHelperIsZeroAddress();
    /// @notice Thrown when the PositionManager address provided is the zero address.
    error AeraPeriphery__PositionManagerIsZeroAddress();
    /// @notice Thrown when the CLPoolFactory address provided is the zero address.
    error AeraPeriphery__CLPoolFactoryIsZeroAddress();
    /// @notice Thrown when the RewardsDistributor address provided is the zero address.
    error AeraPeriphery__RewardsDistributorIsZeroAddress();
    /// @notice Thrown when the AERO token address provided is the zero address.
    error AeraPeriphery__AeroIsZeroAddress();
    /// @notice Thrown when the VotingEscrow address provided is the zero address.
    error AeraPeriphery__VotingEscrowIsZeroAddress();
    /// @notice Thrown when a pool has a non-zero value.
    error AeraPeriphery__PoolHasValue(uint256 amount0, uint256 amount1, uint256 emissions);

    /// FUNCTIONS ///

    /// @notice Adds a pool to tracking.
    /// @param pool Address of the pool to add.
    /// @param isCLPool Whether the pool is a CLPool.
    function addPool(address pool, bool isCLPool) external;
    /// @notice Removes a pool from tracking.
    /// @param index Index of the pool to remove.
    function removePool(uint256 index) external;
    /// @notice Adds a bribe token to tracking.
    /// @param token Address of the bribe token to add.
    function addBribeToken(address token) external;
    /// @notice Removes a bribe token from tracking.
    /// @param index Index of the bribe token to remove.
    function removeBribeToken(uint256 index) external;
    /// @notice Returns all pools being tracked.
    /// @return pools All pools being tracked.
    function getAllPools() external view returns (PoolInfo[] memory pools);
    /// @notice Returns all bribe tokens being tracked.
    /// @return bribeTokens All bribe tokens being tracked.
    function getAllBribeTokens() external view returns (address[] memory bribeTokens);
}
