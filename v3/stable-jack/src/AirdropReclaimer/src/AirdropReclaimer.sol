// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IERC20} from "forge-std/interfaces/IERC20.sol";
import { Ownable } from "solady/auth/Ownable.sol";
import {IAirdropDistributor} from "./interfaces/IAirdropDistributor.sol";

/// @notice Parameters for a single reward retrieval call
struct RetrieveParams {
    uint256 epoch;
    address token;
    address account;
    uint256 amount;
    bytes32[] merkleProof;
}

/// @title AirdropReclaimer
/// @notice Contract to batch-reclaim unclaimed airdrop rewards and withdraw tokens
/// @dev Implements minimal Ownable pattern for access control
contract AirdropReclaimer is Ownable {
    // ============ State Variables ============

    /// @notice The airdrop distributor contract to call
    IAirdropDistributor public immutable distributor;

    // ============ Errors ============

    error TransferFailed();
    error EmptyCalldata();
    error ZeroAddress();

    // ============ Events ============

    event BatchRetrieved(uint256 count);
    event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);

    // ============ Constructor ============

    /// @notice Initializes the contract with owner and distributor address
    /// @param initialOwner The initial owner of the contract
    /// @param _distributor The airdrop distributor contract address
    constructor(address initialOwner, address _distributor) {
        if (initialOwner == address(0) || _distributor == address(0)) revert ZeroAddress();
        _initializeOwner(initialOwner);

        distributor = IAirdropDistributor(_distributor);
    }

    // ============ External Functions ============

    /// @notice Retrieves multiple unclaimed rewards in a single transaction
    /// @param params Array of retrieval parameters
    function batchRetrieve(RetrieveParams[] calldata params) external onlyOwner {
        uint256 length = params.length;
        if (length == 0) revert EmptyCalldata();

        for (uint256 i; i < length;) {
            distributor.retrieveUnclaimedReward(
                params[i].epoch,
                params[i].token,
                params[i].account,
                params[i].amount,
                params[i].merkleProof
            );

            unchecked {
                ++i;
            }
        }

        emit BatchRetrieved(length);
    }

    /// @notice Withdraws all of a specific ERC20 token to the owner
    /// @param token The ERC20 token to withdraw
    function withdrawToken(address token) external onlyOwner {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance > 0) {
            bool success = IERC20(token).transfer(owner(), balance);
            if (!success) revert TransferFailed();
            emit TokensWithdrawn(token, owner(), balance);
        }
    }

    /// @notice Transfer ownership of the airdrop contract to a new owner
    /// @param newOwner The address of the new owner
    function transferDistributorOwnership(address newOwner) public onlyOwner {
        distributor.transferOwnership(newOwner);
    }
}
