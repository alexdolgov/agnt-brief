// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import "../interfaces/ITrade.sol";
import "../interfaces/IManagement.sol";
import "../interfaces/IFacetReader.sol";

enum Enabled {
    Invalid,
    Enabled,
    Disabled
}

struct CollateralTokenInfo {
    Enabled enabled;
    uint8 decimals;
}

interface IMux3Core is IManagement, ITrade, IFacetReader {
    function priceOf(address token) external view returns (uint256);

    function priceOf(bytes32 id) external view returns (uint256);

    function setCachedPrices(
        bytes32[] memory ids,
        uint256[] memory prices
    ) external;
}
