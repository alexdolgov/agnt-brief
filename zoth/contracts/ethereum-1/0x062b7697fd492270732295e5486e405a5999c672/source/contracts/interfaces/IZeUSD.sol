// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import './events/IZeUSDEvents.sol';
import './errors/IZeUSDErrors.sol';

/**
 * @title ZeUSD Interface
 * @author ZeUSD Protocol Team
 * @notice Main interface for the ZeUSD token contract
 * @dev Extends standard ERC20 functionality with protocol-specific features
 * @custom:security-contact tech@zoth.io
 */
interface IZeUSD is IZeUSDEvents, IZeUSDErrors {
    /**
     * @notice Sets the blacklist status for an account
     * @param account Address to update blacklist status for
     * @param status New blacklist status (true = blacklisted)
     * @dev Only callable by admin role
     * @custom:emits Blacklisted
     */
    function setBlacklistStatus(address account, bool status) external;

    /**
     * @notice Checks if an account is blacklisted
     * @param account Address to check
     * @return bool True if account is blacklisted
     * @dev Used for compliance checks
     */
    function isBlacklisted(address account) external view returns (bool);

    /**
     * @notice Mints new tokens to a specified address
     * @param to Address to mint tokens to
     * @param amount Amount of tokens to mint
     * @dev Only callable by router
     * @custom:emits Transfer
     */
    function mint(address to, uint256 amount) external;

    /**
     * @notice Burns tokens from the caller's address
     * @param amount Amount of tokens to burn
     * @dev Requires sufficient balance
     * @custom:emits Transfer
     */
    function burn(uint256 amount) external;

    /**
     * @notice Burns tokens from a specified address
     * @param account Address to burn tokens from
     * @param amount Amount of tokens to burn
     * @dev Requires approval if caller != account
     * @custom:emits Transfer
     */
    function burnFrom(address account, uint256 amount) external;
}
