// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title ICurveLiquidityGauge
/// @notice Interface for Curve Liquidity Gauge contracts that distribute CRV rewards
/// @dev Gauges are used to stake LP tokens and earn CRV + potentially other reward tokens
interface ICurveLiquidityGauge {
    // ═══════════════════════════════════════ Staking ═══════════════════════════════════════

    /// @notice Deposit LP tokens into the gauge
    /// @param _value Amount of LP tokens to deposit
    function deposit(uint256 _value) external;

    /// @notice Deposit LP tokens into the gauge for another address
    /// @param _value Amount of LP tokens to deposit
    /// @param _addr Address to deposit for
    function deposit(uint256 _value, address _addr) external;

    /// @notice Deposit LP tokens with claim rewards option
    /// @param _value Amount of LP tokens to deposit
    /// @param _addr Address to deposit for
    /// @param _claim_rewards Whether to claim pending rewards
    function deposit(uint256 _value, address _addr, bool _claim_rewards) external;

    /// @notice Withdraw LP tokens from the gauge
    /// @param _value Amount of LP tokens to withdraw
    function withdraw(uint256 _value) external;

    /// @notice Withdraw LP tokens with claim rewards option
    /// @param _value Amount of LP tokens to withdraw
    /// @param _claim_rewards Whether to claim pending rewards
    function withdraw(uint256 _value, bool _claim_rewards) external;

    // ═══════════════════════════════════════ Rewards ═══════════════════════════════════════

    /// @notice Claim all pending reward tokens for msg.sender
    function claim_rewards() external;

    /// @notice Claim rewards for a specific address
    /// @param _addr Address to claim for
    function claim_rewards(address _addr) external;

    /// @notice Claim rewards and send to a specific receiver
    /// @param _addr Address to claim for
    /// @param _receiver Address to receive rewards (empty = default receiver or _addr)
    function claim_rewards(address _addr, address _receiver) external;

    /// @notice Get claimable amount for a specific reward token
    /// @param _addr User address
    /// @param _token Reward token address
    /// @return Claimable amount
    function claimable_reward(address _addr, address _token) external view returns (uint256);

    /// @notice Get claimable CRV tokens
    /// @dev This function internally checkpoints state but is exported as view in the ABI.
    ///      May fail when called via staticcall on some networks.
    /// @param _addr Address to query
    /// @return Claimable CRV amount
    function claimable_tokens(address _addr) external view returns (uint256);

    /// @notice Get the number of reward tokens
    /// @return Count of reward tokens
    function reward_count() external view returns (uint256);

    /// @notice Get reward token by index
    /// @param _index Index of reward token
    /// @return Address of reward token
    function reward_tokens(uint256 _index) external view returns (address);

    /// @notice Get reward data for a token
    /// @param _token Reward token address
    /// @return distributor The address that distributes rewards
    /// @return period_finish Timestamp when the reward period ends
    /// @return rate Rate of reward distribution
    /// @return last_update Last time rewards were updated
    /// @return integral Accumulated reward integral
    function reward_data(address _token)
        external
        view
        returns (address distributor, uint256 period_finish, uint256 rate, uint256 last_update, uint256 integral);

    // ═══════════════════════════════════════ Balances ═══════════════════════════════════════

    /// @notice Get staked balance of an address
    /// @param _addr Address to query
    /// @return Staked LP token balance
    function balanceOf(address _addr) external view returns (uint256);

    /// @notice Get total staked LP tokens
    /// @return Total staked amount
    function totalSupply() external view returns (uint256);

    /// @notice Get the LP token address
    /// @return LP token address
    function lp_token() external view returns (address);

    // ═══════════════════════════════════════ Info ═══════════════════════════════════════

    /// @notice Get the CRV token address
    /// @return CRV token address
    function crv_token() external view returns (address);

    /// @notice Get the controller address
    /// @return Controller address
    function controller() external view returns (address);

    /// @notice Get the minter address
    /// @return Minter address
    function minter() external view returns (address);

    /// @notice Get working supply for boosted rewards calculation
    /// @return Working supply
    function working_supply() external view returns (uint256);

    /// @notice Get working balance for an address
    /// @param _addr Address to query
    /// @return Working balance
    function working_balances(address _addr) external view returns (uint256);

    /// @notice Get the inflation rate
    /// @return Inflation rate
    function inflation_rate() external view returns (uint256);

    /// @notice Get the future epoch time
    /// @return Future epoch timestamp
    function future_epoch_time() external view returns (uint256);

    /// @notice Get total CRV claimable (integral) for an address
    /// @dev This is the total CRV ever earned, subtract minted to get claimable
    /// @param _addr Address to query
    /// @return Total CRV integral for address
    function integrate_fraction(address _addr) external view returns (uint256);
}

/// @title ICurveMinter
/// @notice Interface for the CRV Minter contract
/// @dev Used to mint CRV tokens based on gauge rewards
interface ICurveMinter {
    /// @notice Mint CRV for a gauge
    /// @param gauge_addr Address of the gauge
    /// @return Amount minted
    function mint(address gauge_addr) external returns (uint256);

    /// @notice Mint CRV for multiple gauges
    /// @param gauge_addrs Array of gauge addresses
    function mint_many(address[8] calldata gauge_addrs) external;

    /// @notice Mint CRV for a gauge and send to another address
    /// @param gauge_addr Gauge address
    /// @param _for Address to mint for
    /// @return Amount minted
    function mint_for(address gauge_addr, address _for) external returns (uint256);

    /// @notice Get minted CRV for an address from a gauge
    /// @param _for User address
    /// @param gauge_addr Gauge address
    /// @return Amount minted
    function minted(address _for, address gauge_addr) external view returns (uint256);

    /// @notice Get the CRV token address
    /// @return CRV token address
    function token() external view returns (address);

    /// @notice Get the controller address
    /// @return Controller address
    function controller() external view returns (address);
}
