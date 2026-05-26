// SPDX-License-Identifier: MIT
pragma solidity =0.6.12;
pragma experimental ABIEncoderV2;

/*

░██╗░░░░░░░██╗░█████╗░░█████╗░░░░░░░███████╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗░░░░░░██╔════╝██║
░╚██╗████╗██╔╝██║░░██║██║░░██║█████╗█████╗░░██║
░░████╔═████║░██║░░██║██║░░██║╚════╝██╔══╝░░██║
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝░░░░░░██║░░░░░██║
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░░░░░░░╚═╝░░░░░╚═╝

*
* MIT License
* ===========
*
* Copyright (c) 2020 WooTrade
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import './libraries/InitializableOwnable.sol';
import './libraries/DecimalMath.sol';
import './interfaces/IWooGuardian.sol';
import './interfaces/AggregatorV3Interface.sol';

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';

/// @title Woo guardian implementation.
contract WooGuardian is IWooGuardian, InitializableOwnable {
    using SafeMath for uint256;
    using DecimalMath for uint256;

    /* ----- Type declarations ----- */

    struct RefInfo {
        address chainlinkRefOracle; // chainlink oracle for price checking
        uint96 refPriceFixCoeff; // chainlink price fix coeff
        uint96 minInputAmount;
        uint96 maxInputAmount;
        uint64 bound;
    }

    /* ----- Events declarations ----- */
    event InputBoundUpdated(address indexed token, uint96 minInputAmount, uint96 maxInputAmount);

    /* ----- State variables ----- */

    uint96 constant MIN_INPUT_DEFAULT = 1e16; // 0.01 xToken

    uint96 constant MAX_INPUT_DEFAULT = 1e20; //  100 xToken

    mapping(address => RefInfo) public refInfo;

    // the bound for checking the price:
    // 1e18 = 100%, 1e17 = 10%, 1e16 = 1%, 1e15 = 0.1%, etc
    // NOTE:
    // globalBound <= 1e18 (100%)
    uint64 public globalBound;

    constructor() public {
        initOwner(msg.sender);
    }

    /* ----- External APIs ----- */

    function checkSwapPrice(
        uint256 price,
        address fromToken,
        address toToken
    ) external view override {
        require(fromToken != address(0), 'WooGuardian: fromToken_ZERO_ADDR');
        require(toToken != address(0), 'WooGuardian: toToken_ZERO_ADDR');

        if (refInfo[fromToken].chainlinkRefOracle == address(0) || refInfo[toToken].chainlinkRefOracle == address(0)) {
            return;
        }

        uint256 refPrice = _refPrice(fromToken, toToken);
        uint64 bound = _boundForTokens(fromToken, toToken);
        require(
            refPrice.mulFloor(1e18 - bound) <= price && price <= refPrice.mulCeil(1e18 + bound),
            'WooGuardian: PRICE_UNRELIABLE'
        );
    }

    function checkInputAmount(address token, uint256 inputAmount) external view override {
        require(token != address(0), 'WooGuardian: token_ZERO_ADDR');
        require(inputAmount < type(uint96).max, 'WooGuardian: inputAmount_uint96_OVERFLOW');
        RefInfo storage info = refInfo[token];
        uint96 minInputAmount = info.minInputAmount != 0 ? info.minInputAmount : MIN_INPUT_DEFAULT;
        uint96 maxInputAmount = info.maxInputAmount != 0 ? info.maxInputAmount : MAX_INPUT_DEFAULT;
        require(uint96(inputAmount) >= minInputAmount, 'WooGuardian: inputAmount_LTM');
        require(uint96(inputAmount) <= maxInputAmount, 'WooGuardian: inputAmount_GTM');
    }

    function checkSwapAmount(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount
    ) external view override {
        require(fromToken != address(0), 'WooGuardian: fromToken_ZERO_ADDR');
        require(toToken != address(0), 'WooGuardian: toToken_ZERO_ADDR');

        if (refInfo[fromToken].chainlinkRefOracle == address(0) || refInfo[toToken].chainlinkRefOracle == address(0)) {
            return;
        }

        uint256 refPrice = _refPrice(fromToken, toToken);
        uint256 refToAmount = fromAmount.mulFloor(refPrice);
        uint64 bound = _boundForTokens(fromToken, toToken);
        require(
            refToAmount.mulFloor(1e18 - bound) <= toAmount && toAmount <= refToAmount.mulCeil(1e18 + bound),
            'WooGuardian: TO_AMOUNT_UNRELIABLE'
        );
    }

    function setToken(
        address token,
        address chainlinkRefOracle,
        uint96 minInputAmount,
        uint96 maxInputAmount
    ) external onlyOwner {
        require(token != address(0), 'WooGuardian: token_ZERO_ADDR');

        setInputBound(token, minInputAmount, maxInputAmount);

        RefInfo storage info = refInfo[token];
        info.chainlinkRefOracle = chainlinkRefOracle;
        info.refPriceFixCoeff = _refPriceFixCoeff(token, chainlinkRefOracle);
        emit ChainlinkRefOracleUpdated(token, chainlinkRefOracle);
    }

    function setInputBound(
        address token,
        uint96 minInputAmount,
        uint96 maxInputAmount
    ) public onlyOwner {
        require(token != address(0), 'WooGuardian: token_ZERO_ADDR');
        require(minInputAmount < maxInputAmount, 'WooGuardian: min_max_INVALID');
        RefInfo storage info = refInfo[token];
        info.minInputAmount = minInputAmount;
        info.maxInputAmount = maxInputAmount;
        emit InputBoundUpdated(token, minInputAmount, maxInputAmount);
    }

    function setGlobalBound(uint64 newBound) external onlyOwner {
        require(newBound <= 1e18, 'WooGuardian: newBound out of range');
        globalBound = newBound;
    }

    function setTokenBound(address token, uint64 newBound) external onlyOwner {
        require(token != address(0), 'WooGuardian: token_ZERO_ADDR');
        require(newBound <= 1e18, 'WooGuardian: newBound out of range');
        RefInfo storage info = refInfo[token];
        info.bound = newBound;
    }

    /* ----- Private Methods ----- */

    function _refPriceFixCoeff(address token, address chainlink) private view returns (uint96) {
        if (chainlink == address(0)) {
            return 0;
        }

        // About decimals:
        // For a sell base trade, we have quoteSize = baseSize * price
        // For calculation convenience, the decimals of price is 18-base.decimals+quote.decimals
        // If we have price = basePrice / quotePrice, then decimals of tokenPrice should be 36-token.decimals()
        // We use chainlink oracle price as token reference price, which decimals is chainlinkPrice.decimals()
        // We should multiply it by 10e(36-(token.decimals+chainlinkPrice.decimals)), which is refPriceFixCoeff
        uint256 decimalsToFix = uint256(ERC20(token).decimals()).add(
            uint256(AggregatorV3Interface(chainlink).decimals())
        );
        uint256 refPriceFixCoeff = 10**(uint256(36).sub(decimalsToFix));
        require(refPriceFixCoeff <= type(uint96).max);
        return uint96(refPriceFixCoeff);
    }

    function _refPrice(address fromToken, address toToken) private view returns (uint256) {
        RefInfo memory baseInfo = refInfo[fromToken];
        RefInfo memory quoteInfo = refInfo[toToken];

        require(baseInfo.chainlinkRefOracle != address(0), 'WooGuardian: fromToken_RefOracle_INVALID');
        require(quoteInfo.chainlinkRefOracle != address(0), 'WooGuardian: toToken_RefOracle_INVALID');

        (, int256 rawBaseRefPrice, , , ) = AggregatorV3Interface(baseInfo.chainlinkRefOracle).latestRoundData();
        require(rawBaseRefPrice >= 0, 'WooGuardian: INVALID_CHAINLINK_PRICE');
        (, int256 rawQuoteRefPrice, , , ) = AggregatorV3Interface(quoteInfo.chainlinkRefOracle).latestRoundData();
        require(rawQuoteRefPrice >= 0, 'WooGuardian: INVALID_CHAINLINK_QUOTE_PRICE');
        uint256 baseRefPrice = uint256(rawBaseRefPrice).mul(uint256(baseInfo.refPriceFixCoeff));
        uint256 quoteRefPrice = uint256(rawQuoteRefPrice).mul(uint256(quoteInfo.refPriceFixCoeff));

        return baseRefPrice.divFloor(quoteRefPrice);
    }

    function _boundForTokens(address token1, address token2) private view returns (uint64) {
        RefInfo storage info1 = refInfo[token1];
        uint64 bound1 = info1.bound != 0 ? info1.bound : globalBound;

        RefInfo storage info2 = refInfo[token2];
        uint64 bound2 = info2.bound != 0 ? info2.bound : globalBound;

        return bound1 > bound2 ? bound1 : bound2;
    }

    function boundForTokensForTest(address token1, address token2) external view returns (uint64) {
        return _boundForTokens(token1, token2);
    }
}
