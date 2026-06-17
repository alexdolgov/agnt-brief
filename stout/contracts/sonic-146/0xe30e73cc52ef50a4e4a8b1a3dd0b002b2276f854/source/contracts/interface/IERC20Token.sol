// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";

/**
 * @title IERC20Token
 * @dev Extended interface for ERC20 tokens with supply control capabilities
 * @notice Defines functionality for:
 * 1. Token minting
 * 2. Token burning
 * 3. Supply management
 */
interface IERC20Token is IERC20Custom {
    /*//////////////////////////////////////////////////////////////
                        SUPPLY MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Mints new tokens to specified account
     * @param account Address to receive minted tokens
     * @param amount Quantity of tokens to mint in base units
     * @dev Controls:
     * · Supply expansion
     * · Balance updates
     * · Event emission
     *
     * Requirements:
     * · Caller is authorized
     * · Within maxSupply
     * · Valid recipient
     */
    function mint(address account, uint256 amount) external;

    /**
     * @notice Burns tokens from specified account
     * @param account Address to burn tokens from
     * @param amount Quantity of tokens to burn in base units
     * @dev Manages:
     * · Supply reduction
     * · Balance updates
     * · Event emission
     *
     * Requirements:
     * · Caller is authorized
     * · Sufficient balance
     * · Amount > 0
     */
    function burn(address account, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves maximum token supply limit
     * @return uint256 Maximum supply cap in base units
     * @dev Enforces:
     * · Supply ceiling
     * · Mint restrictions
     * · Protocol limits
     *
     * Note: This is an immutable value that
     * cannot be exceeded by minting operations
     */
    function maxSupply() external view returns (uint256);
}
