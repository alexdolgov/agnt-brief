// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "./Pool.sol";
import "./interfaces/IReferralPool.sol";

/// @title Contract for pool accumulation. Only shares minter role is eligible for minting, burning and withdrawal
contract ReferralPool is IReferralPool, Pool {

    using SafeERC20 for IERC20;

    bytes32 public constant SHARES_MINTER_ROLE = keccak256("SHARES_MINTER_ROLE");
    
    constructor(address _registry, address _token) Pool(_registry, _token) {}

    /// @notice Mint shares for user
    /// @param _account User
    /// @param _amount Shares to mint
    function mint(address _account, uint _amount) external virtual override nonReentrant onlyRole(SHARES_MINTER_ROLE) {
        _mint(_account, _amount);
    }

    /// @notice Burn shares for user
    /// @param _account User
    /// @param _amount Shares to burn
    function burn(address _account, uint _amount) external virtual override nonReentrant onlyRole(SHARES_MINTER_ROLE) {
        _burn(_account, _amount);
    }

    /// @notice Withdraw reward and send it to the account
    /// @param _account User
    /// @return Amount that was withdrawed
    function withdrawForAccount(address _account) external virtual override nonReentrant accumulateRewards(_account) returns (uint) {
        uint tokenRewards = tokenRewardsOf[_account];
        if (tokenRewards > 0) {
            tokenRewardsOf[_account] = 0; 
            IERC20(token).safeTransfer(_account, tokenRewards);
            emit WithdrawForAccount(_account, tokenRewards);
        }
        return tokenRewards;
    }
}