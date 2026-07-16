// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

library PriceLib {
    using Math for uint;

    // WAD adjusted result
    function convertToValue(uint amount, uint price, uint8 decimals) internal pure returns (uint) {
        return amount * price / 10 ** decimals;
    }

    function convertToAmount(uint amountInUsd, uint collPrice, uint8 collDecimals, Math.Rounding rounding) internal pure returns (uint) {
        if (collPrice == 0 || amountInUsd == 0) {
            return 0;
        }

        return amountInUsd.mulDiv(10 ** collDecimals, collPrice, rounding);
    }

    // Coll decimal adjust amount result
    function convertAssetsToCollAmount(uint assets, uint collPrice, uint debtTokenPrice, uint8 assetDecimals, uint8 collDecimals, Math.Rounding rounding) internal pure returns (uint) {
        uint assetsUsdValue = assets.mulDiv(debtTokenPrice, 10 ** assetDecimals, rounding);

        if (collPrice != 0) {
            return convertToAmount(assetsUsdValue, collPrice, collDecimals, rounding);
        } else {
            return 0;
        }
    }

    function convertCollAmountToAssets(uint collAmount, uint collPrice, uint debtTokenPrice, uint8 assetDecimals, uint8 collDecimals) internal pure returns (uint) {
        uint collUsdValue = collAmount * collPrice / 10 ** collDecimals;
        
        if (debtTokenPrice != 0) {
            return collUsdValue * 10 ** assetDecimals / debtTokenPrice;
        } else {
            return 0;
        }
    }

    /// @notice Converts token amount from one token to another using their prices
    /// @dev Uses single mulDiv for maximum precision - combines price and decimal conversions
    /// @dev Formula: tokenInAmount * tokenInPrice * 10^tokenOutDecimals / (10^tokenInDecimals * tokenOutPrice)
    /// @param tokenInAmount Amount of input token
    /// @param tokenInPrice Price of input token (in same base as tokenOutPrice)
    /// @param tokenOutPrice Price of output token
    /// @param tokenInDecimals Decimals of input token
    /// @param tokenOutDecimals Decimals of output token
    /// @param rounding Rounding direction
    /// @return Output token amount
    function convertToTokenAmount(
        uint tokenInAmount, 
        uint tokenInPrice, 
        uint tokenOutPrice, 
        uint8 tokenInDecimals, 
        uint8 tokenOutDecimals, 
        Math.Rounding rounding
    ) internal pure returns (uint) {
        if (tokenOutPrice == 0 || tokenInPrice == 0 || tokenInAmount == 0) {
            return 0;
        }

        // Combining into single mulDiv to preserve maximum precision
        uint numeratorFactor = tokenInPrice * (10 ** tokenOutDecimals);
        uint denominatorFactor = (10 ** tokenInDecimals) * tokenOutPrice;

        return tokenInAmount.mulDiv(numeratorFactor, denominatorFactor, rounding);
    }
}