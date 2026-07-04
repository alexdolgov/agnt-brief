// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

library ShareMath {
    uint256 internal constant PLACEHOLDER_UINT = 1;
    uint256 internal constant TINY_THRESHOLD = 1e4;

    function assetToShares(
        uint256 assetAmount,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");

        return (assetAmount * (10 ** decimals)) / (assetPerShare);
    }

    function assetToSharesUp(
        uint256 assetAmount,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");

        uint256 numerator = assetAmount * (10 ** decimals);
        uint256 denominator = assetPerShare;

        return (numerator + denominator - 1) / denominator;
    }

    function sharesToAsset(
        uint256 shares,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");

        return (shares * assetPerShare) / (10 ** decimals);
    }

    function sharesToAssetUp(
        uint256 shares,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");

        uint256 numerator = shares * assetPerShare;
        uint256 denominator = 10 ** decimals;

        return (numerator + denominator - 1) / denominator;
    }

    function pricePerShare(
        uint256 totalShares,
        uint256 totalAssets,
        uint256 decimals
    ) internal pure returns (uint256) {
        return
            totalShares > 0
                ? (totalAssets * (10 ** decimals)) / totalShares
                : (10 ** decimals);
    }

    function zeroIfTiny(uint256 value) internal pure returns (uint256) {
        return value < TINY_THRESHOLD ? 0 : value;
    }

    function toDecimals(
        uint256 price,
        int32 expo
    ) internal pure returns (uint256) {
        if (expo < -18) {
            // too small, scale down
            return price / 10 ** uint32(-expo - 18);
        } else if (expo > -18) {
            // scale up
            return price * 10 ** uint32(expo + 18);
        } else {
            return price;
        }
    }
}
