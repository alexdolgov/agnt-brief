// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { AccessControlEnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import { IPriceFeed } from "../Interfaces/IPriceFeed.sol";
import { IPegStabilityModulePriceProtection } from "../Interfaces/IPegStabilityModulePriceProtection.sol";

/**
 * @title PegStabilityModulePriceProtection
 * @notice Abstract contract providing price feed integration and validation for PSM contracts
 * @dev Assumes the configured price feed handles freshness (reverts on stale data); the module only enforces deviation bounds.
 * @dev Price feed is expected to return prices with 18 decimals.
 */
abstract contract PegStabilityModulePriceProtection is
    AccessControlEnumerableUpgradeable,
    IPegStabilityModulePriceProtection
{
    // ------------------------------------------------------------------------
    // Constants
    // ------------------------------------------------------------------------

    uint256 internal constant PRECISION = 1 ether; // 1e18 precision for percentage-based values

    /// @notice Recommended price deviation threshold for moderate security (0.5%)
    /// @dev Balances security with usability - catches meaningful depegs while allowing normal volatility
    uint256 private constant _RECOMMENDED_MODERATE_DEVIATION = 0.005e18; // 0.5%

    // ------------------------------------------------------------------------
    // State Variables
    // ------------------------------------------------------------------------

    IPriceFeed public priceFeed;
    uint256 public maxPriceDeviation; // max allowed price deviation from $1 (1e18 = 100%) - recommended: 0.005e18 (0.5%)

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    // ------------------------------------------------------------------------
    // Initialize
    // ------------------------------------------------------------------------

    /// @dev Initializes the price protection functionality
    /// @param priceFeedAddress The price feed contract address
    /// @param pegTokenAddress The peg token address
    /// @param initialMaxDeviation The initial maximum price deviation
    function __PegStabilityModulePriceProtection_init(
        address priceFeedAddress,
        address pegTokenAddress,
        uint256 initialMaxDeviation
    ) internal onlyInitializing {
        _setMaxPriceDeviation(initialMaxDeviation);
        _setPriceFeedWithValidation(priceFeedAddress, pegTokenAddress);
    }

    // ------------------------------------------------------------------------
    // Abstract Functions (must be implemented by inheriting contract)
    // ------------------------------------------------------------------------

    /// @dev Returns the peg token address - must be implemented by inheriting contract
    function _getPegToken() internal view virtual returns (IERC20Metadata);

    /// @dev Returns the CONFIG_ROLE - must be implemented by inheriting contract
    function _getConfigRole() internal pure virtual returns (bytes32);

    // ------------------------------------------------------------------------
    // Price Feed Admin Functions
    // ------------------------------------------------------------------------

    function setPriceFeed(address newPriceFeed) external override onlyRole(_getConfigRole()) {
        address oldPriceFeed = address(priceFeed);

        if (newPriceFeed == address(0)) {
            emit PriceProtectionDisabled(oldPriceFeed);
            priceFeed = IPriceFeed(address(0));
            return;
        }

        // Validate the new price feed works with our peg token
        _setPriceFeedWithValidation(newPriceFeed, address(_getPegToken()));
    }

    /// @dev Validates and sets the price feed during initialization or updates
    /// @param newPriceFeed The price feed contract address
    /// @param pegTokenAddress The peg token address to validate pricing for
    function _setPriceFeedWithValidation(address newPriceFeed, address pegTokenAddress) internal {
        // Test that the price feed can provide a valid price for the peg token
        try IPriceFeed(newPriceFeed).fetchPrice(pegTokenAddress) returns (uint256 price) {
            // Validate the price is reasonable (not zero)
            if (price == 0) revert PSM_InvalidPriceFeed(newPriceFeed);

            // Check if price is within the same deviation threshold used for operations
            uint256 deviation = _calculatePriceDeviation(price);
            if (deviation > maxPriceDeviation) revert PSM_PriceDeviationTooHigh(price, maxPriceDeviation);

            // Price feed is valid, set it
            emit PriceFeedUpdated(address(priceFeed), newPriceFeed);
            priceFeed = IPriceFeed(newPriceFeed);
        } catch {
            // Price feed failed to return a price for the peg token
            revert PSM_InvalidPriceFeed(newPriceFeed);
        }
    }

    /// @notice Sets the maximum price deviation threshold
    /// @param newMaxDeviation The new maximum price deviation threshold ()
    function setMaxPriceDeviation(uint256 newMaxDeviation) external override onlyRole(_getConfigRole()) {
        _setMaxPriceDeviation(newMaxDeviation);
    }

    function _setMaxPriceDeviation(uint256 newMaxDeviation) internal {
        if (newMaxDeviation == 0) revert PSM_InvalidMaxPriceDeviation(newMaxDeviation);
        if (newMaxDeviation > PRECISION) revert PSM_InvalidMaxPriceDeviation(newMaxDeviation);
        emit MaxPriceDeviationUpdated(maxPriceDeviation, newMaxDeviation);
        maxPriceDeviation = newMaxDeviation;
    }

    // ------------------------------------------------------------------------
    // Price Feed & Validation Functions
    // ------------------------------------------------------------------------

    /// @notice Gets the current price of the peg token from the price feed
    /// @return priceUsdX18 The current price in USD with 18 decimals
    function getPegTokenPrice() external override returns (uint256 priceUsdX18) {
        if (address(priceFeed) == address(0)) revert PSM_InvalidPriceFeed(address(0));
        return priceFeed.fetchPrice(address(_getPegToken()));
    }

    /// @notice Checks if the current peg token price is within acceptable deviation
    /// @return isValid True if price is within acceptable range
    /// @return currentPrice The current price of the peg token
    /// @return deviation The current deviation from $1 (1e18 = 100%)
    function isPegTokenPriceValid() external override returns (bool isValid, uint256 currentPrice, uint256 deviation) {
        if (address(priceFeed) == address(0)) revert PSM_InvalidPriceFeed(address(0));
        currentPrice = priceFeed.fetchPrice(address(_getPegToken()));
        deviation = _calculatePriceDeviation(currentPrice);
        isValid = deviation <= maxPriceDeviation;
    }

    /// @dev Calculates price deviation from $1 target
    /// @param currentPrice The current price to check
    /// @return deviation The deviation percentage (1e18 = 100%)
    function _calculatePriceDeviation(uint256 currentPrice) internal pure returns (uint256 deviation) {
        uint256 targetPrice = 1e18; // $1.00
        deviation = currentPrice > targetPrice
            ? ((currentPrice - targetPrice) * PRECISION) / targetPrice
            : ((targetPrice - currentPrice) * PRECISION) / targetPrice;
    }

    /// @dev Validates current peg price and reverts if outside acceptable range
    function _validatePegPrice() internal {
        if (address(priceFeed) == address(0)) {
            return;
        }

        (bool isValid, uint256 currentPrice, ) = this.isPegTokenPriceValid();
        if (!isValid) {
            revert PSM_PriceDeviationTooHigh(currentPrice, maxPriceDeviation);
        }
    }
}
