// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3BribeFactory
/// @notice Interface for the factory contract that creates GT3 bribe instances
interface IGT3BribeFactory {
    /// @notice Initializes the GT3BribeFactory contract
    /// @dev Sets up the owner and implementation address for bribes
    /// @param owner_ The address that will own this contract
    /// @param bribeImplementation_ The implementation address for bribes
    function initialize(address owner_, address bribeImplementation_) external;

    /// @notice Creates a new bribe contract
    /// @dev The caller (msg.sender) becomes the voter for the created bribe
    /// @param xGt3 The address of the xGT3 token for this bribe
    /// @return The address of the newly created bribe contract
    function createBribe(address xGt3) external returns (address);
}
