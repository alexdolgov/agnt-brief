// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

struct Allocation {
    address asset;
    address recipient;
    uint256 amount;
}

interface IRewardVault {
    event AddAllocation(address indexed asset, address recipient, uint256 amount);
    event RemoveAllocation(address indexed asset, address recipient, uint256 amount);
    event TransferAllocatedTokens(address indexed asset, address receiver, uint256 amount);
    event CollectAllocatedTokens(address indexed asset, address receiver, uint256 amount);
    event CollectUnderlying(address indexed asset, address receiver, uint256 amount);

    /// @notice Maps assets to their allocated amounts for each recipient
    /// @param asset The address of the asset
    /// @param recipient The address of the recipient
    /// @return The allocated amount for the specified asset and recipient
    function allocated(address asset, address recipient) external view returns (uint256);

    /// @notice Maps assets to their collected amounts for each recipient
    /// @param asset The address of the asset
    /// @param recipient The address of the recipient
    /// @return The collected amount for the specified asset and recipient
    function collected(address asset, address recipient) external view returns (uint256);

    /// @notice Initializes the contract
    /// @dev This function is called only once during deployment
    function initialize() external;

    /// @notice Adds allocations to the vault
    /// @param allocations An array of Allocation structs containing the asset, recipient, and amount
    function addAllocation(Allocation[] calldata allocations) external;

    /// @notice Removes allocations from the vault
    /// @param allocations An array of Allocation structs containing the asset, recipient, and amount
    function removeAllocation(Allocation[] calldata allocations) external;

    /// @notice Transfers allocated tokens to a receiver
    /// @param asset The address of the asset to transfer
    /// @param receiver The address of the receiver
    /// @param amount The amount of tokens to transfer
    function transferAllocatedTokens(address asset, address receiver, uint256 amount) external;

    /// @notice Collects allocated tokens
    /// @param asset The address of the asset to collect
    /// @param amount The amount of tokens to collect
    function collectAllocatedTokens(address asset, uint256 amount) external;

    /// @notice Collects underlying tokens
    /// @param asset The address of the asset to collect
    /// @param amount The amount of tokens to collect
    function collectUnderlying(address asset, uint256 amount) external;
}
