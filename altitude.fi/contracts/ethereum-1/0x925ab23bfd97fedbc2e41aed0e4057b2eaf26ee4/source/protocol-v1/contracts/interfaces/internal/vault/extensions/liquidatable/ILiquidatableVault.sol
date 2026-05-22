// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./ILiquidationCall.sol";
import "../../../../../libraries/types/VaultTypes.sol";

interface ILiquidatableVaultV1 is ILiquidationCall {
    function isUserForLiquidation(
        address userAddress
    ) external view returns (bool isUserForLiquidator);

    function setLiquidationConfig(
        VaultTypes.LiquidatableConfig memory liqConfig
    ) external;

    function getLiquidationConfig()
        external
        view
        returns (address, uint256, uint256, uint256, uint256);
}
