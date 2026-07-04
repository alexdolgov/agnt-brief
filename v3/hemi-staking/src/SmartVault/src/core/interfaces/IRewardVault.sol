// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

struct Allocation {
    IERC20 asset;
    address recipient;
    uint256 amount;
}

interface IRewardVault {
    event TransferAllocatedTokens(
        IERC20 indexed asset, address indexed owner, address indexed recipient, uint256 amount
    );
    event AddAllocation(IERC20 indexed asset, address indexed recipient, uint256 amount);
    event RemoveAllocation(IERC20 indexed asset, address indexed recipient, uint256 amount);
    event CollectAllocatedTokens(IERC20 indexed asset, address indexed recipient, uint256 amount);
    event CollectUnderlying(IERC20 indexed asset, address indexed recipient, uint256 amount);

    error InSufficientBalance(uint256 balance, uint256 amount);

    /**
     * @notice Initialize the contract
     */
    function initialize() external;

    /**
     * @notice Transfer allocated tokens to the recipient
     * @param allocation Allocation struct
     */
    function transferAllocatedTokens(Allocation calldata allocation) external;

    /**
     * @notice Add allocated tokens to the recipient
     * @param allocations Array of Allocation structs
     */
    function addAllocated(Allocation[] calldata allocations) external;

    /**
     * @notice Remove allocated tokens from the recipient
     * @param allocations Array of Allocation structs
     */
    function removeAllocated(Allocation[] calldata allocations) external;

    /**
     * @notice amount of asset allocated to the recipient
     * @param asset Asset to check
     * @param recipient Recipient to check
     * @return amount of asset allocated to the recipient
     */
    function allocated(IERC20 asset, address recipient) external view returns (uint256 amount);
}
