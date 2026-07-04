// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// solhint-disable func-name-mixedcase
// solhint-disable var-name-mixedcase
// slither-disable-start naming-convention
interface ILiquidityGaugeV2 {
    /// @notice the address of the reward contract
    function reward_contract() external view returns (address);

    /// @notice get the reward token address
    function reward_tokens(
        uint256 i
    ) external view returns (address);

    /// @notice claim available reward tokens for `_account`
    function claim_rewards(
        address _account
    ) external;

    /// @notice deposit `_value` LP tokens to the gauge
    function deposit(uint256 _value, address _addr) external;

    /// @notice Deposit `_value` LP tokens
    /// @dev Depositting also claims pending reward tokens
    /// @param _value Number of tokens to deposit
    /// @param _addr Address to deposit for
    /// @param _claim_rewards Whether to claim pending reward tokens
    function deposit(uint256 _value, address _addr, bool _claim_rewards) external;

    /// @notice Withdraw LP tokens from the gauge
    /// @dev Withdrawing without claiming rewards
    /// @param _value Number of tokens to withdraw
    function withdraw(
        uint256 _value
    ) external;

    function balanceOf(
        address _account
    ) external view returns (uint256);

    /// @notice get the LP token address
    function lp_token() external view returns (address);

    /// @notice Returns true if the gauge has been killed
    function is_killed() external view returns (bool);

    /// @notice Record a checkpoint for `addr`
    /// @param addr User address
    /// @return bool success
    function user_checkpoint(
        address addr
    ) external returns (bool);
}

// slither-disable-end naming-convention
