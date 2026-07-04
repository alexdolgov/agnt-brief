// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "./interfaces/IThrottledPool.sol";
import "./IdPool.sol";

/// @title Contract for id pool accumulation with emission
contract ThrottledPool is IThrottledPool, IdPool {

    using SafeCast for uint;

    address public override emissionController;
    uint private lastAccumulationTimestamp;
    uint64 private emittedTokensPerSecond;
    
    constructor(address _registry, address _token, address _emissionController, uint64 _emittedTokensPerSecond) IdPool(_registry, _token) {
        require(_emissionController != address(0), "ThrottledPool: ZERO");
        emissionController = _emissionController;
        emittedTokensPerSecond = _emittedTokensPerSecond;
        lastAccumulationTimestamp = block.timestamp;
    }

    /// @param _emissionController New emission controller
    function setEmissionController(address _emissionController) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_emissionController != address(0), "ThrottledPool: ZERO");
        emissionController = _emissionController; 
        emit SetEmissionController(_emissionController);
    }

    /// @param _emittedTokensPerSecond New emitted tokens per second
    function setTokensPerSeconds(uint64 _emittedTokensPerSecond) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        emittedTokensPerSecond = _emittedTokensPerSecond; 
        emit SetTokensPerSeconds(_emittedTokensPerSecond);
    }

    /// @notice See expected reward for user and id
    /// @param _account User
    /// @param _id Id
    function withdrawableRewardsForId(address _account, uint _id) external override view returns (uint) {
        uint withdrawableFromEmission = IPool(emissionController).withdrawableRewardsOf(address(this));
        uint totalWithdrawableRewardsOfAccount = _withdrawableRewardsOf(_account, IERC20(token).balanceOf(address(this)) + withdrawableFromEmission);
        return _withdrawableRewardsOf(_account, totalWithdrawableRewardsOfAccount, _id);
    }

    modifier accumulateRewards(address _account) virtual override {
        IPool(emissionController).withdraw();
        uint _totalSupply = totalSupply;
        uint secondsPassed;
        unchecked { // overflow is desired
            secondsPassed = block.timestamp - lastAccumulationTimestamp;
        }
        uint tokenIncrease;
        uint lastBalance = IERC20(token).balanceOf(address(this));
        if (_totalSupply > 0 && secondsPassed > 0) {
            tokenIncrease = Math.min(lastBalance - lastTokenBalance, secondsPassed * emittedTokensPerSecond);
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    accumulatedTokenPerTotalSupplyInBase += tokenIncrease * DECIMAL_MULTIPLIER / _totalSupply;
                }
            }
        }
        _accumulateAccountRewards(_account);
        _;

        lastAccumulationTimestamp = block.timestamp;
        uint currentBalance = IERC20(token).balanceOf(address(this));
        if (tokenIncrease > 0) {
            lastTokenBalance += tokenIncrease;
        }
        if (currentBalance < lastBalance) { // if someone withdrawn
            lastTokenBalance -= lastBalance - currentBalance;
        }
    }
    
    function _withdrawableRewardsOf(address _account, uint _currentBalance) internal virtual override view returns (uint) {
        uint _accumulatedTokenPerTotalSupplyInBase = accumulatedTokenPerTotalSupplyInBase;
        uint secondsPassed;
        unchecked { // overflow is desired
            secondsPassed = block.timestamp - lastAccumulationTimestamp;
        }
        if (totalSupply > 0 && secondsPassed > 0) {
            uint tokenIncrease = Math.min(_currentBalance - lastTokenBalance, secondsPassed * emittedTokensPerSecond);
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    _accumulatedTokenPerTotalSupplyInBase += tokenIncrease * DECIMAL_MULTIPLIER / totalSupply;
                }
            }
        }
        uint _lastAccumulatedTokenPerTotalSupplyInBase = balanceOf[_account] == 0 
            ? _accumulatedTokenPerTotalSupplyInBase 
            : lastAccumulatedTokenPerTotalSupplyInBase[_account];
        uint accumulatedTokenPerTotalSupplyInBaseIncrease;
        unchecked { // overflow is desired
            accumulatedTokenPerTotalSupplyInBaseIncrease = _accumulatedTokenPerTotalSupplyInBase - _lastAccumulatedTokenPerTotalSupplyInBase;
        }
        uint tokenRewardsIncrease = balanceOf[_account] * accumulatedTokenPerTotalSupplyInBaseIncrease / DECIMAL_MULTIPLIER;
        return tokenRewardsIncrease + tokenRewardsOf[_account];
    }
}