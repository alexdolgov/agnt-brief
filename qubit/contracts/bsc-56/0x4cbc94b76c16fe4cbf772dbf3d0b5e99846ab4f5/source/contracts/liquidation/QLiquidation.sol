// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
      ___       ___       ___       ___       ___
     /\  \     /\__\     /\  \     /\  \     /\  \
    /::\  \   /:/ _/_   /::\  \   _\:\  \    \:\  \
    \:\:\__\ /:/_/\__\ /::\:\__\ /\/::\__\   /::\__\
     \::/  / \:\/:/  / \:\::/  / \::/\/__/  /:/\/__/
     /:/  /   \::/  /   \::/  /   \:\__\    \/__/
     \/__/     \/__/     \/__/     \/__/

*
* MIT License
* ===========
*
* Copyright (c) 2021 QubitFinance
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
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "../library/SafeToken.sol";
import "../library/WhitelistUpgradeable.sol";

import "../interfaces/IBEP20.sol";
import "../interfaces/ISwapCallee.sol";
import "../interfaces/IPancakePair.sol";
import "../interfaces/IPancakeRouter02.sol";
import "../interfaces/IQore.sol";
import "../interfaces/IQToken.sol";
import "../interfaces/IWETH.sol";
import "../interfaces/IPriceCalculator.sol";


contract QLiquidation is ISwapCallee, WhitelistUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANTS ============= */

    IQore public constant Qore = IQore(0xF70314eb9c7Fe7D88E6af5aa7F898b3A162dcd48);
    IPriceCalculator public constant PriceCalculatorBSC = IPriceCalculator(0x20E5E35ba29dC3B540a1aee781D0814D5c77Bce6);

    IPancakeRouter02 private constant ROUTER = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IPancakeRouter02 private constant ROUTER_MDEX = IPancakeRouter02(0x7DAe51BD3E3376B8c7c4900E9107f12Be3AF1bA8);

    address private constant qBNB = 0x3A783ACe7fd7403584B89FB7979c536b22c2495C;
    address private constant qETH = 0x7d80D724574a1DE5D5dfCba4B0ABDB7940E9D619;
    address private constant qBUSD = 0xEfB6200fF7Cb8C7db063677Bfdcc5644eCd0807c;
    address private constant qDAI = 0xC33908b12064538960E9080e32dC8eB98F93Dd79;
    address private constant qUSDT = 0xEaF1DA1D139CB5d510f42a28316331e9447Be278;
    address private constant qUSDC = 0xd274A1b63b96EF7a3e62A988E4Fed7beaa029F91;
    address private constant qBTC = 0xf309025CBA96E48205fB00b97520DcC432cf5690;
    address private constant qCAKE = 0x93b4c48D54f9ccb7EA6032fCE0C8bfBD12834307;
    address private constant qQBT = 0xED6f544b495159739676354DcB525a887359681a;
    address private constant qBUNNY = 0xD0cEcf8cA3969178795123d89C3f50c8D2891665;

    address private constant BUNNY_BNB = 0x5aFEf8567414F29f0f927A0F2787b188624c10E2;
    address private constant CAKE_BNB = 0x0eD7e52944161450477ee417DE9Cd3a859b14fD0;

    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant BTC = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;
    address private constant ETH = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;
    address private constant DAI = 0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3;  // BUSD pair
    address private constant BUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address private constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address private constant USDC = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d; // BUSD pair
    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant QBT = 0x17B7163cf1Dbd286E262ddc68b553D899B93f526;
    address private constant BUNNY = 0xC9849E6fdB743d08fAeE3E34dd2D1bc69EA11a51;


    /* ========== STATE VARIABLES ========== */

    mapping(address => address) private _routePairAddresses;

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __WhitelistUpgradeable_init();
        __ReentrancyGuard_init();

        for (uint i = 0; i < underlyingTokens().length; i++) {
            address underlying = underlyingTokens()[i];
            if (underlying != QBT) {
                IBEP20(underlying).approve(address(ROUTER), uint(- 1));
            }
            IBEP20(underlying).approve(qTokens()[i], uint(- 1));
        }

        IBEP20(WBNB).approve(address(ROUTER_MDEX), uint(- 1));
    }

    /* ========== VIEWS ========== */

    function underlyingTokens() public pure returns (address[10] memory) {
        return [WBNB, BTC, ETH, DAI, USDC, BUSD, USDT, CAKE, QBT, BUNNY];
    }

    function qTokens() public pure returns (address[10] memory) {
        return [qBNB, qBTC, qETH, qDAI, qUSDC, qBUSD, qUSDT, qCAKE, qQBT, qBUNNY];
    }

    /* ========== RESTRICTED FUNCTION ========== */

    function setRoutePairAddress(address token, address route) external onlyOwner {
        require(route != address(0), "QLiquidation: invalid route address");
        _routePairAddresses[token] = route;
    }

    function approveTokenForRouter(address token) external onlyOwner {
        IBEP20(token).approve(address(ROUTER), uint(- 1));
    }

    function approveToken(address token) external onlyOwner {
        for (uint i = 0; i < underlyingTokens().length; i++) {
            address underlying = underlyingTokens()[i];
            if (underlying == token) {
                IBEP20(underlying).approve(address(ROUTER), uint(- 1));
                IBEP20(underlying).approve(qTokens()[i], uint(- 1));
            }
        }
    }

    /* ========== Pancake Callback FUNCTION ========== */

    function pancakeCall(address, uint, uint, bytes calldata data) external override {
        require(msg.sender == BUNNY_BNB || msg.sender == CAKE_BNB, "QLiquidation: only used for BUNNY_BNB or CAKE_BNB");
        (address qTokenBorrowed, address qTokenCollateral, address borrower, uint loanBalance, uint amount) = abi.decode(data, (address, address, address, uint, uint));

        uint liquidateBalance = Math.min(_swapWBNBtoBorrowToken(qTokenBorrowed, loanBalance), amount);
        _liquidate(qTokenBorrowed, qTokenCollateral, borrower, liquidateBalance);

        _repayToSwap(
            qTokenCollateral,
            loanBalance.mul(10000).div(9975).add(1),
            msg.sender
        );
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function liquidate(address qTokenBorrowed, address qTokenCollateral, address borrow, uint amount) external onlyWhitelisted nonReentrant {
        _flashloan(qTokenBorrowed, qTokenCollateral, borrow, amount);
    }

    function autoLiquidate(address account) external onlyWhitelisted nonReentrant {
        (uint collateralInUSD, , uint borrowInUSD) = Qore.accountLiquidityOf(account);
        require(borrowInUSD > collateralInUSD, "QLiquidation: Insufficient shortfall");

        (address qTokenBorrowed, address qTokenCollateral, uint liquidateAmount) = _getTargetMarkets(account);
        _flashloan(qTokenBorrowed, qTokenCollateral, account, liquidateAmount);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _liquidate(address qTokenBorrowed, address qTokenCollateral, address borrower, uint amount) private {
        uint qTokenCollateralBalance = IQToken(qTokenCollateral).balanceOf(address(this));
        if (IQToken(qTokenBorrowed).underlying() == WBNB) {
            IWETH(WBNB).withdraw(amount);
            Qore.liquidateBorrow{value : amount}(qTokenBorrowed, qTokenCollateral, borrower, 0);
        } else {
            Qore.liquidateBorrow(qTokenBorrowed, qTokenCollateral, borrower, amount);
        }

        _redeemToken(qTokenCollateral, IQToken(qTokenCollateral).balanceOf(address(this)).sub(qTokenCollateralBalance));
    }

    function _getTargetMarkets(address account) private view returns (address qTokenBorrowed, address qTokenCollateral, uint liquidateAmount) {
        uint maxSupplied;
        uint maxBorrowed;
        address[] memory markets = Qore.marketListOf(account);
        for (uint i = 0; i < markets.length; i++) {
            uint borrow = IQToken(markets[i]).borrowBalanceOf(account);
            uint supply = IQToken(markets[i]).underlyingBalanceOf(account);

            if (borrow > 0 && borrow > maxBorrowed) {
                maxBorrowed = borrow;
                qTokenBorrowed = markets[i];
            }

            uint collateralFactor = Qore.marketInfoOf(markets[i]).collateralFactor;
            if (collateralFactor > 0 && supply > 0 && supply > maxSupplied) {
                maxSupplied = supply;
                qTokenCollateral = markets[i];
            }
        }
        liquidateAmount = _getAvailableAmounts(qTokenBorrowed, qTokenCollateral, maxBorrowed, maxSupplied);
        return (qTokenBorrowed, qTokenCollateral, liquidateAmount);
    }

    function _getAvailableAmounts(address qTokenBorrowed, address qTokenCollateral, uint borrowAmount, uint supplyAmount) private view returns (uint closeAmount) {
        uint borrowPrice = PriceCalculatorBSC.getUnderlyingPrice(qTokenBorrowed);
        uint supplyPrice = PriceCalculatorBSC.getUnderlyingPrice(qTokenCollateral);
        require(supplyPrice != 0 && borrowPrice != 0, "QLiquidation: price error");

        uint borrowValue = borrowPrice.mul(borrowAmount).div(1e18);
        uint supplyValue = supplyPrice.mul(supplyAmount).div(1e18);

        uint maxCloseValue = borrowValue.mul(Qore.closeFactor()).div(1e18);
        uint maxCloseValueWithIncentive = maxCloseValue.mul(110).div(100);
        return closeAmount = maxCloseValueWithIncentive < supplyValue ? maxCloseValue.mul(1e18).div(borrowPrice)
                                                                      : supplyValue.mul(90).div(100).mul(1e18).div(borrowPrice);
    }

    function _swapWBNBtoBorrowToken(address _qTokenBorrowed, uint loanBalance) private returns (uint liquidateBalance) {
        address underlying = IQToken(_qTokenBorrowed).underlying();
        liquidateBalance = 0;
        if (underlying == WBNB) {
            liquidateBalance = loanBalance;
        } else {
            uint before = IBEP20(underlying).balanceOf(address(this));

            address[] memory path = new address[](2);
            path[0] = WBNB;
            path[1] = underlying;

            ROUTER.swapExactTokensForTokens(loanBalance, 0, path, address(this), block.timestamp);
            liquidateBalance = IBEP20(underlying).balanceOf(address(this)).sub(before);
        }
    }

    function _flashloan(address _qTokenBorrowed, address _qTokenCollateral, address borrower, uint amount) private {
        address _underlying = IQToken(_qTokenBorrowed).underlying();

        uint borrowBalance;
        if (_underlying == WBNB) {
            borrowBalance = amount;
        } else if (_routePairAddresses[_underlying] != address(0)) {
            address[] memory path = new address[](3);
            path[0] = WBNB;
            path[1] = _routePairAddresses[_underlying];
            path[2] = _underlying;

            borrowBalance = ROUTER.getAmountsIn(amount, path)[0];
        } else {
            address[] memory path = new address[](2);
            path[0] = WBNB;
            path[1] = _underlying;

            borrowBalance = ROUTER.getAmountsIn(amount, path)[0];
        }

        if (_qTokenCollateral == qCAKE) {
            address flashLoanPool = BUNNY_BNB;
            IPancakePair(flashLoanPool).swap(
                borrowBalance, 0, address(this),
                abi.encode(_qTokenBorrowed, _qTokenCollateral, borrower, borrowBalance, amount)
            );
        }
        else {
            address flashLoanPool = CAKE_BNB;
            IPancakePair(flashLoanPool).swap(
                0, borrowBalance, address(this),
                abi.encode(_qTokenBorrowed, _qTokenCollateral, borrower, borrowBalance, amount)
            );
        }
    }

    function _redeemToken(address _qTokenCollateral, uint amount) private returns (uint) {
        IBEP20 collateralToken = IBEP20(IQToken(_qTokenCollateral).underlying());

        uint collateralBalance = collateralToken.balanceOf(address(this));
        Qore.redeemToken(_qTokenCollateral, amount);

        if (address(collateralToken) == WBNB) {
            IWETH(WBNB).deposit{value : address(this).balance}();
        }

        return collateralToken.balanceOf(address(this)).sub(collateralBalance);
    }

    function _repayToSwap(address _qTokenCollateral, uint repayAmount, address to) private {
        address collateralToken = IQToken(_qTokenCollateral).underlying();

        if (collateralToken != WBNB && _routePairAddresses[collateralToken] != address(0)) {
            address[] memory path = new address[](3);
            path[0] = collateralToken;
            path[1] = _routePairAddresses[collateralToken];
            path[2] = WBNB;

            ROUTER.swapTokensForExactTokens(repayAmount, IBEP20(collateralToken).balanceOf(address(this)), path, address(this), block.timestamp);
        } else if (collateralToken != WBNB) {
            address[] memory path = new address[](2);
            path[0] = collateralToken;
            path[1] = WBNB;

            ROUTER.swapTokensForExactTokens(repayAmount, IBEP20(collateralToken).balanceOf(address(this)), path, address(this), block.timestamp);
        }

        require(IBEP20(WBNB).balanceOf(address(this)) >= repayAmount, "QLiquidation: can't repay to pancake");
        WBNB.safeTransfer(to, repayAmount);
    }
}
