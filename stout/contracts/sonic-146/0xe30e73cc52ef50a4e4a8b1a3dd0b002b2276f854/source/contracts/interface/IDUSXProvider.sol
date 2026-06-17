// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IDUSXProvider
 * @dev Interface for DUSX token provision and distribution operations
 * @notice Defines functionality for:
 * 1. Token provision management
 * 2. Supply control
 * 3. Distribution tracking
 */
interface IDUSXProvider {
    /*//////////////////////////////////////////////////////////////
                        PROVISION OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Provides DUSX tokens to the requesting address
     * @param amount The quantity of DUSX tokens to provide in base units
     * @dev Handles:
     * · Token minting/transfer
     * · Supply tracking
     * · State updates
     *
     * Requirements:
     * · Caller is authorized
     * · Amount > 0
     * · Within supply limits
     *
     * Effects:
     * · Increases recipient balance
     * · Updates total supply
     * · Emits provision event
     */
    function provide(uint256 amount) external;
}
