// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import {IERC20Metadata} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title DecimalConversionLib
 * @notice Library for converting token amounts to/from standardized 6-decimal USD representation
 * @dev Used by CTFExchangeFeeManager to reduce contract size while maintaining decimal conversion functionality
 */
library DecimalConversionLib {
    /**
     * @notice Convert token amount to 6-decimal USD value
     * @param collateralToken The ERC20 token address
     * @param amount The amount in token's native decimals
     * @param cachedDecimals Cached decimal value (0 if unknown)
     * @return usdValue The equivalent value in 6-decimal USD representation
     */
    function convertToUsd(
        address collateralToken,
        uint256 amount,
        uint8 cachedDecimals
    ) internal view returns (uint256 usdValue) {
        uint8 decimals = cachedDecimals;

        // Fetch decimals if not cached
        if (decimals == 0) {
            try IERC20Metadata(collateralToken).decimals() returns (uint8 _decimals) {
                decimals = _decimals;
            } catch {
                decimals = 18; // Default to 18 decimals
            }
        }

        // Convert to 6-decimal representation
        if (decimals > 6) {
            usdValue = amount / (10 ** (decimals - 6));
        } else if (decimals < 6) {
            usdValue = amount * (10 ** (6 - decimals));
        } else {
            usdValue = amount;
        }
    }

    /**
     * @notice Convert 6-decimal USD value to token amount
     * @param collateralToken The ERC20 token address
     * @param usdValue The value in 6-decimal USD representation
     * @param cachedDecimals Cached decimal value (0 if unknown)
     * @return amount The equivalent amount in token's native decimals
     */
    function convertFromUsd(
        address collateralToken,
        uint256 usdValue,
        uint8 cachedDecimals
    ) internal view returns (uint256 amount) {
        uint8 decimals = cachedDecimals;

        // Fetch decimals if not cached
        if (decimals == 0) {
            try IERC20Metadata(collateralToken).decimals() returns (uint8 _decimals) {
                decimals = _decimals;
            } catch {
                decimals = 18; // Default to 18 decimals
            }
        }

        // Convert from 6-decimal representation
        if (decimals > 6) {
            amount = usdValue * (10 ** (decimals - 6));
        } else if (decimals < 6) {
            amount = usdValue / (10 ** (6 - decimals));
        } else {
            amount = usdValue;
        }
    }
}
