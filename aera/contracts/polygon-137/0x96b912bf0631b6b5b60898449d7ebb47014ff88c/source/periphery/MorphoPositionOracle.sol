// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import {AbstractAssetOracle} from "./AbstractAssetOracle.sol";
import {Math} from "./Math.sol";
import {IAeraV2Oracle} from "./interfaces/IAeraV2Oracle.sol";
import {IMorphoPositionOracle} from "./interfaces/IMorphoPositionOracle.sol";
import {IERC20Metadata} from "@openzeppelin/IERC20Metadata.sol";
import {Ownable} from "@openzeppelin/Ownable.sol";
import {
    IMorpho,
    Id,
    MarketParams
} from "periphery/dependencies/morpho/interfaces/IMorpho.sol";
import {IOracle} from "periphery/dependencies/morpho/interfaces/IOracle.sol";
import {SharesMathLib} from
    "periphery/dependencies/morpho/libraries/SharesMathLib.sol";
import {MorphoBalancesLib} from
    "periphery/dependencies/morpho/libraries/periphery/MorphoBalancesLib.sol";
import {MorphoStorageLib} from
    "periphery/dependencies/morpho/libraries/periphery/MorphoStorageLib.sol";
import {SafeCast} from "periphery/dependencies/openzeppelin/SafeCast.sol";

/// @title MorphoPositionOracle.
/// @notice Aera oracle that calculates the value of a borrowing position
///         (calculated as the value of collateral - the total value of borrowed assets)
///         in given Morpho Blue markets. The value is provided in numeraire terms.
contract MorphoPositionOracle is AbstractAssetOracle, IMorphoPositionOracle {
    using MorphoBalancesLib for IMorpho;
    using SharesMathLib for uint256;
    using MorphoStorageLib for Id;
    using Math for uint256;
    using SafeCast for uint256;

    /// CONSTANTS ///

    /// @notice The scale of the Morpho oracle price.
    uint256 private constant _MORPHO_ORACLE_PRICE_SCALE = 1e36;
    /// @notice The name of the token.
    string private constant _NAME = "MorphoBluePositionOracle";
    /// @notice The symbol of the token.
    string private constant _SYMBOL = "MBPO";

    /// IMMUTABLES ///

    /// @notice Morpho contract.
    IMorpho public immutable morpho;

    /// STORAGE ///

    /// @inheritdoc IMorphoPositionOracle
    MarketDataDetails[] public markets;

    /// MODIFIERS ///

    /// @notice Check that the caller is the Vault owner.
    modifier onlyVaultOwner() {
        if (msg.sender != Ownable(_vault).owner()) {
            revert AeraPeriphery__NotVaultOwner();
        }
        _;
    }

    /// FUNCTIONS ///

    constructor(address vault_, address morpho_) AbstractAssetOracle(vault_) {
        // Requirements: Morpho address must not be zero.
        if (morpho_ == address(0)) {
            revert AeraPeriphery__MorphoIsZeroAddress();
        }

        // Effects: set the Morpho contract address.
        morpho = IMorpho(morpho_);

        // Requirements: check that Morpho returns a non-zero domain separator.
        if (morpho.DOMAIN_SEPARATOR() == bytes32(0)) {
            revert AeraPeriphery__UnexpectedMorphoResponse();
        }
    }

    /// @inheritdoc IMorphoPositionOracle
    function setMarkets(MarketData[] calldata markets_)
        external
        onlyVaultOwner
    {
        // Effects: delete existing markets.
        delete markets;

        uint256 previousMarketId = 0;

        uint256 numMarkets = markets_.length;
        for (uint256 i = 0; i < numMarkets; ++i) {
            MarketData calldata market = markets_[i];

            Id marketId = market.id;
            uint256 marketIdNumber = uint256(Id.unwrap(marketId));
            // Requirements: check that the market list is in strictly increasing order.
            if (marketIdNumber <= previousMarketId) {
                revert AeraPeriphery__MarketListOutOfOrder(marketId);
            }
            previousMarketId = marketIdNumber;

            // slither-disable-next-line calls-loop
            MarketParams memory marketParams =
                morpho.idToMarketParams(marketId);

            // Get loan token decimals.
            // slither-disable-next-line calls-loop
            uint8 loanTokenDecimals =
                IERC20Metadata(marketParams.loanToken).decimals();

            address priceFeed = market.priceFeed;

            // slither-disable-next-line calls-loop
            uint8 priceFeedDecimals = (
                priceFeed == address(0)
                    ? 0
                    : IAeraV2Oracle(priceFeed).decimals()
            );

            uint256 priceFeedScale;
            unchecked {
                priceFeedScale = 10 ** priceFeedDecimals;
            }

            // Effects: add details of the market to the list.
            markets.push(
                MarketDataDetails({
                    id: marketId,
                    priceFeedScale: priceFeedScale.toUint80(),
                    priceFeed: priceFeed,
                    loanTokenDecimals: loanTokenDecimals,
                    invertPrice: market.invertPrice
                })
            );
        }

        // Log that the new market list has been set.
        emit MarketsSet(markets_);
    }

    /// @inheritdoc AbstractAssetOracle
    function name() external pure override returns (string memory) {
        return _NAME;
    }

    /// @inheritdoc AbstractAssetOracle
    function symbol() external pure override returns (string memory) {
        return _SYMBOL;
    }

    /// @inheritdoc IMorphoPositionOracle
    function getMarketsLength() external view override returns (uint256) {
        return markets.length;
    }

    /// INTERNAL FUNCTIONS ///

    /// @inheritdoc AbstractAssetOracle
    function _getValue() internal view override returns (uint256 totalValue) {
        uint256 numMarkets = markets.length;
        for (uint256 i = 0; i < numMarkets; ++i) {
            totalValue += _getMarketPositionValue(markets[i]);
        }
    }

    /// @notice Calculates the position value of a given market in numeraire terms.
    function _getMarketPositionValue(MarketDataDetails storage market)
        internal
        view
        returns (uint256)
    {
        Id marketId = market.id;

        // Get borrow shares and collateral amounts.
        (uint256 borrowShares, uint256 collateral) =
            _positionBorrowSharesAndCollateral(marketId);

        // If the position is empty, return 0.
        if (collateral == 0) return 0;

        MarketParams memory marketParams = morpho.idToMarketParams(marketId);

        // Convert borrow shares to borrowed amount.
        uint256 borrowed = _borrowedAmount(marketParams, borrowShares);

        // Apply collateral price to get the collateral value
        // in loan token terms.
        uint256 collateralPrice = IOracle(marketParams.oracle).price();

        // A uint256 can accommodate up to 77 decimal digits. Given that the price is scaled to 1e36,
        // and the maximum token decimals currently is 24 (YAM-V2 token),
        // the product of price and collateral have at least 17 decimal places remaining without causing an overflow.
        collateral =
            collateral.mulDiv(collateralPrice, _MORPHO_ORACLE_PRICE_SCALE);

        // When undercollateralized, return 0.
        if (collateral < borrowed) return 0;

        // Calculate the position value.
        uint256 positionValue;
        unchecked {
            positionValue = collateral - borrowed;
        }

        // Rescale position value to 18 decimals.
        positionValue =
            _rescaleTo18Decimals(positionValue, market.loanTokenDecimals);

        // Convert position value to numeraire terms.
        return _convertToNumeraire(positionValue, market);
    }

    /// @notice Converts the given value to numeraire terms using price feed.
    function _convertToNumeraire(
        uint256 value,
        MarketDataDetails storage market
    ) internal view returns (uint256) {
        address priceFeed = market.priceFeed;

        // If the price feed is not set, return the value as is.
        if (priceFeed == address(0)) return value;

        // Fetch the price.
        uint256 price = _getPrice(priceFeed);

        // Apply the price to convert the value to numeraire terms.
        if (market.invertPrice) {
            return value.mulDiv(market.priceFeedScale, price);
        } else {
            return value.mulDiv(price, market.priceFeedScale);
        }
    }

    /// @notice Rescales given value to 18 decimals.
    function _rescaleTo18Decimals(
        uint256 value,
        uint8 valueDecimals
    ) internal pure returns (uint256) {
        if (valueDecimals == 18) return value;
        if (valueDecimals > 18) {
            // downscale to 18 decimals.
            unchecked {
                return value / 10 ** (valueDecimals - 18);
            }
        }
        uint256 scale;
        unchecked {
            scale = 10 ** (18 - valueDecimals);
        }
        // upscale to 18 decimals.
        return value * scale;
    }

    // The following functions are inspired by
    // https://docs.morpho.org/morpho-blue/tutorials/track-positions

    /// @notice Returns the borrow shares and collateral of the position.
    function _positionBorrowSharesAndCollateral(Id market)
        internal
        view
        returns (uint128 borrowShares, uint128 collateral)
    {
        bytes32[] memory slots = new bytes32[](1);
        slots[0] = market.positionBorrowSharesAndCollateralSlot(_vault);
        bytes32[] memory values = morpho.extSloads(slots);
        borrowShares = uint128(uint256(values[0]));
        collateral = uint128(uint256(values[0] >> 128));
    }

    /// @notice Converts borrow shares to borrowed amount.
    function _borrowedAmount(
        MarketParams memory marketParams,
        uint256 borrowShares
    ) internal view returns (uint256) {
        (,, uint256 totalBorrowAssets, uint256 totalBorrowShares) =
            morpho.expectedMarketBalances(marketParams);
        return borrowShares.toAssetsUp(totalBorrowAssets, totalBorrowShares);
    }
}
