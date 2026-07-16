// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

/// @title IAuth2Step
/// @notice Interface for the Auth2Step contract
interface IAuth2Step {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when ownership transfer is initiated
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Accept ownership transfer
    function acceptOwnership() external;

    /// @notice Renounce ownership of the contract
    function renounceOwnership() external;
}
