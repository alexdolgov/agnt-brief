// SPDX-License-Identifier: BUSL-1.1
// slither-disable-start cyclomatic-complexity,similar-names
pragma solidity 0.8.21;

import {AbstractAssetOracle} from "./AbstractAssetOracle.sol";
import {Math} from "./Math.sol";
import {SingletonAssetOracle} from "./SingletonAssetOracle.sol";
import {IComet} from "./dependencies/compound/IComet.sol";
import {SafeCast} from "./dependencies/openzeppelin/SafeCast.sol";

/// @title CompoundV3PositionOracle.
/// @notice Aera oracle that returns the value of a borrowing position in Compound V3 market in numeraire terms.
/// @dev Implementation was inspired by https://github.com/compound-developers/compound-3-developer-faq/blob/2e2bea0848c67af0400d76fe39e0fc859b53d28a/contracts/MyContract.sol#L196.
contract CompoundV3PositionOracle is SingletonAssetOracle {
    using SafeCast for *;

    /// @dev The scale for upscaling position value to 18 decimals.
    uint256 private constant _POSITION_VALUE_RESCALE_FACTOR = 1e10;
    /// @dev The scale for base index (depends on time/rate scales, not base token).
    uint64 private constant _BASE_INDEX_SCALE = 1e15;
    /// @dev The name of the token
    string private constant _NAME = "CompoundV3PositionOracle";
    /// @dev The symbol of the token.
    string private constant _SYMBOL = "C3PO"; // May the Force be with you.

    /// @dev Compound V3 market address
    IComet public immutable comet;

    /// @dev Compound V3 base token address.
    address public immutable baseToken;
    /// @dev Compound V3 base token price feed address.
    address public immutable baseTokenPriceFeed;
    /// @dev The scale for base token price feed.
    uint256 public immutable baseScale;

    /// @dev The number of assets in Compound V3 market.
    uint256 public immutable numAssets;
    /// @dev Cached addresses of assets in Compound V3 market.
    address private immutable _asset0;
    address private immutable _asset1;
    address private immutable _asset2;
    address private immutable _asset3;
    address private immutable _asset4;
    address private immutable _asset5;
    address private immutable _asset6;
    address private immutable _asset7;
    address private immutable _asset8;
    address private immutable _asset9;
    address private immutable _asset10;
    address private immutable _asset11;
    address private immutable _asset12;
    address private immutable _asset13;
    address private immutable _asset14;

    /// @dev Cached addresses of price feeds for assets in Compound V3 market.
    address private immutable _priceFeed0;
    address private immutable _priceFeed1;
    address private immutable _priceFeed2;
    address private immutable _priceFeed3;
    address private immutable _priceFeed4;
    address private immutable _priceFeed5;
    address private immutable _priceFeed6;
    address private immutable _priceFeed7;
    address private immutable _priceFeed8;
    address private immutable _priceFeed9;
    address private immutable _priceFeed10;
    address private immutable _priceFeed11;
    address private immutable _priceFeed12;
    address private immutable _priceFeed13;
    address private immutable _priceFeed14;

    /// @dev Cached scales for assets in Compound V3 market.
    uint256 private immutable _assetScale0;
    uint256 private immutable _assetScale1;
    uint256 private immutable _assetScale2;
    uint256 private immutable _assetScale3;
    uint256 private immutable _assetScale4;
    uint256 private immutable _assetScale5;
    uint256 private immutable _assetScale6;
    uint256 private immutable _assetScale7;
    uint256 private immutable _assetScale8;
    uint256 private immutable _assetScale9;
    uint256 private immutable _assetScale10;
    uint256 private immutable _assetScale11;
    uint256 private immutable _assetScale12;
    uint256 private immutable _assetScale13;
    uint256 private immutable _assetScale14;

    /// ERRORS ///

    /// @notice Thrown when the Compound V3 market address is zero.
    error AeraPeriphery__CompoundIsZeroAddress();

    /// FUNCTIONS ///

    /// @notice Constructor for the CompoundV3PositionOracle contract.
    /// @param vault_ The address of the AeraVaultV2 contract.
    /// @param comet_ The address of the Compound V3 market.
    /// @param numerairePriceFeed_ The address of the numeraire price feed.
    /// @param invertPrice_ Whether to invert the price from numeraire price feed.
    constructor(
        address vault_,
        address comet_,
        address numerairePriceFeed_,
        bool invertPrice_
    ) SingletonAssetOracle(vault_, numerairePriceFeed_, invertPrice_) {
        // Requirements: check the Compound V3 market address is not zero.
        if (comet_ == address(0)) {
            revert AeraPeriphery__CompoundIsZeroAddress();
        }
        // Effects: set the Compound V3 market address.
        comet = IComet(comet_);

        // Effects: cache base token address, price feed address and scale.
        baseToken = comet.baseToken();
        baseTokenPriceFeed = comet.baseTokenPriceFeed();
        baseScale = comet.baseScale();

        // Effects: cache number of assets in Compound V3 market.
        numAssets = comet.numAssets();
        // Effects: cache asset addresses, price feeds and asset scales in Compound V3 market.
        if (numAssets > 0) {
            IComet.AssetInfo memory info = comet.getAssetInfo(0);
            _asset0 = info.asset;
            _priceFeed0 = info.priceFeed;
            _assetScale0 = info.scale;
        }
        if (numAssets > 1) {
            IComet.AssetInfo memory info = comet.getAssetInfo(1);
            _asset1 = info.asset;
            _priceFeed1 = info.priceFeed;
            _assetScale1 = info.scale;
        }
        if (numAssets > 2) {
            IComet.AssetInfo memory info = comet.getAssetInfo(2);
            _asset2 = info.asset;
            _priceFeed2 = info.priceFeed;
            _assetScale2 = info.scale;
        }
        if (numAssets > 3) {
            IComet.AssetInfo memory info = comet.getAssetInfo(3);
            _asset3 = info.asset;
            _priceFeed3 = info.priceFeed;
            _assetScale3 = info.scale;
        }
        if (numAssets > 4) {
            IComet.AssetInfo memory info = comet.getAssetInfo(4);
            _asset4 = info.asset;
            _priceFeed4 = info.priceFeed;
            _assetScale4 = info.scale;
        }
        if (numAssets > 5) {
            IComet.AssetInfo memory info = comet.getAssetInfo(5);
            _asset5 = info.asset;
            _priceFeed5 = info.priceFeed;
            _assetScale5 = info.scale;
        }
        if (numAssets > 6) {
            IComet.AssetInfo memory info = comet.getAssetInfo(6);
            _asset6 = info.asset;
            _priceFeed6 = info.priceFeed;
            _assetScale6 = info.scale;
        }
        if (numAssets > 7) {
            IComet.AssetInfo memory info = comet.getAssetInfo(7);
            _asset7 = info.asset;
            _priceFeed7 = info.priceFeed;
            _assetScale7 = info.scale;
        }
        if (numAssets > 8) {
            IComet.AssetInfo memory info = comet.getAssetInfo(8);
            _asset8 = info.asset;
            _priceFeed8 = info.priceFeed;
            _assetScale8 = info.scale;
        }
        if (numAssets > 9) {
            IComet.AssetInfo memory info = comet.getAssetInfo(9);
            _asset9 = info.asset;
            _priceFeed9 = info.priceFeed;
            _assetScale9 = info.scale;
        }
        if (numAssets > 10) {
            IComet.AssetInfo memory info = comet.getAssetInfo(10);
            _asset10 = info.asset;
            _priceFeed10 = info.priceFeed;
            _assetScale10 = info.scale;
        }
        if (numAssets > 11) {
            IComet.AssetInfo memory info = comet.getAssetInfo(11);
            _asset11 = info.asset;
            _priceFeed11 = info.priceFeed;
            _assetScale11 = info.scale;
        }
        if (numAssets > 12) {
            IComet.AssetInfo memory info = comet.getAssetInfo(12);
            _asset12 = info.asset;
            _priceFeed12 = info.priceFeed;
            _assetScale12 = info.scale;
        }
        if (numAssets > 13) {
            IComet.AssetInfo memory info = comet.getAssetInfo(13);
            _asset13 = info.asset;
            _priceFeed13 = info.priceFeed;
            _assetScale13 = info.scale;
        }
        if (numAssets > 14) {
            IComet.AssetInfo memory info = comet.getAssetInfo(14);
            _asset14 = info.asset;
            _priceFeed14 = info.priceFeed;
            _assetScale14 = info.scale;
        }
    }

    /// @notice Returns the addresses of assets in Compound V3 market.
    function assets() external view returns (address[] memory) {
        address[] memory assets_ = new address[](numAssets);
        if (numAssets == 0) return assets_;
        assets_[0] = _asset0;
        if (numAssets == 1) return assets_;
        assets_[1] = _asset1;
        if (numAssets == 2) return assets_;
        assets_[2] = _asset2;
        if (numAssets == 3) return assets_;
        assets_[3] = _asset3;
        if (numAssets == 4) return assets_;
        assets_[4] = _asset4;
        if (numAssets == 5) return assets_;
        assets_[5] = _asset5;
        if (numAssets == 6) return assets_;
        assets_[6] = _asset6;
        if (numAssets == 7) return assets_;
        assets_[7] = _asset7;
        if (numAssets == 8) return assets_;
        assets_[8] = _asset8;
        if (numAssets == 9) return assets_;
        assets_[9] = _asset9;
        if (numAssets == 10) return assets_;
        assets_[10] = _asset10;
        if (numAssets == 11) return assets_;
        assets_[11] = _asset11;
        if (numAssets == 12) return assets_;
        assets_[12] = _asset12;
        if (numAssets == 13) return assets_;
        assets_[13] = _asset13;
        if (numAssets == 14) return assets_;
        assets_[14] = _asset14;
        return assets_;
    }

    /// @notice Returns the addresses of price feeds for assets in Compound V3 market.
    function priceFeeds() external view returns (address[] memory) {
        address[] memory priceFeeds_ = new address[](numAssets);
        if (numAssets == 0) return priceFeeds_;
        priceFeeds_[0] = _priceFeed0;
        if (numAssets == 1) return priceFeeds_;
        priceFeeds_[1] = _priceFeed1;
        if (numAssets == 2) return priceFeeds_;
        priceFeeds_[2] = _priceFeed2;
        if (numAssets == 3) return priceFeeds_;
        priceFeeds_[3] = _priceFeed3;
        if (numAssets == 4) return priceFeeds_;
        priceFeeds_[4] = _priceFeed4;
        if (numAssets == 5) return priceFeeds_;
        priceFeeds_[5] = _priceFeed5;
        if (numAssets == 6) return priceFeeds_;
        priceFeeds_[6] = _priceFeed6;
        if (numAssets == 7) return priceFeeds_;
        priceFeeds_[7] = _priceFeed7;
        if (numAssets == 8) return priceFeeds_;
        priceFeeds_[8] = _priceFeed8;
        if (numAssets == 9) return priceFeeds_;
        priceFeeds_[9] = _priceFeed9;
        if (numAssets == 10) return priceFeeds_;
        priceFeeds_[10] = _priceFeed10;
        if (numAssets == 11) return priceFeeds_;
        priceFeeds_[11] = _priceFeed11;
        if (numAssets == 12) return priceFeeds_;
        priceFeeds_[12] = _priceFeed12;
        if (numAssets == 13) return priceFeeds_;
        priceFeeds_[13] = _priceFeed13;
        if (numAssets == 14) return priceFeeds_;
        priceFeeds_[14] = _priceFeed14;
        return priceFeeds_;
    }

    /// @notice Returns the scales for assets in Compound V3 market.
    function assetScales() external view returns (uint256[] memory) {
        uint256[] memory assetScales_ = new uint256[](numAssets);
        if (numAssets == 0) return assetScales_;
        assetScales_[0] = _assetScale0;
        if (numAssets == 1) return assetScales_;
        assetScales_[1] = _assetScale1;
        if (numAssets == 2) return assetScales_;
        assetScales_[2] = _assetScale2;
        if (numAssets == 3) return assetScales_;
        assetScales_[3] = _assetScale3;
        if (numAssets == 4) return assetScales_;
        assetScales_[4] = _assetScale4;
        if (numAssets == 5) return assetScales_;
        assetScales_[5] = _assetScale5;
        if (numAssets == 6) return assetScales_;
        assetScales_[6] = _assetScale6;
        if (numAssets == 7) return assetScales_;
        assetScales_[7] = _assetScale7;
        if (numAssets == 8) return assetScales_;
        assetScales_[8] = _assetScale8;
        if (numAssets == 9) return assetScales_;
        assetScales_[9] = _assetScale9;
        if (numAssets == 10) return assetScales_;
        assetScales_[10] = _assetScale10;
        if (numAssets == 11) return assetScales_;
        assetScales_[11] = _assetScale11;
        if (numAssets == 12) return assetScales_;
        assetScales_[12] = _assetScale12;
        if (numAssets == 13) return assetScales_;
        assetScales_[13] = _assetScale13;
        if (numAssets == 14) return assetScales_;
        assetScales_[14] = _assetScale14;
        return assetScales_;
    }

    /// @inheritdoc AbstractAssetOracle
    function name() external pure override returns (string memory) {
        return _NAME;
    }

    /// @inheritdoc AbstractAssetOracle
    function symbol() external pure override returns (string memory) {
        return _SYMBOL;
    }

    /// INTERNAL FUNCTIONS ///

    /// @inheritdoc AbstractAssetOracle
    function _getValue() internal view override returns (uint256) {
        IComet.UserBasic memory userBasic = comet.userBasic(_vault);

        // Note: this has 8 decimals
        int256 baseAmount = _getBaseAmount(userBasic.principal);

        // Note: this has 8 decimals
        int256 collateralAmount =
            _getCollateralAmount(userBasic.assetsIn).toInt256();

        int256 positionValue = baseAmount + collateralAmount;

        return positionValue < 0
            ? 0
            : _toNumeraireAmount(uint256(positionValue))
                * _POSITION_VALUE_RESCALE_FACTOR; // upscaling to 18 decimals
    }

    /// @dev Returns the base token amount. Positive for supply, negative for borrow.
    function _getBaseAmount(int104 principal) internal view returns (int256) {
        IComet.TotalsBasic memory totalsBasic = comet.totalsBasic();

        return _signedPrice(
            _presentValue(
                principal,
                totalsBasic.baseSupplyIndex,
                totalsBasic.baseBorrowIndex
            ),
            _getPrice(baseTokenPriceFeed),
            uint64(baseScale)
        );
    }

    /// @dev Returns the collateral amount in base terms.
    function _getCollateralAmount(uint16 assetsIn)
        internal
        view
        returns (uint256 amount)
    {
        if (assetsIn == 0) return 0;
        if (_isInAsset(assetsIn, 0)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset0),
                _getPrice(_priceFeed0),
                _assetScale0
            );
            if (assetsIn < 2) return amount;
        }
        if (_isInAsset(assetsIn, 1)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset1),
                _getPrice(_priceFeed1),
                _assetScale1
            );
            if (assetsIn < 4) return amount;
        }
        if (_isInAsset(assetsIn, 2)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset2),
                _getPrice(_priceFeed2),
                _assetScale2
            );
            if (assetsIn < 8) return amount;
        }
        if (_isInAsset(assetsIn, 3)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset3),
                _getPrice(_priceFeed3),
                _assetScale3
            );
            if (assetsIn < 16) return amount;
        }
        if (_isInAsset(assetsIn, 4)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset4),
                _getPrice(_priceFeed4),
                _assetScale4
            );
            if (assetsIn < 32) return amount;
        }
        if (_isInAsset(assetsIn, 5)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset5),
                _getPrice(_priceFeed5),
                _assetScale5
            );
            if (assetsIn < 64) return amount;
        }
        if (_isInAsset(assetsIn, 6)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset6),
                _getPrice(_priceFeed6),
                _assetScale6
            );
            if (assetsIn < 128) return amount;
        }
        if (_isInAsset(assetsIn, 7)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset7),
                _getPrice(_priceFeed7),
                _assetScale7
            );
            if (assetsIn < 256) return amount;
        }
        if (_isInAsset(assetsIn, 8)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset8),
                _getPrice(_priceFeed8),
                _assetScale8
            );
            if (assetsIn < 512) return amount;
        }
        if (_isInAsset(assetsIn, 9)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset9),
                _getPrice(_priceFeed9),
                _assetScale9
            );
            if (assetsIn < 1024) return amount;
        }
        if (_isInAsset(assetsIn, 10)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset10),
                _getPrice(_priceFeed10),
                _assetScale10
            );
            if (assetsIn < 2048) return amount;
        }
        if (_isInAsset(assetsIn, 11)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset11),
                _getPrice(_priceFeed11),
                _assetScale11
            );
            if (assetsIn < 4096) return amount;
        }
        if (_isInAsset(assetsIn, 12)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset12),
                _getPrice(_priceFeed12),
                _assetScale12
            );
            if (assetsIn < 8192) return amount;
        }
        if (_isInAsset(assetsIn, 13)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset13),
                _getPrice(_priceFeed13),
                _assetScale13
            );
            if (assetsIn < 16384) return amount;
        }
        if (_isInAsset(assetsIn, 14)) {
            amount += Math.mulDiv(
                comet.collateralBalanceOf(_vault, _asset14),
                _getPrice(_priceFeed14),
                _assetScale14
            );
        }
    }

    /// @dev Multiply a signed `fromScale` quantity by a price, returning a common price quantity.
    function _signedPrice(
        int256 n,
        uint256 price,
        uint64 fromScale
    ) internal pure returns (int256) {
        return (n * price.toInt256()) / int256(uint256(fromScale));
    }

    /// @dev Whether user has a non-zero balance of an asset, given assetsIn flags.
    function _isInAsset(
        uint16 assetsIn,
        uint8 index
    ) internal pure returns (bool) {
        return (assetsIn >> index) & 1 == 1;
    }

    /// @dev The positive present supply balance if positive or the negative borrow balance if negative.
    function _presentValue(
        int256 principalValue_,
        uint64 baseSupplyIndex_,
        uint64 baseBorrowIndex_
    ) internal pure returns (int256) {
        if (principalValue_ >= 0) {
            return (
                uint256(principalValue_) * baseSupplyIndex_ / _BASE_INDEX_SCALE
            ).toInt256();
        } else {
            return -(uint256(-principalValue_) * baseBorrowIndex_ / _BASE_INDEX_SCALE)
                .toInt256();
        }
    }
}
// slither-disable-end cyclomatic-complexity,similar-names
