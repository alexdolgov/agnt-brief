// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import {IPriceFeed} from "src/interfaces/core/oracles/IPriceFeed.sol";

interface IALMPeriphery {
    function getVaultPositionsRatio(address vaultAddress) external view returns (uint256 ratioRad);
    function getVaultPositions(address vault) external view returns (uint256 reserves0, uint256 reserves1);
    function getVaultPositionsAtOraclePrice(
        address vault,
        IPriceFeed priceFeed
    ) external view returns (uint256 reserves0, uint256 reserves1);
}