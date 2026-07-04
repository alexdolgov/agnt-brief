// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IGT3 Interface
/// @notice Interface for the GT3 token contract
interface IGT3 is IERC20 {
    /// @dev Reverts when a function is called by an address that is not the minter
    /// @param sender The address attempting to call the function
    error GT3OnlyMinter(address sender);

    /// @dev Reverts when attempting to set the minter more than once
    error GT3MinterAlreadySetted();

    /// @dev Reverts when a zero address is provided where it is not allowed
    error GT3ZeroAddress();

    /// @notice Emitted when the contract is paused
    event Pause();

    /// @notice Emitted when the contract is unpaused
    event Unpause();

    /// @notice Emitted when the minter address is updated
    /// @param minter The new minter address
    event UpdateMinter(address indexed minter);

    /// @notice Initializes the GT3 token contract with a fixed cap of 200M tokens
    /// @dev Sets up token name, symbol, cap and initializes all inherited contracts
    /// @param owner Address that will own the contract
    function initialize(address owner) external;

    /// @notice The address authorized to mint new tokens
    /// @return The current minter address
    function minter() external view returns (address);

    /// @notice Mints new tokens to a specified account
    /// @dev Can only be called by the minter address
    /// @param account The address to receive the minted tokens
    /// @param amount The amount of tokens to mint
    function mint(address account, uint256 amount) external;

    /// @notice Sets the initial minter address
    /// @dev Can only be called once when minter is not set
    /// @param minter The address to be set as minter
    function setMinter(address minter) external;

    /// @notice Updates the minter address
    /// @dev Can only be called by the contract owner
    /// @param minter The new minter address
    function updateMinter(address minter) external;

    /// @notice Pauses all token transfers
    /// @dev Can only be called by the contract owner
    function pause() external;

    /// @notice Unpauses token transfers
    /// @dev Can only be called by the contract owner
    function unpause() external;
}
