// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "pendle-core/core/libraries/math/PMath.sol";
import "pendle-core/core/Market/MarketMathCore.sol";

library MarketApproxRemoveLiqLib {
    using MarketMathCore for MarketState;
    using PYIndexLib for PYIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;

    struct ApproxBurnLpParams {
        uint256 guessMin;
        uint256 guessMax;
        uint256 maxIteration;
        uint256 eps;
    }

    function approxBurnLpForExactSy(
        MarketState memory _marketSrc,
        PYIndex _index,
        uint256 _totalSyOut,
        uint256 _blockTime,
        ApproxBurnLpParams memory _approx
    ) external pure returns (uint256 lp, uint256 syOut) {

        MarketPreCompute memory comp = _marketSrc.getMarketPreCompute(_index, _blockTime);

        validateApprox(_approx);
        require(_marketSrc.totalLp != 0, "no existing lp");

        {
            MarketState memory _market = cloneMarketState(_marketSrc);
            (uint _syReceived, uint _ptReceived) = _market.removeLiquidity(_approx.guessMax);
            comp.totalAsset = _index.syToAsset(_market.totalSy);
            _syReceived += calcSyOut(_market, comp, _index, _ptReceived);

            if (_syReceived <= _totalSyOut) {
                return (_approx.guessMax, _syReceived);
            }
        }

        if (MiniHelpers.isExpired(_marketSrc.expiry, _blockTime)) {
            lp = uint(_marketSrc.totalLp) * _totalSyOut.rawDivUp(uint(_marketSrc.totalSy + _marketSrc.totalPt));
            syOut = uint((_marketSrc.totalSy + _marketSrc.totalPt) * int(lp) / _marketSrc.totalLp);
            return (lp, syOut);
        }

        uint256 guess = getFirstGuess(_approx);
        for (uint256 iter = 0; iter < _approx.maxIteration; ++iter) {

            MarketState memory _market = cloneMarketState(_marketSrc);

            (uint _syReceived, uint _ptReceived) = _market.removeLiquidity(guess);

            comp.totalAsset = _index.syToAsset(_market.totalSy);
            _syReceived += calcSyOut(_market, comp, _index, _ptReceived);

            if (PMath.isAApproxB(_syReceived, _totalSyOut, _approx.eps)) {
                return (guess, _syReceived);
            }

            if (_syReceived <= _totalSyOut) {
                if (_approx.guessMin == guess) {
                    break;
                }
                _approx.guessMin = guess;
            } else {
                _approx.guessMax = guess - 1;
            }

            guess = calcMidpoint(_approx);
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    function cloneMarketState(MarketState memory _marketSrc) private pure returns (MarketState memory _market) {
        _market = MarketState({
            totalPt: _marketSrc.totalPt,
            totalSy: _marketSrc.totalSy,
            totalLp: _marketSrc.totalLp,
            treasury: _marketSrc.treasury,
            scalarRoot: _marketSrc.scalarRoot,
            expiry: _marketSrc.expiry,
            lnFeeRateRoot: _marketSrc.lnFeeRateRoot,
            reserveFeePercent: _marketSrc.reserveFeePercent,
            lastLnImpliedRate: _marketSrc.lastLnImpliedRate
        });
    }

    function calcSyOut(
        MarketState memory market,
        MarketPreCompute memory comp,
        PYIndex index,
        uint256 netPtIn
    ) internal pure returns (uint256 syOut) {
        (int256 _netSyOut, int _netSyFee, ) = market.calcTrade(comp, index, -int256(netPtIn));
        syOut = uint256(_netSyOut + _netSyFee);
    }


    ////////////////////////////////////////////////////////////////////////////////

    function validateApprox(ApproxBurnLpParams memory approx) private pure {
        if (approx.guessMin > approx.guessMax || approx.eps > PMath.ONE) revert("Internal: INVALID_APPROX_PARAMS");
    }


    function getFirstGuess(ApproxBurnLpParams memory approx) private pure returns (uint256) {
        return calcMidpoint(approx);
    }

    function calcMidpoint(ApproxBurnLpParams memory approx) private pure returns (uint256) {
        return (approx.guessMin + approx.guessMax + 1) / 2;
    }

}


