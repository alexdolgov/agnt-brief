// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";

import { ProtocolModule, ProtocolGovernor } from "../system/ProtocolModule.sol";
import { IAssetPriceProvider } from "../interfaces/IAssetPriceProvider.sol";
import { IAssetPriceOracle } from "../interfaces/IAssetPriceOracle.sol";
import "../libraries/Errors.sol";

abstract contract PythPriceProviderEvents {
    event AssetSourceUpdated(address indexed asset, bytes32 indexed priceId);
}

/// @title PythOracle
/// @notice This contract handles oracle queries to Pyth price feeds.
/// @dev Prices are normalized to some base value using the BASE/USD datafeed. Use Y/USD datafeeds for assets.
/// @dev Prices are assumed to always be relative to BASE, and BASE is used as a base asset.
/// @dev If we are using USDC as BASE, then this should use the USDC/USD data feed for normalization.
contract PythPriceProvider is ProtocolModule, IAssetPriceProvider, PythPriceProviderEvents {
    /// @notice Pyth price feed contract. Injected from ProtocolGovernor.
    IPyth internal immutable pyth;

    /// @notice Map of asset addresses to price feed IDs
    mapping(address => bytes32) public assetPriceIds;

    /// @notice Maximum acceptable time period before price is considered stale. If price is stale, all functions
    /// requiring price feed will revert until price is updated.
    uint256 public validTimePeriodSeconds;

    /// @notice BASE/USD Datafeed used to normalize USD prices to X prices
    bytes32 public baseUsdPriceId;

    /// @notice BASE decimal precision
    uint8 public baseDecimals;

    constructor(
        address protocolGovernor_,
        bytes32 baseUsdPriceId_,
        uint8 baseDecimals_,
        uint256 validTimePeriodSeconds_,
        address[] memory assets,
        bytes32[] memory priceIds
    )
        nonZeroAddress(address(_getPyth()))
        ProtocolModule(protocolGovernor_)
    {
        baseUsdPriceId = baseUsdPriceId_;
        baseDecimals = baseDecimals_;
        pyth = _getPyth();
        validTimePeriodSeconds = validTimePeriodSeconds_;

        // Check that the base price feed is valid
        if (pyth.getPriceUnsafe(baseUsdPriceId).price <= 0) {
            revert Errors.InvalidParams();
        }

        _setAssetSources(assets, priceIds);
    }

    function updateValidTimePeriodSeconds(uint256 validTimePeriodSeconds_) external onlyOwner {
        validTimePeriodSeconds = validTimePeriodSeconds_;
    }

    function updateBaseFeed(bytes32 baseUsdPriceId_, uint8 baseDecimals_) external onlyOwner {
        // Check that the base price feed is valid
        if (pyth.getPriceUnsafe(baseUsdPriceId_).price <= 0) {
            revert Errors.InvalidParams();
        }
        baseUsdPriceId = baseUsdPriceId_;
        baseDecimals = baseDecimals_;
    }

    /// @notice External function called by protocol admin to set or replace sources of assets
    /// @param assets the assets
    /// @param priceIds the priceIds
    function setAssetSources(address[] calldata assets, bytes32[] calldata priceIds) external onlyOwner {
        _setAssetSources(assets, priceIds);
    }

    /// @notice Internal function to set or replace sources for each asset
    /// @param assets the assets
    /// @param priceIds the priceIds
    function _setAssetSources(address[] memory assets, bytes32[] memory priceIds) internal {
        if (assets.length != priceIds.length) {
            revert Errors.InvalidParams();
        }

        for (uint256 i = 0; i < assets.length; i++) {
            // Make sure price ID is valid
            if (pyth.getPriceUnsafe(priceIds[i]).price <= 0) {
                revert Errors.PythInvalidNonPositivePrice(assets[i]);
            }
            // Set it
            assetPriceIds[assets[i]] = priceIds[i];
            emit AssetSourceUpdated(assets[i], priceIds[i]);
        }
    }

    function getAssetPrice(address asset) external view override returns (uint256) {
        bytes32 priceFeedId = assetPriceIds[asset];

        if (priceFeedId == 0) {
            revert Errors.PythPriceFeedNotFound(asset);
        }

        PythStructs.Price memory assetPrice = pyth.getPriceNoOlderThan(priceFeedId, validTimePeriodSeconds);
        PythStructs.Price memory basePrice = pyth.getPriceNoOlderThan(baseUsdPriceId, validTimePeriodSeconds);

        if (assetPrice.price <= 0 || basePrice.price <= 0) {
            revert Errors.PythInvalidNonPositivePrice(asset);
        }

        uint256 assetPriceUint = convertToUint(assetPrice, 18);
        uint256 basePriceUint = convertToUint(basePrice, 18);

        return (assetPriceUint * 10 ** baseDecimals) / basePriceUint;
    }

    /// @dev If there's no price ID for this asset, then we can't use this contract to get a price.
    function getAssetOracle(address asset) external view override returns (IAssetPriceOracle) {
        if (assetPriceIds[asset] == 0) {
            return IAssetPriceOracle(address(0));
        } else {
            return IAssetPriceOracle(address(this));
        }
    }

    /// @dev Taken from here
    /// https://github.com/pyth-network/pyth-crosschain/blob/1d0d27ab3daaf7eb0214c3890165ea6ec54921c4/target_chains/ethereum/examples/oracle_swap/contract/src/OracleSwap.sol#L94
    function convertToUint(PythStructs.Price memory price, uint8 targetDecimals) private pure returns (uint256) {
        if (price.price < 0 || price.expo > 0 || price.expo < -255) {
            revert();
        }

        uint8 priceDecimals = uint8(uint32(-1 * price.expo));

        if (targetDecimals >= priceDecimals) {
            return uint256(uint64(price.price)) * 10 ** uint32(targetDecimals - priceDecimals);
        } else {
            return uint256(uint64(price.price)) / 10 ** uint32(priceDecimals - targetDecimals);
        }
    }
}
