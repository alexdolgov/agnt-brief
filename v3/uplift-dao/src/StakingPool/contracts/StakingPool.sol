// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "./interfaces/IStakingPool.sol";
import "./ThrottledPool.sol";

contract StakingPool is IStakingPool, ThrottledPool {

    using SafeERC20 for IERC20;

    bytes32 public constant SHARES_MANAGER_ROLE = keccak256("SHARES_MANAGER_ROLE");

    constructor(
        address _registry,
        address _token, 
        address _emissionController, 
        uint64 _emittedTokensPerSecond
    ) ThrottledPool(_registry, _token, _emissionController, _emittedTokensPerSecond) {}

    /// @notice Mint shares for user and specific id
    /// @param _account User
    /// @param _idAmount Shares to mint for id
    /// @param _totalAmount Shares to mint for user
    /// @param _id Id to mint for
    function mintForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external virtual override nonReentrant onlyRole(SHARES_MANAGER_ROLE) {
        super._mintForId(_account, _idAmount, _totalAmount, _id);
    }

    /// @notice Burn shares for user and specific id
    /// @param _account User
    /// @param _idAmount Shares to burn for id
    /// @param _totalAmount Shares to burn for user
    /// @param _id Id to burn for
    function burnForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external virtual override nonReentrant onlyRole(SHARES_MANAGER_ROLE) {
        super._burnForId(_account, _idAmount, _totalAmount, _id);
    }

    /// @notice Withdraw without id is restricted
    function withdraw() external virtual override nonReentrant returns (uint) {
        revert("StakingPool: RESTRICTED");
    }

    /// @notice Withdraw not by shares manager is restricted
    function withdrawForId(uint _id) external virtual override nonReentrant returns (uint) {
        revert("StakingPool: RESTRICTED");
    }

    /// @notice Withdraw reward for account
    /// @param _account User
    /// @param _id Id to burn for
    /// @param _withdrawAmount Reward for user
    /// @param _fee Fee (goes to emission)
    function withdrawForAccount(address _account, uint _id, uint _withdrawAmount, uint _fee) 
        external 
        override 
        nonReentrant 
        accumulateRewards(_account)
        accumulateRewardsForId(_account, _id) 
        onlyRole(SHARES_MANAGER_ROLE)
    {
        _withdrawForAccount(_account, _id, _withdrawAmount, _fee);
    }

    function _withdrawForAccount(address _account, uint _id, uint _withdrawAmount, uint _fee) private {
        uint tokenRewards = idTokenRewardsOf[_account][_id];
        require(_withdrawAmount + _fee <= tokenRewards, "StakingPool: INVALID_AMOUNT");
        uint amountToTransfer;

        if (_withdrawAmount > 0) {
            amountToTransfer += _withdrawAmount;
            IERC20(token).safeTransfer(_account, _withdrawAmount);
        }
        if (_fee > 0) {
            amountToTransfer += _fee;
            IERC20(token).safeTransfer(emissionController, _fee);
        }
        if (amountToTransfer > 0) {
            idTokenRewardsOf[_account][_id] -= amountToTransfer;
            tokenRewardsOf[_account] -= amountToTransfer; 
        }
        emit WithdrawForAccount(_account, _withdrawAmount, _fee, _id);
    }
}