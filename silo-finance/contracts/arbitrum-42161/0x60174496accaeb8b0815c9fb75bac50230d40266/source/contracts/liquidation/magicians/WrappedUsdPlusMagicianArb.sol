// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "./interfaces/IMagician.sol";
import "./interfaces/ICurveMetaPoolLike.sol";
import "../../priceProviders/wrappedUsdPlus/interfaces/IWrappedUsdPlusLike.sol";

contract WrappedUsdPlusMagicianArb is IMagician {
    address public constant WRAPPED_USD_PLUS = 0xB86fb1047A955C0186c77ff6263819b37B32440D;
    address public constant USD_PLUS = 0xe80772Eaf6e2E18B651F160Bc9158b2A5caFCA65;
    address public constant USDC = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
    address public constant CURVE_USD_PLUS_POOL = 0xb34a7d1444a707349Bc7b981B7F2E1f20F81F013;
    int128 public constant CURVE_USD_PLUS_INDEX = 0;
    int128 public constant CURVE_USDC_INDEX = 2;
    uint256 public constant UNKNOWN_AMOUNT_OUT = 1;

    error InvalidAsset();
    error Unsupported();

    /// @inheritdoc IMagician
    // solhint-disable-next-line named-return-values
    function towardsNative(address _asset, uint256 _amount) external returns (address, uint256) {
        if (_asset != address(WRAPPED_USD_PLUS)) revert InvalidAsset();

        uint256 usdPlusOut = IWrappedUsdPlusLike(WRAPPED_USD_PLUS).redeem(_amount, address(this), address(this));
        IERC20(USD_PLUS).approve(CURVE_USD_PLUS_POOL, usdPlusOut);

        uint256 usdcOut = ICurveMetaPoolLike(CURVE_USD_PLUS_POOL).exchange_underlying(
            CURVE_USD_PLUS_INDEX,
            CURVE_USDC_INDEX,
            usdPlusOut,
            UNKNOWN_AMOUNT_OUT
        );

        return (USDC, usdcOut);
    }

    /// @inheritdoc IMagician
    function towardsAsset(address, uint256) external pure returns (address, uint256) {
        revert Unsupported();
    }
}
