// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IMorpho, MarketParams, Id} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {AggregatorV3Interface} from "./interfaces/AggregatorV3Interface.sol";
import {IMorphoOracleFactory} from "./interfaces/IMorphoOracleFactory.sol";
import {MarketParamsLib} from "morpho-blue/libraries/MarketParamsLib.sol";
import {IOracle} from "morpho-blue/interfaces/IOracle.sol";
import {VaultLib} from "morpho-blue-oracles/morpho-chainlink/libraries/VaultLib.sol";
import {IMorphoChainlinkOracleV2} from "morpho-blue-oracles/morpho-chainlink/interfaces/IMorphoChainlinkOracleV2.sol";

/// @title MorphoMarketFactory
/// @author Steakhouse Financial
/// @notice Contract for creating new markets on Morpho Blue with price oracle integration
/// @dev This contract handles market creation with both new and existing oracles, supporting ERC4626 vaults
/// @custom:security-contact chefs@steakhouse.financial
contract MorphoMarketFactory {
    using MarketParamsLib for MarketParams;
    using Math for uint256;
    using VaultLib for IERC4626;

    /// @notice The Morpho Blue protocol contract
    /// @dev Immutable reference to main Morpho protocol contract
    IMorpho public immutable morpho;

    /// @notice Factory contract for creating price oracles
    /// @dev Immutable reference to oracle factory that creates Chainlink-based oracles
    IMorphoOracleFactory public immutable oracleFactory;

    /// @notice Interest rate model contract address
    /// @dev Immutable reference to the IRM contract used for all markets created
    address public immutable irm;

    uint256 private constant EIGHT_DECIMALS = 10 ** 8;
    uint256 private constant EIGHTEEN_DECIMALS = 10 ** 18;
    uint256 private constant DEFAULT_CONVERSION_SAMPLE = EIGHT_DECIMALS;
    bytes32 public constant DEFAULT_SALT = bytes32(0); // The fixed value salt recommended in Morpho documentation
    uint256 private constant MAX_UINT256 = type(uint256).max;

    event MarketCreated(
        address indexed oracle,
        Id indexed marketId,
        address indexed marketCreator,
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        uint256 expectedPrice,
        uint256 actualPrice,
        uint256 error,
        uint256 allowedError
    );

    error ExpectedPriceMustBeGreaterThanZero();
    error OracleScaleFactorInvalid(uint256 scaleFactor);
    error PriceErrorExceedsAllowed(uint256 actualPrice, uint256 expectedPrice, uint256 error, uint256 allowedError);
    error FeedMustImplementLatestRoundData();
    error FeedDecimalsMustBeGreaterThanZero();
    error FeedMustImplementDecimals();
    error ZeroAddressNotAllowed();

    constructor(IMorpho _morpho, IMorphoOracleFactory _oracleFactory, address _irm) {
        morpho = _morpho;
        oracleFactory = _oracleFactory;
        irm = _irm;
    }

    function _createMorphoChainlinkOracle(
        address loanAsset,
        address collateralAsset,
        AggregatorV3Interface baseFeed1,
        AggregatorV3Interface baseFeed2,
        AggregatorV3Interface quoteFeed1,
        AggregatorV3Interface quoteFeed2,
        uint256 baseVaultConversionSample,
        uint256 quoteVaultConversionSample,
        bytes32 salt
    ) internal returns (IMorphoChainlinkOracleV2) {
        _validatePriceFeed(baseFeed1);
        _validatePriceFeed(baseFeed2);
        _validatePriceFeed(quoteFeed1);
        _validatePriceFeed(quoteFeed2);

        IERC4626 baseVault;
        IERC4626 quoteVault;
        uint256 baseTokenDecimals;
        uint256 quoteTokenDecimals;

        if (_isERC4626(collateralAsset)) {
            baseVault = IERC4626(collateralAsset);
            baseTokenDecimals = IERC20Metadata(baseVault.asset()).decimals();
            baseVaultConversionSample = baseVaultConversionSample == 0 ? DEFAULT_CONVERSION_SAMPLE : baseVaultConversionSample;
        } else {
            baseVault = IERC4626(address(0));
            baseTokenDecimals = IERC20Metadata(collateralAsset).decimals();
            baseVaultConversionSample = 1;
        }

        if (_isERC4626(loanAsset)) {
            quoteVault = IERC4626(loanAsset);
            quoteTokenDecimals = IERC20Metadata(quoteVault.asset()).decimals();
            quoteVaultConversionSample = quoteVaultConversionSample == 0 ? DEFAULT_CONVERSION_SAMPLE : quoteVaultConversionSample;
        } else {
            quoteVault = IERC4626(address(0));
            quoteTokenDecimals = IERC20Metadata(loanAsset).decimals();
            quoteVaultConversionSample = 1;
        }

        IOracle oracle = oracleFactory.createMorphoChainlinkOracleV2(
            baseVault,
            baseVaultConversionSample,
            baseFeed1,
            baseFeed2,
            baseTokenDecimals,
            quoteVault,
            quoteVaultConversionSample,
            quoteFeed1,
            quoteFeed2,
            quoteTokenDecimals,
            salt
        );

        return IMorphoChainlinkOracleV2(address(oracle));
    }

    function _isERC4626(address token) internal view returns (bool) {
        // Gas limit in staticcall is necessary because otherwise a failed call consumes an indefinite amount of gas
        (bool success, ) = token.staticcall{gas: 10000}(abi.encodeWithSignature("asset()"));
        return success;
    }

    function _createMarketAndOracle(
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        AggregatorV3Interface baseFeed1,
        AggregatorV3Interface baseFeed2,
        AggregatorV3Interface quoteFeed1,
        AggregatorV3Interface quoteFeed2,
        uint256 baseVaultConversionSample,
        uint256 quoteVaultConversionSample,
        bytes32 salt,
        uint256 expectedPrice,
        uint256 allowedError
    ) internal returns (MarketParams memory) {
        IMorphoChainlinkOracleV2 oracle = _createMorphoChainlinkOracle(
            loanAsset,
            collateralAsset,
            baseFeed1,
            baseFeed2,
            quoteFeed1,
            quoteFeed2,
            baseVaultConversionSample,
            quoteVaultConversionSample,
            salt
        );

        return _createMarketWithOracle(loanAsset, collateralAsset, lltv, address(oracle), expectedPrice, allowedError);
    }

    function _createMarketWithOracle(
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        address oracleAddress,
        uint256 expectedPrice,
        uint256 allowedError
    ) internal returns (MarketParams memory) {
        if (loanAsset == address(0) || collateralAsset == address(0)) {
            revert ZeroAddressNotAllowed();
        }

        IMorphoChainlinkOracleV2 oracle = IMorphoChainlinkOracleV2(oracleAddress);

        (uint256 actualPrice, uint256 error) = _validateOraclePrice(oracle, expectedPrice, allowedError);

        MarketParams memory marketParams = MarketParams({
            loanToken: loanAsset,
            collateralToken: collateralAsset,
            oracle: address(oracle),
            irm: irm,
            lltv: lltv
        });

        morpho.createMarket(marketParams);

        emit MarketCreated(
            address(oracle),
            marketParams.id(),
            msg.sender,
            loanAsset,
            collateralAsset,
            lltv,
            expectedPrice,
            actualPrice,
            error,
            allowedError
        );

        return marketParams;
    }

    /// @notice Creates a new market with a new oracle
    /// @dev Creates both a new Chainlink oracle and corresponding Morpho market
    /// @param loanAsset Address of the asset that can be borrowed
    /// @param collateralAsset Address of the asset used as collateral
    /// @param lltv Liquidation loan-to-value ratio in 18 decimals
    /// @param baseFeed1 Primary Chainlink price feed for collateral asset
    /// @param baseFeed2 Secondary Chainlink price feed for collateral asset (optional)
    /// @param quoteFeed1 Primary Chainlink price feed for loan asset
    /// @param quoteFeed2 Secondary Chainlink price feed for loan asset (optional)
    /// @param baseVaultConversionSample Sample size for ERC4626 vault conversion (if collateral is ERC4626)
    /// @param quoteVaultConversionSample Sample size for ERC4626 vault conversion (if loan asset is ERC4626)
    /// @param expectedPrice Expected price from oracle in 18 decimals
    /// @param allowedError Maximum allowed deviation from expected price in 18 decimals
    /// @return MarketParams The parameters of the created market
    /// @custom:security Validates oracle price against expected price within error bounds
    function createMarketAndOracle(
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        AggregatorV3Interface baseFeed1,
        AggregatorV3Interface baseFeed2,
        AggregatorV3Interface quoteFeed1,
        AggregatorV3Interface quoteFeed2,
        uint256 baseVaultConversionSample,
        uint256 quoteVaultConversionSample,
        uint256 expectedPrice,
        uint256 allowedError
    ) external returns (MarketParams memory) {
        return
            _createMarketAndOracle(
                loanAsset,
                collateralAsset,
                lltv,
                baseFeed1,
                baseFeed2,
                quoteFeed1,
                quoteFeed2,
                baseVaultConversionSample,
                quoteVaultConversionSample,
                DEFAULT_SALT,
                expectedPrice,
                allowedError
            );
    }

    /// @notice Creates a new market with a new oracle using custom salt
    /// @dev Similar to createMarketAndOracle but allows specifying custom salt for oracle deployment
    /// @param loanAsset Address of the asset that can be borrowed
    /// @param collateralAsset Address of the asset used as collateral
    /// @param lltv Liquidation loan-to-value ratio in 18 decimals
    /// @param baseFeed1 Primary Chainlink price feed for collateral asset
    /// @param baseFeed2 Secondary Chainlink price feed for collateral asset (optional)
    /// @param quoteFeed1 Primary Chainlink price feed for loan asset
    /// @param quoteFeed2 Secondary Chainlink price feed for loan asset (optional)
    /// @param baseVaultConversionSample Sample size for ERC4626 vault conversion (if collateral is ERC4626)
    /// @param quoteVaultConversionSample Sample size for ERC4626 vault conversion (if loan asset is ERC4626)
    /// @param salt Custom salt for oracle deployment
    /// @param expectedPrice Expected price from oracle in 18 decimals
    /// @param allowedError Maximum allowed deviation from expected price in 18 decimals
    /// @return MarketParams The parameters of the created market
    /// @custom:security Validates oracle price against expected price within error bounds
    function createMarketAndOracle(
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        AggregatorV3Interface baseFeed1,
        AggregatorV3Interface baseFeed2,
        AggregatorV3Interface quoteFeed1,
        AggregatorV3Interface quoteFeed2,
        uint256 baseVaultConversionSample,
        uint256 quoteVaultConversionSample,
        bytes32 salt,
        uint256 expectedPrice,
        uint256 allowedError
    ) external returns (MarketParams memory) {
        return
            _createMarketAndOracle(
                loanAsset,
                collateralAsset,
                lltv,
                baseFeed1,
                baseFeed2,
                quoteFeed1,
                quoteFeed2,
                baseVaultConversionSample,
                quoteVaultConversionSample,
                salt,
                expectedPrice,
                allowedError
            );
    }

    /// @notice Creates a new market with an existing oracle
    /// @dev Creates a Morpho market using an already deployed oracle
    /// @param loanAsset Address of the asset that can be borrowed
    /// @param collateralAsset Address of the asset used as collateral
    /// @param lltv Liquidation loan-to-value ratio in 18 decimals
    /// @param oracleAddress Address of existing oracle to use
    /// @param expectedPrice Expected price from oracle in 18 decimals
    /// @param allowedError Maximum allowed deviation from expected price in 18 decimals
    /// @return MarketParams The parameters of the created market
    /// @custom:security Validates oracle price against expected price within error bounds
    /// @custom:security Verifies oracle scale factor is within safe bounds
    function createMarketWithExistingOracle(
        address loanAsset,
        address collateralAsset,
        uint256 lltv,
        address oracleAddress,
        uint256 expectedPrice,
        uint256 allowedError
    ) external returns (MarketParams memory) {
        return _createMarketWithOracle(loanAsset, collateralAsset, lltv, oracleAddress, expectedPrice, allowedError);
    }

    function _validateOraclePrice(
        IMorphoChainlinkOracleV2 oracle,
        uint256 expectedPrice,
        uint256 allowedError
    ) internal view returns (uint256 actualPrice, uint256 error) {
        if (expectedPrice == 0 && allowedError != MAX_UINT256) {
            revert ExpectedPriceMustBeGreaterThanZero();
        }

        uint256 scaleFactor = oracle.SCALE_FACTOR();

        if (scaleFactor == 0 || scaleFactor >= 10 ** 50) {
            revert OracleScaleFactorInvalid(scaleFactor);
        }

        actualPrice = oracle.price();

        if (actualPrice > expectedPrice) {
            error = EIGHTEEN_DECIMALS.mulDiv(actualPrice - expectedPrice, expectedPrice);
        } else {
            error = EIGHTEEN_DECIMALS.mulDiv(expectedPrice - actualPrice, expectedPrice);
        }

        if (error > allowedError) {
            revert PriceErrorExceedsAllowed(actualPrice, expectedPrice, error, allowedError);
        }
    }

    function _validatePriceFeed(AggregatorV3Interface feed) internal view {
        if (address(feed) == address(0)) return;

        try feed.latestRoundData() returns (uint80, int256, uint256, uint256, uint80) {} catch {
            revert FeedMustImplementLatestRoundData();
        }

        try feed.decimals() returns (uint8 decimals) {
            if (decimals == 0) {
                revert FeedDecimalsMustBeGreaterThanZero();
            }
        } catch {
            revert FeedMustImplementDecimals();
        }
    }
}
