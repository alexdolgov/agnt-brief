// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { Auth, Authority } from "@solmate/auth/Auth.sol";
import { IAuth2Step } from "src/core/interfaces/IAuth2Step.sol";

/// @title Auth2Step
/// @notice An extension of Auth.sol that allows for a two-step ownership transfer
contract Auth2Step is IAuth2Step, Auth {
    ////////////////////////////////////////////////////////////
    //                        Storage                         //
    ////////////////////////////////////////////////////////////

    /// @notice The address of the pending owner.
    address public pendingOwner;

    ////////////////////////////////////////////////////////////
    //                       Modifiers                        //
    ////////////////////////////////////////////////////////////

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");
        _;
    }

    constructor(address newOwner_, Authority authority_) Auth(newOwner_, authority_) { }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IAuth2Step
    function acceptOwnership() external virtual override {
        address pendingOwner_ = pendingOwner;

        // Requirements: the caller must be the pending owner
        require(msg.sender == pendingOwner_, "UNAUTHORIZED");

        // Effects: set the owner to the pending owner and delete the pending owner
        owner = pendingOwner_;
        delete pendingOwner;

        // Log the ownership transfer
        emit OwnershipTransferred(msg.sender, pendingOwner_);
    }

    /// @inheritdoc IAuth2Step
    function renounceOwnership() external virtual override onlyOwner {
        // Effects: set the owner to the zero address
        owner = address(0);

        // Log the ownership transfer
        emit OwnershipTransferred(msg.sender, address(0));
    }

    /// @notice Starts the ownership transfer of the contract to a new account.
    /// @param newOwner The address to transfer ownership to.
    /// @dev Replaces the pending transfer if there is one.
    /// @dev Overrides the `Auth` contract's `transferOwnership` function.
    /// @dev Zero check is not needed because pendingOwner can always be overwritten
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        // Effects: set the pending owner
        //slither-disable-next-line missing-zero-check
        pendingOwner = newOwner;

        // Log the ownership transfer start
        emit OwnershipTransferStarted(owner, newOwner);
    }
}
