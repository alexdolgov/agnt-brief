// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

/*
  ___                      _   _
 | _ )_  _ _ _  _ _ _  _  | | | |
 | _ \ || | ' \| ' \ || | |_| |_|
 |___/\_,_|_||_|_||_\_, | (_) (_)
                    |__/

*
* MIT License
* ===========
*
* Copyright (c) 2020 BunnyFinance
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
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "../interfaces/IPancakePair.sol";
import "../interfaces/IPancakeRouter02.sol";
import "./ZapBSC.sol";
import "../dashboard/calculator/PriceCalculatorBSC.sol";

contract ZapPCS is OwnableUpgradeable {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== CONSTANT VARIABLES ========== */

    IPancakeRouter02 private constant ROUTER_V1 = IPancakeRouter02(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    IPancakeRouter02 private constant ROUTER_V2 = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    ZapBSC private constant zapBSC = ZapBSC(0xdC2bBB0D33E0e7Dea9F5b98F46EDBaC823586a0C);

    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant BUNNY = 0xC9849E6fdB743d08fAeE3E34dd2D1bc69EA11a51;
    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant BUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address private constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address private constant DAI = 0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3;
    address private constant USDC = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    address private constant VAI = 0x4BD17003473389A42DAF6a0a729f6Fdb328BbBd7;
    address private constant BTCB = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;
    address private constant ETH = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;

    address private constant BUNNY_BNB_V1 = 0x7Bb89460599Dbf32ee3Aa50798BBcEae2A5F7f6a;
    address private constant CAKE_BNB_V1 = 0xA527a61703D82139F8a06Bc30097cC9CAA2df5A6;
    address private constant BUSD_BNB_V1 = 0x1B96B92314C44b159149f7E0303511fB2Fc4774f;
    address private constant USDT_BNB_V1 = 0x20bCC3b8a0091dDac2d0BC30F68E6CBb97de59Cd;
    address private constant VAI_BUSD_V1 = 0xfF17ff314925Dff772b71AbdFF2782bC913B3575;
    address private constant USDT_BUSD_V1 = 0xc15fa3E22c912A276550F3E5FE3b0Deb87B55aCd;
    address private constant BTCB_BNB_V1 = 0x7561EEe90e24F3b348E1087A005F78B4c8453524;
    address private constant ETH_BNB_V1 = 0x70D8929d04b60Af4fb9B58713eBcf18765aDE422;

    address private constant BUNNY_BNB = 0x5aFEf8567414F29f0f927A0F2787b188624c10E2;
    address private constant CAKE_BNB = 0x0eD7e52944161450477ee417DE9Cd3a859b14fD0;
    address private constant BUSD_BNB = 0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16;
    address private constant USDT_BNB = 0x16b9a82891338f9bA80E2D6970FddA79D1eb0daE;
    address private constant VAI_BUSD = 0x133ee93FE93320e1182923E1a640912eDE17C90C;
    address private constant USDT_BUSD = 0x7EFaEf62fDdCCa950418312c6C91Aef321375A00;
    address private constant BTCB_BNB = 0x61EB789d75A95CAa3fF50ed7E47b96c132fEc082;
    address private constant ETH_BNB = 0x74E4716E431f45807DCF19f284c7aA99F18a4fbc;

    uint private constant DUST = 1000;

    /* ========== STATE VARIABLES ========== */

    mapping(address => address) private flipPairs;

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __Ownable_init();
        require(owner() != address(0), "Zap: owner must be set");

        flipPairs[BUNNY_BNB_V1] = BUNNY_BNB;
        flipPairs[CAKE_BNB_V1] = CAKE_BNB;
        flipPairs[BUSD_BNB_V1] = BUSD_BNB;
        flipPairs[USDT_BNB_V1] = USDT_BNB;
        flipPairs[VAI_BUSD_V1] = VAI_BUSD;
        flipPairs[USDT_BUSD_V1] = USDT_BUSD;
        flipPairs[BTCB_BNB_V1] = BTCB_BNB;
        flipPairs[ETH_BNB_V1] = ETH_BNB;
    }

    receive() external payable {}

    function setFlipPairs() external onlyOwner {
        flipPairs[BUNNY_BNB_V1] = BUNNY_BNB;
        flipPairs[CAKE_BNB_V1] = CAKE_BNB;
        flipPairs[BUSD_BNB_V1] = BUSD_BNB;
        flipPairs[USDT_BNB_V1] = USDT_BNB;
        flipPairs[VAI_BUSD_V1] = VAI_BUSD;
        flipPairs[USDT_BUSD_V1] = USDT_BUSD;
        flipPairs[BTCB_BNB_V1] = BTCB_BNB;
        flipPairs[ETH_BNB_V1] = ETH_BNB;
    }

    /* ========== External Functions ========== */

    function flipToFlip(address flipV1, uint amount) public returns (address flipV2) {
        flipV2 = flipPairs[flipV1];
        (address token0, address token1) = flipOutV1(flipV1, amount);

        flipInV2(token0, token1);
        dustInV2(flipV2, token0, token1);
        IBEP20(flipV2).safeTransfer(msg.sender, IBEP20(flipV2).balanceOf(address(this)));
    }

    function priceValidation(address flipV1, uint factor) public view returns (bool) {
        // factor: basis 1000, range [0-10]
        // faction 10 = 1%

        IPancakePair pairV1 = IPancakePair(flipV1);
        address[] memory tokensV1 = new address[](2);
        tokensV1[0] = pairV1.token0();
        tokensV1[1] = pairV1.token1();

        IPancakePair pairV2 = IPancakePair(flipPairs[flipV1]);
        address[] memory tokensV2 = new address[](2);
        tokensV2[0] = pairV2.token0();
        tokensV2[1] = pairV2.token1();

        uint threshold = factor.mul(1e18).div(1000);
        bool available0 = true;
        bool available1 = true;
        {
            PriceCalculatorBSC priceCalculatorV1 = PriceCalculatorBSC(0x542c06a5dc3f27e0fbDc9FB7BC6748f26d54dDb0);
            PriceCalculatorBSC priceCalculatorV2 = PriceCalculatorBSC(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);
            uint[] memory pricesV1 = priceCalculatorV1.pricesInUSD(tokensV1);
            uint[] memory pricesV2 = priceCalculatorV2.pricesInUSD(tokensV2);

            uint diff0 = pricesV1[0] > pricesV2[0] ? pricesV1[0].sub(pricesV2[0]) : pricesV2[0].sub(pricesV1[0]);
            uint diff1 = pricesV1[1] > pricesV2[1] ? pricesV1[1].sub(pricesV2[1]) : pricesV2[1].sub(pricesV1[1]);
            uint ratio0 = diff0.mul(1e18).div(pricesV1[0]);
            uint ratio1 = diff1.mul(1e18).div(pricesV1[1]);
            available0 = ratio0 <= threshold;
            available1 = ratio1 <= threshold;
        }
        return available0 && available1;
    }

    function prices(address flipV1) public view returns (uint, uint, uint, uint) {
        // factor: basis 1000, range [0-10]
        // faction 10 = 1%

        IPancakePair pairV1 = IPancakePair(flipV1);
        address[] memory tokensV1 = new address[](2);
        tokensV1[0] = pairV1.token0();
        tokensV1[1] = pairV1.token1();

        IPancakePair pairV2 = IPancakePair(flipPairs[flipV1]);
        address[] memory tokensV2 = new address[](2);
        tokensV2[0] = pairV2.token0();
        tokensV2[1] = pairV2.token1();

        PriceCalculatorBSC priceCalculatorV1 = PriceCalculatorBSC(0x542c06a5dc3f27e0fbDc9FB7BC6748f26d54dDb0);
        PriceCalculatorBSC priceCalculatorV2 = PriceCalculatorBSC(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);
        uint[] memory pricesV1 = priceCalculatorV1.pricesInUSD(tokensV1);
        uint[] memory pricesV2 = priceCalculatorV2.pricesInUSD(tokensV2);
        return (pricesV1[0], pricesV1[1], pricesV2[0], pricesV2[1]);
    }

    function flipOutV1(address flipV1, uint amount) internal returns (address token0, address token1) {
        IBEP20(flipV1).safeTransferFrom(msg.sender, address(this), amount);
        _approveTokenIfNeededV1(flipV1);

        IPancakePair pair = IPancakePair(flipV1);
        token0 = pair.token0();
        token1 = pair.token1();
        ROUTER_V1.removeLiquidity(token0, token1, amount, 0, 0, address(this), block.timestamp);
    }

    function flipInV2(address token0, address token1) internal {
        uint tokenAmount0 = IBEP20(token0).balanceOf(address(this));
        uint tokenAmount1 = IBEP20(token1).balanceOf(address(this));

        _approveTokenIfNeededV2(token0);
        _approveTokenIfNeededV2(token1);
        ROUTER_V2.addLiquidity(token0, token1, tokenAmount0, tokenAmount1, 0, 0, address(this), block.timestamp);
    }

    function dustInV2(address flipV2, address token0, address token1) internal {
        uint bnbBalance = address(this).balance;
        if (bnbBalance > DUST) {
            zapBSC.zapIn{value : bnbBalance}(flipV2);
        }

        uint tokenAmount0 = IBEP20(token0).balanceOf(address(this));
        if (tokenAmount0 > DUST) {
            if (IBEP20(token0).allowance(address(this), address(zapBSC)) == 0) {
                IBEP20(token0).safeApprove(address(zapBSC), uint(- 1));
            }
            zapBSC.zapInToken(token0, tokenAmount0, flipV2);
        }

        uint tokenAmount1 = IBEP20(token1).balanceOf(address(this));
        if (tokenAmount1 > DUST) {
            if (IBEP20(token1).allowance(address(this), address(zapBSC)) == 0) {
                IBEP20(token1).safeApprove(address(zapBSC), uint(- 1));
            }
            zapBSC.zapInToken(token1, tokenAmount1, flipV2);
        }
    }

    /* ========== Private Functions ========== */

    function _approveTokenIfNeededV1(address token) private {
        if (IBEP20(token).allowance(address(this), address(ROUTER_V1)) == 0) {
            IBEP20(token).safeApprove(address(ROUTER_V1), uint(- 1));
        }
    }

    function _approveTokenIfNeededV2(address token) private {
        if (IBEP20(token).allowance(address(this), address(ROUTER_V2)) == 0) {
            IBEP20(token).safeApprove(address(ROUTER_V2), uint(- 1));
        }
    }
}
