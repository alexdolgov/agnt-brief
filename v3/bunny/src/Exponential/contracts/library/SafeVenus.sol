// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

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
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./SafeDecimal.sol";
import "../interfaces/IInterestModel.sol";
import "../interfaces/IPriceCalculator.sol";
import "../interfaces/IVenusDistribution.sol";
import "../interfaces/IVenusPriceOracle.sol";
import "../interfaces/IVToken.sol";
import "../interfaces/IVaultVenusBridge.sol";

import "../vaults/venus/VaultVenus.sol";

contract SafeVenus is OwnableUpgradeable {
    using SafeMath for uint;
    using SafeDecimal for uint;

    IPriceCalculator private constant PRICE_CALCULATOR = IPriceCalculator(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);
    IVenusDistribution private constant VENUS_UNITROLLER = IVenusDistribution(0xfD36E2c2a6789Db23113685031d7F16329158384);

    address private constant XVS = 0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63;
    uint private constant BLOCK_PER_DAY = 28800;

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __Ownable_init();
    }

    function valueOfUnderlying(IVToken vToken, uint amount) internal view returns (uint) {
        IVenusPriceOracle venusOracle = IVenusPriceOracle(VENUS_UNITROLLER.oracle());
        return venusOracle.getUnderlyingPrice(vToken).mul(amount).div(1e18);
    }

    /* ========== safeMintAmount ========== */

    function safeMintAmount(address payable vault) public view returns (uint mintable, uint mintableInUSD) {
        VaultVenus vaultVenus = VaultVenus(vault);
        mintable = vaultVenus.balanceAvailable().sub(vaultVenus.balanceReserved());
        mintableInUSD = valueOfUnderlying(vaultVenus.vToken(), mintable);
    }

    /* ========== safeBorrowAndRedeemAmount ========== */

    function safeBorrowAndRedeemAmount(address payable vault) public returns (uint borrowable, uint redeemable) {
        VaultVenus vaultVenus = VaultVenus(vault);
        uint collateralRatioLimit = vaultVenus.collateralRatioLimit();

        (, uint accountLiquidityInUSD,) = VENUS_UNITROLLER.getAccountLiquidity(address(vaultVenus.VENUS_BRIDGE()));
        uint stakingTokenPriceInUSD = valueOfUnderlying(vaultVenus.vToken(), 1e18);
        uint safeLiquidity = accountLiquidityInUSD.mul(1e18).div(stakingTokenPriceInUSD).mul(990).div(1000);

        (uint accountBorrow, uint accountSupply) = venusBorrowAndSupply(vault);
        uint supplyFactor = collateralRatioLimit.mul(accountSupply).div(1e18);
        uint borrowAmount = supplyFactor > accountBorrow ? supplyFactor.sub(accountBorrow).mul(1e18).div(uint(1e18).sub(collateralRatioLimit)) : 0;
        uint redeemAmount = accountBorrow > supplyFactor ? accountBorrow.sub(supplyFactor).mul(1e18).div(uint(1e18).sub(collateralRatioLimit)) : uint(- 1);
        return (Math.min(borrowAmount, safeLiquidity), Math.min(redeemAmount, safeLiquidity));
    }

    function safeBorrowAmount(address payable vault) public returns (uint) {
        VaultVenus vaultVenus = VaultVenus(vault);
        IVToken vToken = vaultVenus.vToken();

        uint borrowable;
        uint borrowRatio;
        {
            uint collateralRatioLimit = vaultVenus.collateralRatioLimit();
            uint optimalCollateralRatioLimit = vToken.supplyRatePerBlock().mul(1e18).div(vToken.borrowRatePerBlock());
            collateralRatioLimit = Math.min(collateralRatioLimit, optimalCollateralRatioLimit);

            uint marketSupply = vToken.totalSupply().mul(vToken.exchangeRateCurrent()).div(1e18);
            uint marketLiquidity = marketSupply > vToken.totalBorrowsCurrent() ? marketSupply.sub(vToken.totalBorrowsCurrent()) : 0;
            uint safeLiquidity = marketLiquidity.mul(990).div(1000);

            (uint accountBorrow, uint accountSupply) = venusBorrowAndSupply(vault);
            uint supplyFactor = collateralRatioLimit.mul(accountSupply).div(1e18);
            uint borrowAmount = supplyFactor > accountBorrow ? supplyFactor.sub(accountBorrow) : 0;
            borrowable = Math.min(borrowAmount, safeLiquidity);
            borrowRatio = accountBorrow > 0 ? borrowable.mul(1e18).div(accountBorrow) : 0;
        }

        address stakingToken = vaultVenus.stakingToken();
        uint borrowInterestInUSD = _venusBorrowInterestPerDay(vault, stakingToken, borrowable);

        // skip if borrowRatio is under 5%
        if (borrowRatio > 0 && borrowRatio <= 5e16) return 0;

        return borrowInterestInUSD > 0 && _venusSupplyRewardPerDay(vault, stakingToken, borrowable) <= borrowInterestInUSD + 5e18 ? 0 : borrowable;
    }

    function safeRedeemAmount(address payable vault) public returns (uint) {
        VaultVenus vaultVenus = VaultVenus(vault);
        IVToken vToken = vaultVenus.vToken();

        (, uint collateralFactorMantissa,) = VENUS_UNITROLLER.markets(address(vToken));
        uint collateralRatioLimit = vaultVenus.collateralRatioLimit();

        uint marketSupply = vToken.totalSupply().mul(vToken.exchangeRateCurrent()).div(1e18);
        uint marketLiquidity = marketSupply > vToken.totalBorrowsCurrent() ? marketSupply.sub(vToken.totalBorrowsCurrent()) : 0;
        uint safeLiquidity = marketLiquidity.mul(990).div(1000);

        (uint accountBorrow, uint accountSupply) = venusBorrowAndSupply(vault);
        uint borrowFactor = accountBorrow.mul(1e18).div(collateralRatioLimit);
        uint borrowFactorMarket = accountBorrow.mul(1e18).div(collateralFactorMantissa);
        uint redeemAmount = accountSupply > borrowFactor ? accountSupply.sub(borrowFactor) : accountSupply.sub(borrowFactorMarket);
        return Math.min(redeemAmount, safeLiquidity);
    }

    function venusBorrowAndSupply(address payable vault) public returns (uint borrow, uint supply) {
        VaultVenus vaultVenus = VaultVenus(vault);
        borrow = vaultVenus.vToken().borrowBalanceCurrent(address(vaultVenus.VENUS_BRIDGE()));
        supply = IVaultVenusBridge(vaultVenus.VENUS_BRIDGE()).balanceOfUnderlying(vault);
    }

    /* ========== safeCompoundDepth ========== */

    function safeCompoundDepth(address payable vault) public returns (uint) {
        VaultVenus vaultVenus = VaultVenus(vault);
        address stakingToken = vaultVenus.stakingToken();

        uint interestInUSD = _venusBorrowInterestPerDay(vault, stakingToken, 0);
        return interestInUSD > 0 && _venusSupplyRewardPerDay(vault, stakingToken, 0) <= interestInUSD + 5e18 ? 0 : vaultVenus.collateralDepth();
    }

    function _venusBorrowInterestPerDay(address payable vault, address stakingToken, uint borrowAmount) private returns (uint interestInUSD) {
        VaultVenus vaultVenus = VaultVenus(vault);
        IVToken vToken = vaultVenus.vToken();

        uint totalBorrow = vToken.totalBorrowsCurrent().add(borrowAmount);
        uint vaultBorrow = vaultVenus.venusBorrow().add(borrowAmount);
        (, uint xvsValueInUSD) = PRICE_CALCULATOR.valueOfAsset(XVS,
            VENUS_UNITROLLER.venusSpeeds(address(vToken)).mul(BLOCK_PER_DAY).mul(vaultBorrow).div(totalBorrow)
        );
        xvsValueInUSD = xvsValueInUSD.mul(uint(10000).sub(vaultVenus.VENUS_BRIDGE().performanceFeeBp())).div(10000);

        uint interestPerDay = _predictBorrowRate(vToken, borrowAmount).mul(BLOCK_PER_DAY).mul(vaultBorrow).div(1e18);
        (, uint usd) = PRICE_CALCULATOR.valueOfAsset(stakingToken, interestPerDay);
        interestInUSD = usd > xvsValueInUSD ? usd.sub(xvsValueInUSD) : 0;
    }

    function _venusSupplyRewardPerDay(address payable vault, address stakingToken, uint borrowAmount) private returns (uint rewardInUSD) {
        VaultVenus vaultVenus = VaultVenus(vault);
        IVToken vToken = vaultVenus.vToken();

        uint marketSupply = vToken.totalSupply().mul(vToken.exchangeRateCurrent()).div(1e18);
        (, uint xvsValueInUSD) = PRICE_CALCULATOR.valueOfAsset(XVS, VENUS_UNITROLLER.venusSpeeds(address(vToken)).mul(BLOCK_PER_DAY).mul(vaultVenus.venusSupply()).div(marketSupply));
        xvsValueInUSD = xvsValueInUSD.mul(uint(10000).sub(vaultVenus.VENUS_BRIDGE().performanceFeeBp())).div(10000);

        uint interestPerDay = _predictSupplyRate(vToken, borrowAmount).mul(BLOCK_PER_DAY).mul(vaultVenus.venusSupply()).div(1e18);
        (, uint interestInUSD) = PRICE_CALCULATOR.valueOfAsset(stakingToken, interestPerDay);

        rewardInUSD = xvsValueInUSD.add(interestInUSD);
    }

    function _predictBorrowRate(IVToken vToken, uint borrowAmount) private returns (uint) {
        IInterestModel interestModel = IInterestModel(vToken.interestRateModel());
        if (vToken.getCash() < borrowAmount) return vToken.borrowRatePerBlock();

        return interestModel.getBorrowRate(
            vToken.getCash().sub(borrowAmount), borrowAmount.add(vToken.totalBorrowsCurrent()), vToken.totalReserves()
        );
    }

    function _predictSupplyRate(IVToken vToken, uint borrowAmount) private returns (uint) {
        IInterestModel interestModel = IInterestModel(vToken.interestRateModel());
        if (vToken.getCash() < borrowAmount) return vToken.supplyRatePerBlock();

        return interestModel.getSupplyRate(
            vToken.getCash().sub(borrowAmount), borrowAmount.add(vToken.totalBorrowsCurrent()), vToken.totalReserves(), vToken.reserveFactorMantissa()
        );
    }
}
