// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "./interfaces/IIdPool.sol";
import "./Pool.sol";

/// @title Contract for id pool accumulation
contract IdPool is IIdPool, Pool {

    using SafeERC20 for IERC20;

    mapping(address => mapping(uint => uint)) public override idBalanceOf;
    mapping(address => uint) public override accountTotalSupply;

    mapping(address => mapping(uint => uint)) idTokenRewardsOf;
    mapping(address => mapping(uint => uint)) idLastAccumulatedTokenPerTotalSupplyInBase;
    mapping(address => uint) accountAccumulatedTokenPerTotalSupplyInBase;
    mapping(address => uint) accountLastTokenBalance;

    constructor(address _registry, address _token) Pool(_registry, _token) {}

    /// @notice Mint shares for user and specific id
    /// @param _account User
    /// @param _idAmount Shares to mint for id
    /// @param _totalAmount Shares to mint for user
    /// @param _id Id to mint for
    function mintForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external virtual override nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        _mintForId(_account, _idAmount, _totalAmount, _id);
    }

    /// @notice Burn shares for user and specific id
    /// @param _account User
    /// @param _idAmount Shares to burn for id
    /// @param _totalAmount Shares to burn for user
    /// @param _id Id to burn for
    function burnForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external virtual override nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        _burnForId(_account, _idAmount, _totalAmount, _id);
    }

    /// @notice Withdraw reward for specific id
    /// @param _id Id to withdraw for
    function withdrawForId(uint _id) external virtual override nonReentrant accumulateRewards(msg.sender) accumulateRewardsForId(msg.sender, _id) returns (uint) {
        uint tokenRewards = idTokenRewardsOf[msg.sender][_id];
        if (tokenRewards > 0) {
            idTokenRewardsOf[msg.sender][_id] = 0;
            tokenRewardsOf[msg.sender] -= tokenRewards; 
            IERC20(token).safeTransfer(msg.sender, tokenRewards);
            emit WithdrawForId(msg.sender, tokenRewards, _id);
        }
        return tokenRewards;
    }

    /// @notice See expected reward for user and id
    /// @param _account User
    /// @param _id Id
    function withdrawableRewardsForId(address _account, uint _id) external virtual override view returns (uint) {
        return _withdrawableRewardsOf(_account, withdrawableRewardsOf(_account), _id);
    }

    modifier accumulateRewardsForId(address _account, uint _id) virtual {
        uint _totalSupply = accountTotalSupply[_account];
        if (_totalSupply > 0) {
            uint tokenIncrease = tokenRewardsOf[_account] - accountLastTokenBalance[_account];
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    accountAccumulatedTokenPerTotalSupplyInBase[_account] += tokenIncrease * DECIMAL_MULTIPLIER / _totalSupply;
                }
            }
        }
        _accumulateAccountRewards(_account, _id);
        _;
        if (_totalSupply > 0) {
            accountLastTokenBalance[_account] = tokenRewardsOf[_account];
        }
    }

    function _mintForId(address _account, uint _idAmount, uint _totalAmount, uint _id) internal virtual {
        if (_totalAmount > 0) {
            _mint(_account, _totalAmount);
        }
        if (_idAmount > 0) {
            _mintForId(_account, _idAmount, _id);
        }
    }

    function _burnForId(address _account, uint _idAmount, uint _totalAmount, uint _id) internal virtual {
        if (_totalAmount > 0) {
            _burn(_account, _totalAmount);
        }
        if (_idAmount > 0) {
            _burnForId(_account, _idAmount, _id);
        }
    }

    function _mintForId(address _account, uint _amount, uint _id) internal virtual accumulateRewardsForId(_account, _id) {
        idBalanceOf[_account][_id] += _amount;
        accountTotalSupply[_account] += _amount;
        emit MintForId(_account, _amount, _id);
    }

    function _burnForId(address _account, uint _amount, uint _id) internal virtual accumulateRewardsForId(_account, _id) {
        idBalanceOf[_account][_id] -= _amount;
        accountTotalSupply[_account] -= _amount;
        emit BurnForId(_account, _amount, _id);
    }

    function _withdrawableRewardsOf(address _account, uint _currentBalance, uint _id) internal virtual view returns (uint) {
        uint _accumulatedTokenPerTotalSupplyInBase = accountAccumulatedTokenPerTotalSupplyInBase[_account];
        if (accountTotalSupply[_account] > 0) {
            uint tokenIncrease = _currentBalance - accountLastTokenBalance[_account];
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    _accumulatedTokenPerTotalSupplyInBase += tokenIncrease * DECIMAL_MULTIPLIER / accountTotalSupply[_account];
                }
            }
        }

        uint _lastAccumulatedTokenPerTotalSupplyInBase = idBalanceOf[_account][_id] == 0
            ? _accumulatedTokenPerTotalSupplyInBase 
            : idLastAccumulatedTokenPerTotalSupplyInBase[_account][_id];

        uint accumulatedTokenPerTotalSupplyInBaseIncrease;
        unchecked { // overflow is desired
            accumulatedTokenPerTotalSupplyInBaseIncrease = _accumulatedTokenPerTotalSupplyInBase - _lastAccumulatedTokenPerTotalSupplyInBase;
        }
        uint tokenRewardsIncrease = idBalanceOf[_account][_id] * accumulatedTokenPerTotalSupplyInBaseIncrease / DECIMAL_MULTIPLIER;
        return tokenRewardsIncrease + idTokenRewardsOf[_account][_id];
    }

    function _accumulateAccountRewards(address _account, uint _id) internal virtual {
        uint _lastAccumulatedTokenPerTotalSupplyInBase = idBalanceOf[_account][_id] == 0 
            ? accountAccumulatedTokenPerTotalSupplyInBase[_account] 
            : idLastAccumulatedTokenPerTotalSupplyInBase[_account][_id];

        uint accumulatedTokenPerTotalSupplyInBaseIncrease;
        unchecked { // overflow is desired
            accumulatedTokenPerTotalSupplyInBaseIncrease = accountAccumulatedTokenPerTotalSupplyInBase[_account] - _lastAccumulatedTokenPerTotalSupplyInBase;
        }

        if (accumulatedTokenPerTotalSupplyInBaseIncrease > 0) {
            uint tokenIncrease = idBalanceOf[_account][_id] * accumulatedTokenPerTotalSupplyInBaseIncrease / DECIMAL_MULTIPLIER;
            if (tokenIncrease > 0) {
                idTokenRewardsOf[_account][_id] += tokenIncrease;
            }
        }
        idLastAccumulatedTokenPerTotalSupplyInBase[_account][_id] = accountAccumulatedTokenPerTotalSupplyInBase[_account];
    }
}