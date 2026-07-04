/**
 *Submitted for verification at ftmscan.com on 2023-04-10
*/

/**
 *Submitted for verification at FtmScan.com on 2023-02-21
*/

/**
 *v1.1.0
 *0xc9ab1ab21358f4fc36cbbbe27f3b3ead423ec33b
 *Submitted for verification at FtmScan.com on 2022-11-03
*/


/**
 *  EQUALIZER EXCHANGE
 *  The New Liquidity Hub of Fantom chain!
 *  https://equalizer.exchange  (Dapp)
 *  https://discord.gg/MaMhbgHMby   (Community)
 *
 *
 *  Version: 1.3.8
 *  - Clarify Fee-Claims are once per veNFT per 7 days per pool
 *  - Real-time Countdown
 *
 *
 *  Contributors:
 *   -   Andre Cronje, Solidly.Exchange
 *   -   Velodrome.finance Team
 *   -   @smartcoding51
 *   -   Sam 543#3017, Equalizer Team
 *
 *
 *   SPDX-License-Identifier: UNLICENSED
 *
*/


// File: contracts/interfaces/IPairFactory.sol


pragma solidity 0.8.9;

contract solidlyRouterCalcs {


    function _f(uint x0, uint y) public pure returns (uint) {
        return x0*(y*y/1e18*y/1e18)/1e18+(x0*x0/1e18*x0/1e18)*y/1e18;
    }

    function _d(uint x0, uint y) public pure returns (uint) {
        return 3*x0*(y*y/1e18)/1e18+(x0*x0/1e18*x0/1e18);
    }

    function _get_y(uint x0, uint xy, uint y) public pure returns (uint) {
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

    function _getAmountOut(bool _stable, uint _decimals0, uint _decimals1, uint amountIn, uint _reserve0, uint _reserve1, uint _fee1e18) public pure returns (uint) {
        amountIn -= amountIn * _fee1e18 / 1e18; // remove fee from amount received
        if (_stable) {
            uint xy =  _k(_reserve0, _reserve1, _stable, _decimals0, _decimals1);
            _reserve0 = _reserve0 * 1e18 / _decimals0;
            _reserve1 = _reserve1 * 1e18 / _decimals1;
            (uint reserveA, uint reserveB) = (_reserve0, _reserve1) ;
            amountIn = amountIn * 1e18 / _decimals0 ;
            uint y = reserveB - _get_y(amountIn+reserveA, xy, reserveB);
            return y * (_decimals1) / 1e18;
        } else {
            (uint reserveA, uint reserveB) = (_reserve0, _reserve1);
            return amountIn * reserveB / (reserveA + amountIn);
        }
    }

    function _k(uint x, uint y, bool _stable, uint _decimals0, uint _decimals1) public pure returns (uint) {
        if (_stable) {
            uint _x = x * 1e18 / _decimals0;
            uint _y = y * 1e18 / _decimals1;
            uint _a = (_x * _y) / 1e18;
            uint _b = ((_x * _x) / 1e18 + (_y * _y) / 1e18);
            return _a * _b / 1e18;  // x3y+y3x >= k
        } else {
            return x * y; // xy >= k
        }
    }

}