// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC165} from "openzeppelin/utils/introspection/IERC165.sol";

bytes4 constant SupportedInterfaceId = 0x13b6f9a5;

/// @notice Allocate staking points to tranche.
interface IAllocate is IERC165 {

    /// @notice Emitted when allocate user's stake points to Tranche.
    /// @param user The address of the allocate owner.
    /// @param amount The amount owner allocated by tx.
    /// @param totalAmount The total amount to owner.
    /// @param totalAllocated The total allocated amount for all.
    event Allocated(address indexed user, uint256 amount, uint256 totalAmount, uint256 totalAllocated);

    /// @notice Emitted when unallocate user's stake points in Tranche.
    /// @param user The address of the allocate owner.
    /// @param amount The amount owner allocated by tx.
    /// @param totalAmount The total amount to owner.
    /// @param totalAllocated The total allocated amount for all.
    event UnAllocated(address indexed user, uint256 amount, uint256 totalAmount, uint256 totalAllocated);

    /// @notice Add a new allocation to owner
    /// @param user The address of the allocation owner
    /// @param amount The amount allocated
    function allocate(address user, uint256 amount) external;

    /// @notice Add a new unallocation to owner
    /// @param user The address of the unallocation owner
    /// @param amount The amount unallocated
    function unallocate(address user, uint256 amount) external;

    /// @notice show user's allocation capacity
    function capacity() view external returns (int256);
}

interface IAllocateYield is IAllocate {
    /// @notice query yield rewards by user
    /// @param account The address of the unallocation owner
    function earned(address account) view external returns (uint256);

    /// @notice claim yield rewards
    /// @param account The address of the unallocation owner
    function getReward(address account) external returns (uint256);
}