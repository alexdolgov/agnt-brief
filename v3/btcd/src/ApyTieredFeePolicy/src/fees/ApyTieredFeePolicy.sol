// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {FeePolicy} from "./FeePolicy.sol";
import {UD60x18, ud} from "@prb/math/UD60x18.sol";

interface IStrategy {
    function latest() external view returns (uint256 _tvl, uint256 _timestamp);

    function totalAllocated() external view returns (uint256);
}

/// @title APY tiered fee policy
/// This fee policy applies fee based on the annualized APY from the profit since the latest snapshot
contract ApyTieredFeePolicy is FeePolicy {
    uint256 private constant YEARx18 = 365 days * 1e18;
    uint256 private constant ONEx18 = 1e18;

    /// @notice Defines tiers where if the APY is higher then `apy`, `fee` percent will be applied on top of the profit
    struct FeeTier {
        uint128 apy;
        uint128 fee; // e.g. 0.05 == 5%
    }

    FeeTier[] public feeTiers;

    uint256 public depositFee;
    uint256 public withdrawFee;

    error TiersAreNotOrdered();

    function initialize(
        address positionRegistry_,
        FeeTier[] memory tiers_,
        uint256 depositFee_,
        uint256 withdrawFee_
    ) external initializer {
        __FeePolicy_init(positionRegistry_);

        depositFee = depositFee_;
        withdrawFee = withdrawFee_;

        uint256 _len = tiers_.length;
        for (uint256 i; i < _len; ++i) {
            FeeTier memory _tier = tiers_[i];
            if (i > 0 && _tier.apy <= tiers_[i - 1].apy) {
                revert TiersAreNotOrdered();
            }
            feeTiers.push(_tier);
        }
    }

    /// @inheritdoc FeePolicy
    function quoteAllocatedInFee(uint256 amount_) external view override returns (uint256 _fee) {
        uint256 _depositFee = depositFee;
        if (_depositFee > 0) _fee = (amount_ * _depositFee) / 1e18;
        _fee += _quote({amountIn_: amount_, amountOut_: 0});
    }

    /// @inheritdoc FeePolicy
    function quoteAllocatedOutFee(uint256 amount_) external view override returns (uint256 _fee) {
        uint256 _withdrawFee = withdrawFee;
        if (_withdrawFee > 0) _fee = (amount_ * _withdrawFee) / 1e18;
        _fee += _quote({amountIn_: 0, amountOut_: amount_});
    }

    /// @inheritdoc FeePolicy
    function quoteTimeBasedFee() external view override returns (uint256 _fee) {
        return _quote({amountIn_: 0, amountOut_: 0});
    }

    /// @notice Generic quote function
    /// @dev Assumes that total allocated amount was changed already
    /// @param amountIn_ the delta amount if the total allocated increased
    /// @param amountOut_ the delta amount if the total allocated decreased
    /// @return Fee amount
    function _quote(uint256 amountIn_, uint256 amountOut_) private view returns (uint256) {
        uint256 _len = feeTiers.length;

        if (_len == 0) {
            return 0;
        }

        IStrategy _position = IStrategy(msg.sender);

        (uint256 _latestTotalAllocated, uint256 _initialTimestamp) = _position.latest();

        if (_latestTotalAllocated == 0) {
            return 0;
        }

        uint256 _currentTotalAllocated = _position.totalAllocated() - amountIn_ + amountOut_;

        if (_currentTotalAllocated <= _latestTotalAllocated) {
            return 0;
        }

        uint256 _profit = _currentTotalAllocated - _latestTotalAllocated;

        uint256 _apy = _getApy(_latestTotalAllocated, _profit, _initialTimestamp, block.timestamp);

        if (_apy < feeTiers[0].apy) {
            return 0;
        }

        uint256 i = 1;
        while (i < _len) {
            if (_apy < feeTiers[i].apy) {
                return (_profit * feeTiers[i - 1].fee) / 1e18;
            }

            unchecked {
                ++i;
            }
        }

        return (_profit * feeTiers[_len - 1].fee) / 1e18;
    }

    /// @notice Get annualized rate (APY) from profit
    /// @param principal_ The principal
    /// @param profit_ The profit
    /// @param start_ The period start
    /// @param end_ The period end
    /// @return The APR (e.g. 0.1e18 == 10%)
    function _getApy(uint256 principal_, uint256 profit_, uint256 start_, uint256 end_) public pure returns (uint256) {
        if (start_ == end_) {
            return 0;
        }

        UD60x18 _ror = ud((profit_ * 1e18) / principal_);
        UD60x18 _period = ud((end_ - start_) * 1e18);

        // Annualized Rate = ((1 + RoR) ^ (365 days/periodInDays)) - 1
        return (ud(ONEx18).add(_ror)).pow(ud(YEARx18).div(_period)).sub(ud(ONEx18)).intoUint256();
    }
}
