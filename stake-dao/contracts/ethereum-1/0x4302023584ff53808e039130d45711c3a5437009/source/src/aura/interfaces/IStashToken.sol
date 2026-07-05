// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Interface of stash token used for rewards distribution in the Aura Protocol.
interface IStashToken {
    /// @dev returns the address of the base token associated with this stash token.
    function baseToken() external view returns (address);
}
