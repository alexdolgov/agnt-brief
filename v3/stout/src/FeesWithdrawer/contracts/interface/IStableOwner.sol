// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Token} from "./IERC20Token.sol";

/**
 * @title IStableOwner Interface
 * @dev Interface for StableOwner contract that manages stable token supply
 * @notice Defines the external interface for stable token supply management
 */
interface IStableOwner {
    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when stable token contract is updated
    /// @param stable New stable token contract address
    event StableSet(IERC20Token indexed stable);
    /// @notice Emitted when new tokens are minted
    /// @param account Recipient of minted tokens
    /// @param amount Amount of tokens minted
    event TokensMinted(address indexed account, uint256 amount);
    /// @notice Emitted when tokens are burned
    /// @param account Account tokens were burned from
    /// @param amount Amount of tokens burned
    event TokensBurned(address indexed account, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Updates the stable token contract address
    /// @param stable_ New stable token contract address
    function setStable(IERC20Token stable_) external;

    /// @notice Creates new stable tokens
    /// @param account Address to receive minted tokens
    /// @param amount Number of tokens to mint
    function mint(address account, uint256 amount) external;

    /// @notice Destroys existing stable tokens
    /// @param account Address to burn tokens from
    /// @param amount Number of tokens to burn
    function burn(address account, uint256 amount) external;

    /// @notice The managed stable token contract
    /// @return The IERC20Token interface of the stable token
    function stable() external view returns (IERC20Token);
}
