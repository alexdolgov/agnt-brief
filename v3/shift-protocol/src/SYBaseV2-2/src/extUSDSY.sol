// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./lib/SimpleSYBaseAdapterV2.sol";

/**
 * @title extUSDSY
 * @notice Standardized Yield (SY) token wrapper for Shift's extUSD token
 */
contract extUSDSY is SimpleSYBaseAdapterV2 {
    /**
     * @notice Constructs a new extUSDSY token
     * @dev Initializes the SY token with the provided parameters and sets up the underlying yield token
     * @param _name The name of the SY token (e.g., "SY Shift extUSD")
     * @param _symbol The symbol of the SY token (e.g., "SY-extUSD")
     * @param _yieldToken The address of the underlying extUSD token to be wrapped
     */
    constructor(string memory _name, string memory _symbol, address _yieldToken)
        SimpleSYBaseAdapterV2(_name, _symbol, _yieldToken)
    {}
}
