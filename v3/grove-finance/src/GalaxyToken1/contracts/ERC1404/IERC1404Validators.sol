// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/**
 * @title IERC1404Validators
 * @dev Interfaces implemented by the token contract to be called by the TransferRestrictions contract
 */
interface IERC1404Validators {

    /// @notice Returns a boolean indicating the paused state of the contract
    /// @return true if contract is paused, false if unpaused
    function paused() external view returns (bool);

    /// @notice Determine if sender and receiver are whitelisted, return true if both accounts are whitelisted
    /// @param from The address sending tokens
    /// @param to The address receiving tokens
    /// @return true if both accounts are whitelisted, false if not
    function checkWhitelists(address from, address to) external view returns (bool);

    /// @notice Determine if spender, sender and receiver are whitelisted, return true if all accounts are whitelisted
    /// @param spender The address performing the transfer
    /// @param from The address sending tokens
    /// @param to The address receiving tokens
    /// @return true if both accounts are whitelisted, false if not
    function checkWhitelists(address spender, address from, address to) external view returns (bool);

    /// @notice Determine if a users tokens are locked preventing a transfer
    /// @param _address the address to retrieve the data from
    /// @param amount the amount to send
    /// @return true if user has sufficient unlocked token to transfer the requested amount, false if not
    function checkTimelock(address _address, uint256 amount) external view returns (bool);
}

