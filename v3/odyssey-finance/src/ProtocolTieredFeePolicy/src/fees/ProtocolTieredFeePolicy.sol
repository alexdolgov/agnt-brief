// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {FeePolicy} from "./FeePolicy.sol";

interface IStrategy {
    function latest() external view returns (uint256 _tvl, uint256 _timestamp);

    function totalAllocated() external view returns (uint256);

    function asset() external view returns (address);

    function borrowToken() external view returns (address);
}

interface IMetronomePool {
    function doesSyntheticTokenExist(address) external view returns (bool);
}

/// @title Protocol tiered fee policy
contract ProtocolTieredFeePolicy is FeePolicy {
    /// @notice Fees regarding which protocol(s) the position uses
    /// [0] applies to position which uses both Vesper and Metronome
    /// [1] applies to position which uses Vesper only
    /// [2] applies to position which uses Metronome only
    /// [3] applies to position which don't use none of both
    uint256[4] public performanceFeeTiers;
    mapping(address token => bool isVesperPool) public vPools;
    IMetronomePool public metronomePool;

    function initialize(
        address metronomePool_,
        address[] calldata vesperPools_,
        uint256[4] calldata performanceFeeTiers_,
        uint256 depositFee_,
        uint256 withdrawFee_
    ) external initializer {
        __FeePolicy_init(depositFee_, withdrawFee_);

        if (metronomePool_ == address(0)) revert AddressIsNull();

        metronomePool = IMetronomePool(metronomePool_);

        uint256 _len = vesperPools_.length;
        for (uint i; i < _len; ++i) {
            vPools[vesperPools_[i]] = true;
        }

        performanceFeeTiers = performanceFeeTiers_;
        depositFee = depositFee_;
        withdrawFee = withdrawFee_;
    }

    /// @inheritdoc FeePolicy
    function quoteAllocatedInFee(uint256 amount_) external view override returns (uint256 _fee) {
        _fee = _calculateDepositFee(amount_) + _quote({amountIn_: amount_, amountOut_: 0});
    }

    /// @inheritdoc FeePolicy
    function quoteAllocatedOutFee(uint256 amount_) external view override returns (uint256 _fee) {
        _fee = _calculateWithdrawFee(amount_) + _quote({amountIn_: 0, amountOut_: amount_});
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
        uint256 _performanceFee = _getPerformanceFee();

        return (_profit * _performanceFee) / 1e18;
    }

    /// @dev Get performance fee based on protocol the caller position is using
    function _getPerformanceFee() private view returns (uint256) {
        IStrategy _position = IStrategy(msg.sender);
        address _asset = _position.asset();
        address _borrowToken = _position.borrowToken();

        IMetronomePool _metronomePool = metronomePool;

        bool usesVesper = vPools[_asset] || vPools[_borrowToken];
        bool usesMetronome = _metronomePool.doesSyntheticTokenExist(_asset) ||
            _metronomePool.doesSyntheticTokenExist(_borrowToken);

        if (usesVesper && usesMetronome) return performanceFeeTiers[0];
        if (usesVesper) return performanceFeeTiers[1];
        if (usesMetronome) return performanceFeeTiers[2];
        return performanceFeeTiers[3];
    }
}
