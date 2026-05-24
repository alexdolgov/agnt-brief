// // SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "contracts/lending/core/interfaces/IPriceOracleGetter.sol";

/**
 * @dev Interface for the individual oracle wrappers, to unify interface between Redstone and API3 for example
 */
interface IOracleWrapper is IPriceOracleGetter {
    function getPriceInfo(
        address asset
    ) external view returns (uint256 price, bool isAlive);
}
