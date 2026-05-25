/*

FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU



						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337

	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337

	SPDX-License-Identifier: UNLICENSED

	(C) 2025 @i543 (543, Sam), Guru Network (Eliteness.Network)


	Solidly sAMM StableSwap 2pool Oracle
	Based on Impermax.Finance's Collateral Implementation.


	////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////

	- Initializable, proxy-supporting or Immutable (recommended).
	- Expected min/max price caps
	- Preset min reserves to function


	////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////


*/

pragma solidity 0.8.9;

interface ISolidlyPool {
    function metadata() external view returns (uint dec0, uint dec1, uint r0, uint r1, bool st, address t0, address t1) ;

	/*
        // Structure to capture time period obervations every 30 minutes, used for local oracles
    struct Observation {
        uint timestamp;
        uint reserve0Cumulative;
        uint reserve1Cumulative;
    }
    function observations(uint) external view returns(Observation);
	*/


    function getReserves() external view returns (
    	uint112 reserve0,
    	uint112 reserve1,
    	uint32 blockTimestampLast
    );

    function observationLength() external view returns (uint);
    function observations(uint) external view returns (
        uint timestamp,
        uint reserve0Cumulative,
        uint reserve1Cumulative
    );
    function currentCumulativePrices() external view returns (
        uint reserve0Cumulative,
        uint reserve1Cumulative,
        uint timestamp
    );
}

interface IERC20 {
	function decimals() external view returns(uint);
	function totalSupply() external view returns(uint);
}

interface IERC4626 is IERC20 {
	function asset() external view returns(address);
	function totalAssets() external view returns(uint);
	function convertToAssets(uint shares) external view returns(uint assets);
	function convertToShares(uint assets) external view returns(uint shares);
	function previewRedeem(uint shares) external view returns(uint assets);
	function previewWithdraw(uint assets) external view returns(uint shares);
}


// a library for performing various math operations
// forked from: https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/libraries/Math.sol
library Math {
    function min(uint x, uint y) internal pure returns (uint z) {
        z = x < y ? x : y;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}// From https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/Math.sol
// Subject to the MIT license.

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
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting with custom message on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, errorMessage);

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction underflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
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
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, errorMessage);

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts with custom message on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
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
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}



contract sAMM_Oracle{
	using SafeMath for uint;
	bool initialized;
	IERC4626 public immutable VAULT;
	IERC20 public immutable ASSET;
	ISolidlyPool public immutable POOL;

	uint public immutable decimals0;
	uint public immutable decimals1;
	bool public immutable isPoolToken1;

	uint public immutable minPrice;
	uint public immutable maxPrice;
	uint public immutable minReserve0;
	uint public immutable minReserve1;

	//function initialize(
	constructor(
		IERC4626 _vault4626,
		IERC20 _asset,
		ISolidlyPool _pool,
		uint _minPrice, // base 1e18
		uint _maxPrice, // base 1e18
		uint _minRes0, // base decimals0
		uint _minRes1 // base decimals1
	) {
		require( !initialized && address(_asset) != address(0) ,"reinit");
		initialized = true;
		VAULT = _vault4626;
		ASSET = _asset;
		POOL = _pool;
		minPrice = _minPrice;
		maxPrice = _maxPrice;
		minReserve0 = _minRes0;
		minReserve1 = _minRes1;

		address _t0;
		address _t1;
		(decimals0, decimals1, /*res0*/, /*res1*/, /*stable*/, _t0, _t1) = _pool.metadata();
		if(_t0 != address(_asset)) {
			require(_t1 == address(_asset), "wrong pool");
		}
		isPoolToken1 = (_t0 != address(_asset)) ? true : false;
		require( 10**VAULT.decimals() == (isPoolToken1 ? decimals1 : decimals0), "vd");
		require( VAULT.asset() == address(_asset), "va");

	}


	///////////////////////
	//  Utility Library  //
	///////////////////////

	function safe112(uint n) internal pure returns (uint112) {
		require(n < 2**112, "Impermax: SAFE112");
		return uint112(n);
	}

	function _k(uint x, uint y, uint d0, uint d1) internal pure returns (uint) {
		uint _x = x.mul(1e18).div(d0);
		uint _y = y.mul(1e18).div(d1);
		uint _a = _x.mul(_y).div(1e18);
		uint _b = _x.mul(_x).div(1e18).add(_y.mul(_y).div(1e18));
		return _a.mul(_b).div(1e18);  // x3y+y3x >= k
	}

    function _f(uint x0, uint y) internal pure returns (uint) {
        return x0*(y*y/1e18*y/1e18)/1e18+(x0*x0/1e18*x0/1e18)*y/1e18;
    }

    function _d(uint x0, uint y) internal pure returns (uint) {
        return 3*x0*(y*y/1e18)/1e18+(x0*x0/1e18*x0/1e18);
    }

    function _get_y(uint x0, uint xy, uint y) internal pure returns (uint) {
        for (uint i = 0; i < 255; i++) {
            uint y_prev = y;
            uint k = _f(x0, y);
            if (k < xy) {
                uint dy = (xy - k)*1e18/_d(x0, y);
                y = y + dy;
            } else {
                uint dy = (k - xy)*1e18/_d(x0, y);
                y = y - dy;
            }
            if (y > y_prev) {
                if (y - y_prev <= 1) {
                    return y;
                }
            } else {
                if (y_prev - y <= 1) {
                    return y;
                }
            }
        }
        return y;
    }



	//////////////////////////////////////////
	//  Impermax.Finance Collateral Module  //
	//////////////////////////////////////////

	function getTwapReserves() public view returns(uint112 twapReserve0, uint112 twapReserve1) {
		uint length = POOL.observationLength();
		(uint lastTimestamp, uint lastReserve0Cumulative, uint lastReserve1Cumulative) = POOL.observations(length-2);
		(uint reserve0Cumulative, uint reserve1Cumulative, uint timestamp) = POOL.currentCumulativePrices();
		uint timeElapsed = timestamp - lastTimestamp;
		twapReserve0 = safe112((reserve0Cumulative - lastReserve0Cumulative) / timeElapsed);
		twapReserve1 = safe112((reserve1Cumulative - lastReserve1Cumulative) / timeElapsed);
	}


	function getReservesAdjusted() public view returns (uint112 _reserve0adj, uint112 _reserve1adj) {
		(uint _twapReserve0, uint _twapReserve1) = getTwapReserves();

		//(uint decimals0, uint decimals1,,,,,) = POOL.metadata();
		(uint _currReserve0, uint _currReserve1, ) = POOL.getReserves();

		uint _twapK = _k(_twapReserve0, _twapReserve1, decimals0, decimals1);
		uint _currK = _k(_currReserve0, _currReserve1, decimals0, decimals1);

		uint _adjustment = Math.sqrt(Math.sqrt(_currK.mul(1e18).div(_twapK).mul(1e18)).mul(1e18));
		_reserve0adj = safe112(_twapReserve0.mul(_adjustment).div(1e18));
		_reserve1adj = safe112(_twapReserve1.mul(_adjustment).div(1e18));

		require(_reserve0adj > 100 && _reserve1adj > 100, "Impermax: INSUFFICIENT_RESERVES");
	}


    function getAmountOut(uint _amountIn, uint _reserve0, uint _reserve1) public view returns (uint) {
        uint _xy =  _k(_reserve0, _reserve1, decimals0, decimals1);
        _reserve0 = _reserve0 * 1e18 / decimals0;
        _reserve1 = _reserve1 * 1e18 / decimals1;
        (uint _reserveA, uint _reserveB) = (!isPoolToken1) ? (_reserve0, _reserve1) : (_reserve1, _reserve0);
        _amountIn = (!isPoolToken1) ? _amountIn * 1e18 / decimals0 : _amountIn * 1e18 / decimals1;
        uint _y = _reserveB - _get_y(_amountIn + _reserveA, _xy, _reserveB);
        return _y * ((!isPoolToken1) ? decimals1 : decimals0) / 1e18;
    }




	function getPricesOfVaultAndAsset() public view returns(uint,uint) {
		bool _i0 = !isPoolToken1;
		uint _r0;
		uint _r1;
		(_r0, _r1) = getReservesAdjusted();
		require(_r0 > minReserve0, "<mr0");
		require(_r1 > minReserve1, "<mr1");

		uint _ai = _i0 ? minReserve0 / 100 : minReserve1 / 100;
		uint _ao = getAmountOut( _ai, _r0, _r1);

		// interpolate price to 18 digits
		uint _price =
			1e18
			*
			( _ao * 1e18 / (_i0?decimals1:decimals0) )
			/
			( _ai * 1e18 / (_i0?decimals0:decimals1) )
		;

		require(_price >= minPrice, "<minp");
		require(_price <= maxPrice, ">maxp");

		uint _vsw = VAULT.previewWithdraw( _ai );
		require(_vsw <= _ai, "vuc");
		// so, _vsw = _ao;
		// hence, pv = ao/vsw
		uint _priceOfVaultShares =
			1e18
			*
			( _ao * 1e18 / (_i0?decimals1:decimals0) )
			/
			( _vsw * 1e18 / (_i0?decimals0:decimals1) )
		;

		return (_priceOfVaultShares, _price);
	}

	function getPriceOfVault() public view returns(uint) {
		(uint _p, ) = getPricesOfVaultAndAsset();
		return _p;
	}

	function getPriceOfAsset() public view returns(uint) {
		( , uint _p) = getPricesOfVaultAndAsset();
		return _p;
	}

}