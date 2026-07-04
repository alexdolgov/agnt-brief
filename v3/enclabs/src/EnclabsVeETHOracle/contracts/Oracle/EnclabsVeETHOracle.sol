// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";

import { ensureNonzeroAddress } from "../lib/validators.sol";

/**
 * @title EnclabsVeETHOracle
 * @author Enclabs
 * @notice This oracle fetches the price of EnclabsVeETHOracle 
 */
contract EnclabsVeETHOracle is CorrelatedTokenOracle {
    
    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _veETH,
        address _scETH,
        address _resilientOracle
    ) CorrelatedTokenOracle(_veETH, _scETH, _resilientOracle) {
        ensureNonzeroAddress(_veETH);
        ensureNonzeroAddress(_scETH);
       
    }

    /**
     * @notice Gets the scETH for 1 vescETH
     * @return amount Amount of scusd
     */
    function _getUnderlyingAmount() internal view override returns (uint256) {
        return 87e16; // fixed price of 0.87 scETH, that means 13% + 1 year of voting yield to any liquidator which seems a reasonable price
    }
}
