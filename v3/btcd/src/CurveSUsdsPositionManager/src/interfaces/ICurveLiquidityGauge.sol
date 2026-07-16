// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title ICurveLiquidityGauge
/// @notice Interface for Curve Liquidity Gauge contracts that distribute CRV rewards
/// @dev Gauges are used to stake LP tokens and earn CRV + potentially other reward tokens.
///      Function and parameter names use snake_case to match the on-chain Curve ABI.
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
    /// @param _claimRewards Whether to claim pending rewards
    function deposit(uint256 _value, address _addr, bool _claimRewards) external;

    /// @notice Withdraw LP tokens from the gauge
    /// @param _value Amount of LP tokens to withdraw
    function withdraw(uint256 _value) external;

    /// @notice Withdraw LP tokens with claim rewards option
    /// @param _value Amount of LP tokens to withdraw
    /// @param _claimRewards Whether to claim pending rewards
    function withdraw(uint256 _value, bool _claimRewards) external;

    // ═══════════════════════════════════════ Rewards ═══════════════════════════════════════

    /// @notice Claim all pending reward tokens for msg.sender
    // forge-lint: disable-next-line(mixed-case-function)
    function claim_rewards() external;

    /// @notice Claim rewards for a specific address
    /// @param _addr Address to claim for
    // forge-lint: disable-next-line(mixed-case-function)
    function claim_rewards(address _addr) external;

    /// @notice Claim rewards and send to a specific receiver
    /// @param _addr Address to claim for
    /// @param _receiver Address to receive rewards (empty = default receiver or _addr)
    // forge-lint: disable-next-line(mixed-case-function)
    function claim_rewards(address _addr, address _receiver) external;

    /// @notice Get claimable amount for a specific reward token
    /// @param _addr User address
    /// @param _token Reward token address
    /// @return Claimable amount
    // forge-lint: disable-next-line(mixed-case-function)
    function claimable_reward(address _addr, address _token) external view returns (uint256);

    /// @notice Get claimable CRV tokens
    /// @dev This function internally checkpoints state but is exported as view in the ABI.
    ///      May fail when called via staticcall on some networks.
    /// @param _addr Address to query
    /// @return Claimable CRV amount
    // forge-lint: disable-next-line(mixed-case-function)
    function claimable_tokens(address _addr) external view returns (uint256);

    /// @notice Get the number of reward tokens
    /// @return Count of reward tokens
    // forge-lint: disable-next-line(mixed-case-function)
    function reward_count() external view returns (uint256);

    /// @notice Get reward token by index
    /// @param _index Index of reward token
    /// @return Address of reward token
    // forge-lint: disable-next-line(mixed-case-function)
    function reward_tokens(uint256 _index) external view returns (address);

    /// @notice Get reward data for a token
    /// @param _token Reward token address
    /// @return distributor The address that distributes rewards
    /// @return periodFinish Timestamp when the reward period ends
    /// @return rate Rate of reward distribution
    /// @return lastUpdate Last time rewards were updated
    /// @return integral Accumulated reward integral
    // forge-lint: disable-next-line(mixed-case-function)
    function reward_data(address _token)
        external
        view
        returns (address distributor, uint256 periodFinish, uint256 rate, uint256 lastUpdate, uint256 integral);

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
    // forge-lint: disable-next-line(mixed-case-function)
    function lp_token() external view returns (address);

    // ═══════════════════════════════════════ Info ═══════════════════════════════════════

    /// @notice Get the CRV token address
    /// @return CRV token address
    // forge-lint: disable-next-line(mixed-case-function)
    function crv_token() external view returns (address);

    /// @notice Get the controller address
    /// @return Controller address
    function controller() external view returns (address);

    /// @notice Get the minter address
    /// @return Minter address
    function minter() external view returns (address);

    /// @notice Get working supply for boosted rewards calculation
    /// @return Working supply
    // forge-lint: disable-next-line(mixed-case-function)
    function working_supply() external view returns (uint256);

    /// @notice Get working balance for an address
    /// @param _addr Address to query
    /// @return Working balance
    // forge-lint: disable-next-line(mixed-case-function)
    function working_balances(address _addr) external view returns (uint256);

    /// @notice Get the inflation rate
    /// @return Inflation rate
    // forge-lint: disable-next-line(mixed-case-function)
    function inflation_rate() external view returns (uint256);

    /// @notice Get the future epoch time
    /// @return Future epoch timestamp
    // forge-lint: disable-next-line(mixed-case-function)
    function future_epoch_time() external view returns (uint256);

    /// @notice Get total CRV claimable (integral) for an address
    /// @dev This is the total CRV ever earned, subtract minted to get claimable
    /// @param _addr Address to query
    /// @return Total CRV integral for address
    // forge-lint: disable-next-line(mixed-case-function)
    function integrate_fraction(address _addr) external view returns (uint256);
}

/// @title ICurveMinter
/// @notice Interface for the CRV Minter contract
/// @dev Used to mint CRV tokens based on gauge rewards.
///      Function and parameter names use snake_case to match the on-chain Curve ABI.
interface ICurveMinter {
    /// @notice Mint CRV for a gauge
    /// @dev The on-chain Vyper contract is void (no return value).
    /// @param gaugeAddr Address of the gauge
    function mint(address gaugeAddr) external;

    /// @notice Mint CRV for multiple gauges
    /// @param gaugeAddrs Array of gauge addresses
    // forge-lint: disable-next-line(mixed-case-function)
    function mint_many(address[8] calldata gaugeAddrs) external;

    /// @notice Mint CRV for a gauge and send to another address
    /// @dev The on-chain Vyper contract is void (no return value).
    /// @param gaugeAddr Gauge address
    /// @param _for Address to mint for
    // forge-lint: disable-next-line(mixed-case-function)
    function mint_for(address gaugeAddr, address _for) external;

    /// @notice Get minted CRV for an address from a gauge
    /// @param _for User address
    /// @param gaugeAddr Gauge address
    /// @return Amount minted
    function minted(address _for, address gaugeAddr) external view returns (uint256);

    /// @notice Get the CRV token address
    /// @return CRV token address
    function token() external view returns (address);

    /// @notice Get the controller address
    /// @return Controller address
    function controller() external view returns (address);
}
