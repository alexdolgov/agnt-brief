// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./lib/SimpleSYBaseAdapterV2.sol";

/**
 * @title ltPARASY
 * @notice Standardized Yield (SY) token wrapper for Shift's ltPARA token
 */
contract ltPARASY is SimpleSYBaseAdapterV2 {
    /**
     * @notice Constructs a new ltPARASY token
     * @dev Initializes the SY token with the provided parameters and sets up the underlying yield token
     * @param _name The name of the SY token (e.g., "SY Shift ltPARA")
     * @param _symbol The symbol of the SY token (e.g., "SY-ltPARA")
     * @param _yieldToken The address of the underlying ltPARA token to be wrapped
     */
    constructor(string memory _name, string memory _symbol, address _yieldToken)
        SimpleSYBaseAdapterV2(_name, _symbol, _yieldToken)
    {}
}
