// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

interface IAuth2Step {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when the ownership transfer starts.
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Accepts the ownership transfer.
    function acceptOwnership() external;

    /// @notice Renounces ownership of the contract.
    function renounceOwnership() external;
}
