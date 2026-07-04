// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// Allows anyone to claim a token if they exist in a merkle root.
interface IAllocateRegister {
    struct AllocateMsg {
        address tranche;
        address owner;
        int256 amount;
    }

    /// @notice Emitted when list Tranche.
    /// @param tranche The address of the tranche.
    event TrancheListed(address indexed tranche);

    /// @notice Emitted when unlist Tranche.
    /// @param tranche The address of the tranche.
    event TrancheUnListed(address indexed tranche);

    /// @notice Emitted when allocate user's stake points to Tranche.
    /// @param tranche The address of the tranche.
    /// @param amount The amount to allocated.
    /// @param totalAmount The total amount to owner.
    event Allocated(address indexed tranche, address indexed owner, uint256 amount, uint256 totalAmount, uint256 totalAllocated);

    /// @notice Emitted when unallocate user's stake points in Tranche.
    /// @param tranche The address of the tranche.
    /// @param amount The amount to unallocated.
    /// @param totalAmount The total amount to owner.
    event UnAllocated(address indexed tranche, address indexed owner, uint256 amount, uint256 totalAmount, uint256 totalAllocated);

    // @returns address: the address of the tranche registered by this contract
    // @returns uint256: tranches length after added.
    function listTranche(address tranche) external returns (address, uint256);
    // @returns address: the address of the tranche removed by this contract
    // @returns uint256: tranches length after removed.
    function removeTranche(address tranche) external returns (address, uint256);
    // @returns uint256: the length of registered tranches.
    // @returns address[]: the address of registered tranches.
    function listTranches() external view returns (uint256, address[] memory);
    // @returns uint256: the allocated point by given tranche and owner
    function getAllocated(address tranche, address owner) external returns (uint256);
    // @returns address[]: the allocated users by tranche
    function getAllocatedUsers(address tranche) external view returns (address[] memory);
    // @returns the tranche address, amount allocated, amount after allocated, amount user total allocated all tranche.
    function allocate(address tranche, address owner, uint256 amount) external returns (address, uint256, uint256, uint256);
    // @returns the tranche address, amount unallocated, amount after unallocated, amount user total allocated all tranche.
    function unallocate(address tranche, address owner, uint256 amount) external returns (address, uint256, uint256, uint256);
    // @returns true when all allocation works fine, numbers allocation not processed.
    function changeAllocate(AllocateMsg[] memory msgs) external;
}
