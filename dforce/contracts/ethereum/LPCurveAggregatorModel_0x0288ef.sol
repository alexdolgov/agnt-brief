// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// ============================================================
// FILE: contracts/aggregatorModelV2/AggregatorModelV2.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

/**
 * @title dForce's AggregatorModelV2 Contract
 * @author dForce
 * @notice The aggregator model is a reorganization of the third-party price oracle,
 *          so it can be applied to the priceOracle contract price system
 */
abstract contract AggregatorModelV2 {
    /**
     * @notice Read the price of the asset from the delegate aggregator.
     */
    function getAssetPrice(address _asset) external virtual returns (uint256, uint8);

    /**
    * @notice represents the number of decimals the aggregator responses represent.
    */
    // function decimals() external view virtual returns (uint8);

    /**
    * @notice the version number representing the type of aggregator the proxy points to.
    */
    function version() external view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/aggregatorModelV2/interface/ICurve.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface ICurvePool {
    function get_virtual_price() external view returns (uint256);

    function coins(uint256 _coinIndex) external view returns (address);

    function remove_liquidity_one_coin(
        uint256 _burnAmount,
        int128 _i,
        uint256 _minAmount,
        address _receiver
    ) external returns (uint256);

    function calc_withdraw_one_coin(uint256 _burnAmount, int128 _i)
        external
        view
        returns (uint256);
}

interface ICurveMeta is ICurvePool {
    function get_dy_underlying(
        int128 _i,
        int128 _j,
        uint256 _iAmount
    ) external view returns (uint256);

    function exchange_underlying(
        int128 _i,
        int128 _j,
        uint256 _iAmount,
        uint256 _minAmount
    ) external view returns (uint256);
}

interface ILPCurve {
    function minter() external view returns (address);
}

interface ICurveGauge {
    function lp_token() external view returns (address);
}

// ============================================================
// FILE: contracts/aggregatorModelV2/interface/IDForceLending.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IPriceOracle {
    /**
     * @notice Get the underlying price of a iToken asset
     * @param _iToken The iToken to get the underlying price of
     * @return The underlying asset price mantissa (scaled by 1e18).
     *  Zero means the price is unavailable.
     */
    function getUnderlyingPrice(IiToken _iToken) external returns (uint256);

    /**
     * @notice Get the price of a underlying asset
     * @param _iToken The iToken to get the underlying price of
     * @return The underlying asset price mantissa (scaled by 1e18).
     *  Zero means the price is unavailable and whether the price is valid.
     */
    function getUnderlyingPriceAndStatus(IiToken _iToken) external returns (uint256, bool);
}

interface IController {
    function priceOracle() external view returns (IPriceOracle);
}

interface IiToken {

    function isSupported() external view returns (bool);

    function isiToken() external view returns (bool);

    function decimals() external view returns (uint8);

    function balanceOf(address _account) external view returns (uint256);

    function totalSupply() external view returns (uint256);


    function accrualBlockNumber() external view returns (uint256);

    function getCash() external view returns (uint256);

    function totalBorrows() external view returns (uint256);

    function totalReserves() external view returns (uint256);

    function reserveRatio() external view returns (uint256);
    
    function borrowRatePerBlock() external view returns (uint256);


    function underlying() external view returns (address);

    function controller() external view returns (IController);

}

// ============================================================
// FILE: contracts/aggregatorModelV2/LPCurveAggregatorModel.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";

import "./AggregatorModelV2.sol";

import "./interface/ICurve.sol";
import "./interface/IDForceLending.sol";

contract LPCurveAggregatorModel is AggregatorModelV2 {
    using SafeMathUpgradeable for uint256;

    uint8 internal constant doubleDecimals = 36;

    /**
     * @notice Reads the current answer from aggregator delegated to.
     * @param _assetPrice:The price of the asset aggregator (scaled by decimals), zero under unexpected case.
     * @param _decimals:Asset price decimals
     */
    function getAssetPrice(address _asset) external override returns (uint256 _assetPrice, uint8 _decimals) {
        IiToken _iToken = IiToken(_asset);
        _assetPrice = _getPrice(_iToken.controller().priceOracle(), ICurveMeta(_iToken.underlying()));
        _decimals = _iToken.decimals();
        _decimals = doubleDecimals > _decimals ? doubleDecimals - _decimals : 0;
    }

    /**
    * @notice the version number representing the type of aggregator the proxy points to.
    * @return The aggregator version is uint256(-1).
    */
    function version() external view override returns (uint256) {
        return uint256(-1);
    }

    /**
     * @notice Retrieves price of an asset.
     * @dev Get price for an asset.
     * @param _priceOracle address of priceOracle to get asset price.
     * @param _lpCurve Asset for which to get the price.
     * @return The price of the asset (scaled by decimals), zero under unexpected case.
     */
    function getLpTokenPrice(IPriceOracle _priceOracle, ICurveMeta _lpCurve) external returns (uint256) {
        return _getPrice(_priceOracle, _lpCurve);
    }

    /**
     * @notice Retrieves price of an asset.
     * @dev Get price for an asset.
     * @param _priceOracle address of priceOracle to get asset price.
     * @param _lpCurve LP asset for which to get the price.
     * @return The price of the asset (scaled by decimals), zero under unexpected case.
     */
    function _getPrice(IPriceOracle _priceOracle, ICurveMeta _lpCurve) internal returns (uint256) {
        IiToken _coin = IiToken(_lpCurve.coins(0));
        return _priceOracle.getUnderlyingPrice(_coin).mul(_lpCurve.get_virtual_price()) / 10 ** uint256(doubleDecimals).sub(uint256(_coin.decimals()));
    }
}
