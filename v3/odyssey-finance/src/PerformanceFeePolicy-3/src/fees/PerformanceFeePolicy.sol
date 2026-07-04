// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {FeePolicy} from "./FeePolicy.sol";

interface IStrategy {
    function latest() external view returns (uint256 _tvl, uint256 _timestamp);

    function totalAllocated() external view returns (uint256);
}

/// @title Performance flat fee policy
contract PerformanceFeePolicy is FeePolicy {
    uint256 public performanceFee;

    function initialize(
        address positionRegistry_,
        uint256 performanceFee_,
        uint256 depositFee_,
        uint256 withdrawFee_
    ) external initializer {
        __FeePolicy_init(positionRegistry_, depositFee_, withdrawFee_);

        performanceFee = performanceFee_;
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
        uint256 _performanceFee = performanceFee;

        if (_performanceFee == 0) {
            return 0;
        }

        IStrategy _position = IStrategy(msg.sender);

        (uint256 _latestTotalAllocated, ) = _position.latest();

        if (_latestTotalAllocated == 0) {
            return 0;
        }

        uint256 _currentTotalAllocated = _position.totalAllocated() - amountIn_ + amountOut_;

        if (_currentTotalAllocated <= _latestTotalAllocated) {
            return 0;
        }

        uint256 _profit = _currentTotalAllocated - _latestTotalAllocated;

        return (_profit * _performanceFee) / 1e18;
    }
}
