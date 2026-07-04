// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "./Interfaces/IVersionable.sol";
import "./Interfaces/IPriceFeed.sol";
import "./Pricing/API3ProxyInterface.sol";
import "./Pricing/IPythOracle.sol";

/**
 * @title PriceFeedV2
 * @notice Simplified PriceFeed with automatic ERC4626 vault pricing.
 * @dev ERC4626 vaults are automatically detected and priced using:
 *      sharePrice = underlyingPrice × exchangeRate
 *      where underlyingPrice comes from configured oracles for the underlying asset.
 */
contract PriceFeedV2 is IPriceFeed, OwnableUpgradeable, IVersionable {
    // Constants --------------------------------------------------------------------------------------------------------

    /**
     * @notice Changelog
     * 2.3.0:
     * - Added Pyth Network oracle support (ProviderType.Pyth)
     * - Added priceFeedId field to OracleRecordV2 for Pyth feed IDs
     * - Updated setOracle() signature to include _priceFeedId parameter
     * - Storage layout change: added bytes32 priceFeedId to OracleRecordV2 (append-safe)
     * 2.2.0:
     * - Added automatic ERC4626 vault pricing via _tryFetchERC4626Price
     * - Refactored _getConfiguredPrice for DRY principle
     * - No storage layout changes (upgrade safe)
     * 2.1.1: natspec improvements
     * 2.1.0:
     * - Added fetchPriceDeviationPercentage, fetchPrimaryPrice, and fetchFallbackPrice
     * - Move eth indexed price calculation to _fetchOracleScaledUsdPrice for uniformity
     */
    string public constant VERSION = "2.3.0";
    string public constant NAME = "PriceFeedV2";

    /// @dev Used to convert an oracle price answer to an 18-digit precision uint
    uint256 public constant TARGET_DIGITS = 18;
    uint256 public constant MAX_PRICE_DEVIATION_PERCENT_X18 = 1e18 / 20; // 5%

    // State ------------------------------------------------------------------------------------------------------------

    mapping(address => OracleRecordV2) public oracles;
    mapping(address => OracleRecordV2) public fallbacks;

    /// @dev Upgradeable contract storage gap
    uint256[50] private __gap;

    // Initializer ------------------------------------------------------------------------------------------------------

    function initialize() public initializer {
        __Ownable_init();
    }

    // Admin routines ---------------------------------------------------------------------------------------------------

    /**
     * @dev Owner-only in V2 (no timelock indirection). Validates decimals and a non-stale oracle response on set.
     * @param _token The token address to configure the oracle for
     * @param _oracle The oracle contract address (for Pyth, this is the Pyth contract address)
     * @param _type The oracle provider type (Chainlink, API3, Pyth)
     * @param _timeoutSeconds The staleness timeout in seconds
     *                        If the oracle hasn't updated within this timeout, the price will be considered stale and revert.
     * @param _isEthIndexed Whether the oracle returns ETH-denominated prices (e.g., wstETH/ETH)
     * @param _isFallback Whether this is a fallback oracle (requires primary oracle to be set first)
     * @param _priceFeedId For Pyth oracles: the price feed ID; use bytes32(0) for Chainlink/API3
     */
    function setOracle(
        address _token,
        address _oracle,
        ProviderType _type,
        uint256 _timeoutSeconds,
        bool _isEthIndexed,
        bool _isFallback,
        bytes32 _priceFeedId
    ) external override onlyOwner {
        if (_isFallback && oracles[_token].oracleAddress == address(0)) {
            // fallback setup requires an existing primary oracle for the asset
            revert PriceFeed__ExistingOracleRequired();
        }
        // Pyth requires a valid feed ID
        if (_type == ProviderType.Pyth && _priceFeedId == bytes32(0)) {
            revert PriceFeed__PythFeedIdRequired();
        }
        uint256 decimals = _fetchDecimals(_oracle, _type, _priceFeedId);
        if (decimals == 0) {
            revert PriceFeed__InvalidDecimalsError();
        }
        OracleRecordV2 memory newOracle = OracleRecordV2({
            oracleAddress: _oracle,
            providerType: _type,
            timeoutSeconds: _timeoutSeconds,
            decimals: decimals,
            isEthIndexed: _isEthIndexed,
            priceFeedId: _priceFeedId
        });
        uint256 currentPriceUsdX18 = _fetchOracleScaledUsdPrice(newOracle);
        if (currentPriceUsdX18 == 0) {
            revert PriceFeed__InvalidOracleResponseError(_token);
        }
        if (_isFallback) {
            uint256 primaryPriceUsdX18 = fetchPrimaryPrice(_token);
            uint256 deviation = _getPriceDeviationPercentage(primaryPriceUsdX18, currentPriceUsdX18);
            /// @dev Run sanity check on the deviation between the primary and fallback price
            if (deviation > MAX_PRICE_DEVIATION_PERCENT_X18) {
                revert PriceFeed__FallbackPriceDeviationError(
                    MAX_PRICE_DEVIATION_PERCENT_X18,
                    primaryPriceUsdX18,
                    currentPriceUsdX18
                );
            }
            fallbacks[_token] = newOracle;
        } else {
            oracles[_token] = newOracle;
        }
        emit NewOracleRegistered(_token, _oracle, _isEthIndexed, _isFallback);
    }

    // Public functions -------------------------------------------------------------------------------------------------

    /**
     * @notice Fetches the price for an asset.
     * @dev Priority:
     *     1. Configured primary oracle (via setOracle)
     *     2. Configured fallback oracle (via setOracle)
     *     3. ERC4626 auto-detection (vault share → underlying price × exchange rate)
     *
     * Callers:
     *     - BorrowerOperations.openVessel()
     *     - BorrowerOperations.adjustVessel()
     *     - BorrowerOperations.closeVessel()
     *     - VesselManagerOperations.liquidateVessels()
     *     - VesselManagerOperations.batchLiquidateVessels()
     *     - VesselManagerOperations.redeemCollateral()
     */
    function fetchPrice(address _token) public view virtual returns (uint256 priceUsdX18) {
        // Try configured oracles (primary + fallback)
        priceUsdX18 = _getConfiguredPrice(_token);
        if (priceUsdX18 != 0) {
            return priceUsdX18;
        }

        // Try ERC4626 auto-detection
        priceUsdX18 = _tryFetchERC4626Price(_token);
        if (priceUsdX18 != 0) {
            return priceUsdX18;
        }

        revert PriceFeed__InvalidOracleResponseError(_token);
    }

    /**
     * @notice Fetches the price deviation percentage for an asset from a previously configured oracle.
     */
    function fetchPriceDeviationPercentage(address _token) public view returns (uint256 percentageX18) {
        uint256 primaryPrice = fetchPrimaryPrice(_token);
        uint256 fallbackPrice = fetchFallbackPrice(_token);

        // If no fallback exists, return 0% deviation (perfect alignment)
        if (fallbackPrice == 0) {
            return 0;
        }

        return _getPriceDeviationPercentage(primaryPrice, fallbackPrice);
    }

    /**
     * @notice Fetches the primary price for an asset from a previously configured oracle.
     * @param _token The address of the asset to fetch the price for.
     * @return priceUsdX18 The price of the asset in 18 decimals
     */
    function fetchPrimaryPrice(address _token) public view returns (uint256 priceUsdX18) {
        priceUsdX18 = _fetchOracleScaledUsdPrice(oracles[_token]);
        if (priceUsdX18 == 0) {
            revert PriceFeed__InvalidOracleResponseError(_token);
        }
        return priceUsdX18;
    }

    /**
     * @notice Fetches the fallback price for an asset from a previously configured oracle.
     * @param _token The address of the asset to fetch the price for.
     * @return priceUsdX18 The price of the asset in 18 decimals
     */
    function fetchFallbackPrice(address _token) public view returns (uint256 priceUsdX18) {
        priceUsdX18 = _fetchOracleScaledUsdPrice(fallbacks[_token]);
        if (priceUsdX18 == 0) {
            revert PriceFeed__InvalidOracleResponseError(_token);
        }
        return priceUsdX18;
    }

    // Internal functions -----------------------------------------------------------------------------------------------

    /**
     * @notice Gets the price from configured oracles (primary + fallback).
     * @param _token The token address to fetch the price for.
     * @return priceUsdX18 The price in 18 decimals, or 0 if not configured/failed.
     */
    function _getConfiguredPrice(address _token) internal view returns (uint256 priceUsdX18) {
        // Try primary oracle
        OracleRecordV2 memory primaryOracle = oracles[_token];
        if (primaryOracle.oracleAddress != address(0)) {
            priceUsdX18 = _fetchOracleScaledUsdPrice(primaryOracle);
            if (priceUsdX18 != 0) {
                return priceUsdX18;
            }
        }

        // Try fallback oracle
        OracleRecordV2 memory fallbackOracle = fallbacks[_token];
        if (fallbackOracle.oracleAddress != address(0)) {
            priceUsdX18 = _fetchOracleScaledUsdPrice(fallbackOracle);
            if (priceUsdX18 != 0) {
                return priceUsdX18;
            }
        }

        return 0;
    }

    /**
     * @notice Attempts to price an ERC4626 vault share.
     * @dev Formula: sharePrice = underlyingPrice × (assetsPerShare / shareUnit)
     *      Only succeeds if:
     *      - Token implements IERC4626 (has asset() function)
     *      - Underlying asset has a configured oracle
     *      - Exchange rate is valid (non-zero)
     * @param _vault The potential ERC4626 vault address.
     * @return priceUsdX18 The price in 18 decimals, or 0 if not ERC4626/failed.
     */
    function _tryFetchERC4626Price(address _vault) internal view returns (uint256 priceUsdX18) {
        // Step 1: Detect ERC4626 via asset()
        address underlying;
        try IERC4626(_vault).asset() returns (address _underlying) {
            underlying = _underlying;
        } catch {
            return 0; // Not ERC4626
        }

        // Step 2: Get underlying asset price from configured oracles
        uint256 underlyingPriceUsdX18 = _getConfiguredPrice(underlying);
        if (underlyingPriceUsdX18 == 0) {
            return 0; // Underlying oracle not configured
        }

        // Step 3: Get vault share decimals
        uint8 shareDecimals;
        try IERC20Metadata(_vault).decimals() returns (uint8 _decimals) {
            shareDecimals = _decimals;
        } catch {
            return 0;
        }

        // Step 4: Get exchange rate (assets per 1 share)
        uint256 shareUnit = 10 ** uint256(shareDecimals);
        uint256 assetsPerShare;
        try IERC4626(_vault).convertToAssets(shareUnit) returns (uint256 _assets) {
            assetsPerShare = _assets;
        } catch {
            return 0; // Exchange rate fetch failed
        }

        if (assetsPerShare == 0) {
            return 0; // Invalid exchange rate
        }

        // Step 5: Get underlying decimals for scaling
        uint8 underlyingDecimals;
        try IERC20Metadata(underlying).decimals() returns (uint8 _decimals) {
            underlyingDecimals = _decimals;
        } catch {
            return 0;
        }

        // Step 6: Calculate share price
        // sharePrice = underlyingPrice × (assetsPerShare / shareUnit)
        // Scale assetsPerShare to 18 decimals for multiplication
        uint256 scaledAssetsPerShareX18 = _scalePriceByDigits(assetsPerShare, uint256(underlyingDecimals));
        priceUsdX18 = (underlyingPriceUsdX18 * scaledAssetsPerShareX18) / 1e18;

        return priceUsdX18;
    }

    function _fetchDecimals(address _oracle, ProviderType _type, bytes32 _priceFeedId) internal view returns (uint8) {
        if (ProviderType.Chainlink == _type) {
            return ChainlinkAggregatorV3Interface(_oracle).decimals();
        } else if (ProviderType.API3 == _type) {
            return 18;
        } else if (ProviderType.Pyth == _type) {
            // Pyth returns price with an exponent (e.g., -8)
            // We fetch the exponent dynamically and convert to decimals
            try IPythOracle(_oracle).getPriceUnsafe(_priceFeedId) returns (IPythOracle.Price memory p) {
                // expo is negative (e.g., -8), convert to positive decimals
                if (p.expo < 0) {
                    return uint8(uint32(-p.expo));
                }
            } catch {
                // Return 0 on failure
            }
        }
        return 0;
    }

    /**
     * @dev Fetches the price from the oracle and scales it to the target precision.
     * - Handles ETH indexed assets and converts to USD.
     * @param oracle The oracle to fetch the price from.
     * @return priceUsdX18 The USD price of the asset in 18 decimals.
     */
    function _fetchOracleScaledUsdPrice(OracleRecordV2 memory oracle) internal view returns (uint256 priceUsdX18) {
        uint256 oraclePrice;
        uint256 priceTimestamp;
        if (oracle.oracleAddress == address(0)) {
            revert PriceFeed__UnknownAssetError();
        }
        if (ProviderType.Chainlink == oracle.providerType) {
            (oraclePrice, priceTimestamp) = _fetchChainlinkOracleResponse(oracle.oracleAddress);
        } else if (ProviderType.API3 == oracle.providerType) {
            (oraclePrice, priceTimestamp) = _fetchAPI3OracleResponse(oracle.oracleAddress);
        } else if (ProviderType.Pyth == oracle.providerType) {
            (oraclePrice, priceTimestamp) = _fetchPythOracleResponse(
                oracle.oracleAddress,
                oracle.priceFeedId,
                oracle.timeoutSeconds
            );
        }
        if (oraclePrice != 0 && !_isStalePrice(priceTimestamp, oracle.timeoutSeconds)) {
            priceUsdX18 = _scalePriceByDigits(oraclePrice, oracle.decimals);
            if (oracle.isEthIndexed) {
                priceUsdX18 = _calcEthIndexedPrice(priceUsdX18);
            }
            return priceUsdX18;
        }
        /// @dev Fail gracefully to check multiple oracles, MUST revert in parent if no valid responses
        return 0;
    }

    function _isStalePrice(uint256 _priceTimestamp, uint256 _oracleTimeoutSeconds) internal view returns (bool) {
        return block.timestamp - _priceTimestamp > _oracleTimeoutSeconds;
    }

    function _fetchChainlinkOracleResponse(
        address _oracleAddress
    ) internal view returns (uint256 price, uint256 timestamp) {
        try ChainlinkAggregatorV3Interface(_oracleAddress).latestRoundData() returns (
            uint80 roundId,
            int256 answer,
            uint256 /* startedAt */,
            uint256 updatedAt,
            uint80 /* answeredInRound */
        ) {
            if (roundId != 0 && updatedAt != 0 && answer > 0) {
                price = uint256(answer);
                timestamp = updatedAt;
            }
        } catch {
            // If call to Chainlink aggregator reverts, return a zero response
        }
    }

    function _fetchAPI3OracleResponse(address _oracleAddress) internal view returns (uint256 price, uint256 timestamp) {
        (int224 _value, uint256 _timestamp) = API3ProxyInterface(_oracleAddress).read();
        if (_value > 0) {
            /// @dev negative check -> see API3ProxyInterface
            price = uint256(int256(_value));
            timestamp = _timestamp;
        }
    }

    /**
     * @dev Fetches the price from a Pyth oracle.
     * @param _pythContract The Pyth contract address
     * @param _priceFeedId The Pyth price feed ID
     * @param _maxAge Maximum acceptable age in seconds (used by getPriceNoOlderThan)
     * @return price The raw price value (before scaling)
     * @return timestamp The publish time of the price
     */
    function _fetchPythOracleResponse(
        address _pythContract,
        bytes32 _priceFeedId,
        uint256 _maxAge
    ) internal view returns (uint256 price, uint256 timestamp) {
        try IPythOracle(_pythContract).getPriceNoOlderThan(_priceFeedId, _maxAge) returns (
            IPythOracle.Price memory pythPrice
        ) {
            // Only accept positive prices
            if (pythPrice.price > 0) {
                price = uint256(int256(pythPrice.price));
                timestamp = pythPrice.publishTime;
            }
        } catch {
            // If call to Pyth reverts (e.g., price too old), return zeros
        }
    }

    /**
     * @dev Fetches the ETH:USD price (using the zero address as being the ETH asset), then multiplies it by the
     *     indexed price. Assumes an oracle has been set for that purpose.
     */
    function _calcEthIndexedPrice(uint256 _ethAmount) internal view returns (uint256) {
        uint256 ethPrice = fetchPrice(address(0));
        return (ethPrice * _ethAmount) / 1 ether;
    }

    /**
     * @dev Scales oracle's response up/down to target precision; returns unaltered price if already on
     *     target digits.
     */
    function _scalePriceByDigits(uint256 _price, uint256 _priceDigits) internal pure returns (uint256 priceX18) {
        unchecked {
            if (_priceDigits > TARGET_DIGITS) {
                return _price / (10 ** (_priceDigits - TARGET_DIGITS));
            } else if (_priceDigits < TARGET_DIGITS) {
                return _price * (10 ** (TARGET_DIGITS - _priceDigits));
            }
        }
        return _price;
    }

    function _getPriceDeviationPercentage(
        uint256 _primaryPrice,
        uint256 _fallbackPrice
    ) internal pure returns (uint256 percentageX18) {
        // 1e18 == 100%
        uint256 _100_PERCENT_X18 = 1e18;
        uint256 absoluteDeviation = _primaryPrice > _fallbackPrice
            ? _primaryPrice - _fallbackPrice
            : _fallbackPrice - _primaryPrice;
        /// @dev Prevent division by zero
        uint256 primaryPriceDivisor = _primaryPrice == 0 ? 1 : _primaryPrice;
        return (absoluteDeviation * _100_PERCENT_X18) / primaryPriceDivisor;
    }
}
