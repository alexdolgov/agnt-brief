// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IWETH} from "@wormhole-upgradeable/interfaces/IWETH.sol";
import "../contracts/HubSpokeStructs.sol";

interface IAssetRegistry {
    function registerAsset(
        address assetAddress,
        uint256 collateralizationRatioDeposit,
        uint256 collateralizationRatioBorrow,
        address interestRateCalculator,
        uint256 maxLiquidationPortion,
        uint256 maxLiquidationBonus
    ) external;

    function getAssetInfo(address assetAddress) external view returns (HubSpokeStructs.AssetInfo memory);

    function setAssetParams(
        address assetAddress,
        uint256 borrowLimit,
        uint256 supplyLimit,
        uint256 maxLiquidationPortion,
        uint256 maxLiquidationBonus,
        address interestRateCalculatorAddress
    ) external;

    function setCollateralizationRatios(address _asset, uint256 _deposit, uint256 _borrow) external;

    function getRegisteredAssets() external view returns (address[] memory);

    function getCollateralizationRatioPrecision() external view returns (uint256);

    function getMaxLiquidationPortionPrecision() external view returns (uint256);

    function WETH() external view returns (IWETH);

    function getMaxDecimals() external view returns (uint8);
}
