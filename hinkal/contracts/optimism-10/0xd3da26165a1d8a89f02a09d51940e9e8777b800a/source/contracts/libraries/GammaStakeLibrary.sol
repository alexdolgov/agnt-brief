// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@overnight-contracts/connectors/contracts/stuff/Gamma.sol";
import "@overnight-contracts/connectors/contracts/stuff/UniswapV3.sol";
import "@overnight-contracts/common/contracts/libraries/OvnMath.sol";
import "../core/CommonModule.sol";
import "hardhat/console.sol";

abstract contract StakeModule is CommonModule {

    IHypervisor public lpToken;
    IUniProxy public uniProxy;
    IMasterChef public masterChef;
    uint256 public pid;
    uint256 public poolDecimals;
    uint256 public allowedStakeSlippageBp;


    function _getStakeLiquidity() internal view returns (uint256 baseBalance, uint256 sideBalance) {
        return GammaStakeLibrary._getLiquidity(this);
    }

    function _pricePool() internal view returns (int256) {
        return GammaStakeLibrary._pricePool(this);
    }

    function _pricePool2() internal view returns (int256) {
        return GammaStakeLibrary._pricePool(this);
    }

    function _sideAmount() internal view returns(uint256) {
        return GammaStakeLibrary._sideAmount(this);
    }

    function _addLiquidity(uint256 delta) internal {
        GammaStakeLibrary._addLiquidity(this, delta);
    }

    function _removeLiquidity(uint256 delta) internal {
        GammaStakeLibrary._removeLiquidity(this, delta);
    }

    function _claimStakeRewards() internal {
        GammaStakeLibrary._claimRewards(this);
    }

    function getGeneralPoolPrice() public view returns(uint256) {
        return GammaStakeLibrary._poolPrice(this);
    }

    uint256[50] private __gap;
}


library GammaStakeLibrary {

    function _isReverse(StakeModule self) public view returns (bool) {
        return address(self.baseToken()) != address(self.lpToken().token0());
    }

    function _getLiquidity(StakeModule self) public view returns (uint256 baseBalance, uint256 sideBalance) {
        (uint256 balanceLp,) = self.masterChef().userInfo(self.pid(), address(self));
        (baseBalance, sideBalance) = _getLiquidityByLp(self, balanceLp);
    }

    function _getLiquidityByLp(StakeModule self, uint256 balanceLp) internal view returns (uint256 baseBalance, uint256 sideBalance) {
        (uint256 reserve0, uint256 reserve1) = self.lpToken().getTotalAmounts();

        if (_isReverse(self)) {
            baseBalance = reserve1 * balanceLp / self.lpToken().totalSupply();
            sideBalance = reserve0 * balanceLp / self.lpToken().totalSupply();
        } else {
            baseBalance = reserve0 * balanceLp / self.lpToken().totalSupply();
            sideBalance = reserve1 * balanceLp / self.lpToken().totalSupply();
        }
    }

    function _sideAmount(StakeModule self) public view returns(uint256) {
        (uint256 balanceLp,) = self.masterChef().userInfo(self.pid(), address(self));
        (, uint256 sideBalance) = _getLiquidityByLp(self, balanceLp);
        return self.sideToUsd(sideBalance);
    }

    function _pricePool(StakeModule self) public view returns (int256) {
        (uint256 reserve0, uint256 reserve1) = self.lpToken().getTotalAmounts();

        if (_isReverse(self)) {
            return int256(self.baseToUsd(reserve1) * self.poolDecimals() / self.sideToUsd(reserve0));
        } else {
            return int256(self.baseToUsd(reserve0) * self.poolDecimals() / self.sideToUsd(reserve1));
        }
    }

    function _poolPrice(StakeModule self) public view returns (uint256) {
        (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.lpToken().pool()).slot0();
        return FullMath.mulDiv(uint256(sqrtRatioX96) * 10**10, uint256(sqrtRatioX96) * 10**8, 2 ** (96+96));
    }

    function _isSamePrices(StakeModule self) public view returns (bool) {
        uint256 poolPrice = _poolPrice(self);
        uint256 oraclePrice = self.usdToBase(self.sideToUsd(self.sideDecimals() * self.poolDecimals() / self.baseDecimals()));
        uint256 deltaPrice;
        if (poolPrice > oraclePrice) {
            deltaPrice = poolPrice - oraclePrice;
        } else {
            deltaPrice = oraclePrice - poolPrice;
        }

        return (deltaPrice * 10000 / oraclePrice <= self.allowedStakeSlippageBp());
    }

    function _addLiquidity(StakeModule self, uint256 delta) public {
        if (self.baseToken().balanceOf(address(self)) == 0 || self.sideToken().balanceOf(address(self)) == 0) {
            return;
        }

        uint256 baseAmount = self.baseToken().balanceOf(address(self)) - (delta == self.MAX_UINT_VALUE() ? 0 : self.usdToBase(delta));
        uint256 sideAmount = self.sideToken().balanceOf(address(self));

        if (self.baseToUsd(baseAmount) <= 10 ** 2 || self.sideToUsd(sideAmount) <= 10 ** 2 || !_isSamePrices(self)) {
            return;
        }

        bool isReverse = _isReverse(self);

        // add liquidity
        self.baseToken().approve(address(self.lpToken()), baseAmount);
        self.sideToken().approve(address(self.lpToken()), sideAmount);
        self.uniProxy().deposit(
            isReverse ? sideAmount : baseAmount,
            isReverse ? baseAmount : sideAmount,
            address(self),
            address(self.lpToken()),
            [uint256(0), uint256(0), uint256(0), uint256(0)]
        );

        // stake
        uint256 lpTokenAmount = self.lpToken().balanceOf(address(self));
        self.lpToken().approve(address(self.masterChef()), lpTokenAmount);
        self.masterChef().deposit(
            self.pid(),
            lpTokenAmount,
            address(self)
        );
    }

    function _removeLiquidity(StakeModule self, uint256 delta) public {
        (uint256 balanceLp,) = self.masterChef().userInfo(self.pid(), address(self));
        if (balanceLp == 0 || !_isSamePrices(self)) {
            return;
        }

        uint256 lpForUnstake;
        if (delta == self.MAX_UINT_VALUE()) {
            lpForUnstake = balanceLp;
        } else {
            uint256 sideDelta = self.usdToSide(delta);
            (, uint256 sideBalance) = _getLiquidityByLp(self, balanceLp);
            lpForUnstake = sideDelta * balanceLp / sideBalance + 1;
            if (lpForUnstake > balanceLp) {
                lpForUnstake = balanceLp;
            }
        }

        // unstake
        self.masterChef().withdraw(
            self.pid(),
            lpForUnstake,
            address(self)
        );

        // remove liquidity
        self.lpToken().approve(address(self.uniProxy()), lpForUnstake);
        self.lpToken().withdraw(
            lpForUnstake,
            address(self),
            address(self),
            [uint256(0), uint256(0), uint256(0), uint256(0)]
        );
    }

    function _claimRewards(StakeModule self) public {
        (uint256 balanceLp,) = self.masterChef().userInfo(self.pid(), address(self));
        if (balanceLp > 0) {
            self.masterChef().deposit(
                self.pid(),
                0,
                address(self)
            );
        }
    }
}
