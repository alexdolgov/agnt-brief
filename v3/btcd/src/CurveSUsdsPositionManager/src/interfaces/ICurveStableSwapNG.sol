// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title ICurveStableSwapNG
/// @notice Interface for Curve StableSwap NG pools (next generation)
/// @dev The pool contract is also the LP token (ERC20).
///      Function and parameter names use snake_case to match the on-chain Curve ABI.
interface ICurveStableSwapNG {
    // ═══════════════════════════════════════ Pool Info ═══════════════════════════════════════

    /// @notice Get the address of a coin in the pool
    /// @param i Index of the coin
    /// @return Address of the coin
    function coins(uint256 i) external view returns (address);

    /// @notice Get the number of coins in the pool
    /// @return Number of coins
    function N_COINS() external view returns (uint256);

    /// @notice Get the balance of a specific coin in the pool (excluding admin fees)
    /// @param i Index of the coin
    /// @return Balance of the coin
    function balances(uint256 i) external view returns (uint256);

    /// @notice Get the pool fee (in 1e10 precision, e.g., 4000000 = 0.04%)
    /// @return Fee value
    function fee() external view returns (uint256);

    /// @notice Get the amplification coefficient
    /// @return A parameter
    function A() external view returns (uint256);

    /// @notice Get precise A parameter (with A_PRECISION = 100)
    /// @return A_precise value
    // forge-lint: disable-next-line(mixed-case-function)
    function A_precise() external view returns (uint256);

    // ═══════════════════════════════════════ ERC20 (LP Token) ═══════════════════════════════════════

    /// @notice Get total supply of LP tokens
    /// @return Total supply
    function totalSupply() external view returns (uint256);

    /// @notice Get LP token balance of an account
    /// @param account Address to query
    /// @return Balance
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfer LP tokens
    /// @param to Recipient address
    /// @param amount Amount to transfer
    /// @return Success
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Approve spender for LP tokens
    /// @param spender Spender address
    /// @param amount Amount to approve
    /// @return Success
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Get allowance
    /// @param owner Owner address
    /// @param spender Spender address
    /// @return Allowance amount
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Transfer LP tokens from another address
    /// @param from Sender address
    /// @param to Recipient address
    /// @param amount Amount to transfer
    /// @return Success
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Get LP token name
    /// @return Token name
    function name() external view returns (string memory);

    /// @notice Get LP token symbol
    /// @return Token symbol
    function symbol() external view returns (string memory);

    /// @notice Get LP token decimals (always 18)
    /// @return Decimals
    function decimals() external view returns (uint8);

    // ═══════════════════════════════════════ Liquidity Operations ═══════════════════════════════════════

    /// @notice Deposit coins into the pool
    /// @param _amounts List of amounts of coins to deposit
    /// @param _minMintAmount Minimum amount of LP tokens to mint
    /// @param _receiver Address that receives LP tokens
    /// @return Amount of LP tokens minted
    // forge-lint: disable-next-line(mixed-case-function)
    function add_liquidity(uint256[] calldata _amounts, uint256 _minMintAmount, address _receiver)
        external
        returns (uint256);

    /// @notice Withdraw coins from the pool proportionally
    /// @param _burnAmount Amount of LP tokens to burn
    /// @param _minAmounts Minimum amounts of coins to receive
    /// @param _receiver Address that receives coins
    /// @param _claimAdminFees Whether to claim admin fees
    /// @return Amounts of coins received
    // forge-lint: disable-next-line(mixed-case-function)
    function remove_liquidity(
        uint256 _burnAmount,
        uint256[] calldata _minAmounts,
        address _receiver,
        bool _claimAdminFees
    ) external returns (uint256[] memory);

    /// @notice Withdraw a single coin from the pool
    /// @param _burnAmount Amount of LP tokens to burn
    /// @param i Index of the coin to withdraw
    /// @param _minReceived Minimum amount to receive
    /// @param _receiver Address that receives the coin
    /// @return Amount received
    // forge-lint: disable-next-line(mixed-case-function)
    function remove_liquidity_one_coin(uint256 _burnAmount, int128 i, uint256 _minReceived, address _receiver)
        external
        returns (uint256);

    /// @notice Withdraw coins in imbalanced amounts
    /// @param _amounts Amounts of coins to withdraw
    /// @param _maxBurnAmount Maximum LP tokens to burn
    /// @param _receiver Address that receives coins
    /// @return LP tokens burned
    // forge-lint: disable-next-line(mixed-case-function)
    function remove_liquidity_imbalance(uint256[] calldata _amounts, uint256 _maxBurnAmount, address _receiver)
        external
        returns (uint256);

    // ═══════════════════════════════════════ Exchange ═══════════════════════════════════════

    /// @notice Perform an exchange between two coins
    /// @param i Index of coin to send
    /// @param j Index of coin to receive
    /// @param _dx Amount of coin i to exchange
    /// @param _minDy Minimum amount of coin j to receive
    /// @param _receiver Address that receives coin j
    /// @return Amount of coin j received
    function exchange(int128 i, int128 j, uint256 _dx, uint256 _minDy, address _receiver)
        external
        returns (uint256);

    // ═══════════════════════════════════════ View Functions ═══════════════════════════════════════

    /// @notice Calculate expected output for a swap
    /// @param i Index of input coin
    /// @param j Index of output coin
    /// @param dx Amount of input coin
    /// @return Expected output amount
    // forge-lint: disable-next-line(mixed-case-function)
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);

    /// @notice Calculate required input for desired output
    /// @param i Index of input coin
    /// @param j Index of output coin
    /// @param dy Desired output amount
    /// @return Required input amount
    // forge-lint: disable-next-line(mixed-case-function)
    function get_dx(int128 i, int128 j, uint256 dy) external view returns (uint256);

    /// @notice Calculate LP tokens for deposit/withdrawal
    /// @param _amounts Amounts of each coin
    /// @param _isDeposit True for deposit, false for withdrawal
    /// @return Expected LP token amount
    // forge-lint: disable-next-line(mixed-case-function)
    function calc_token_amount(uint256[] calldata _amounts, bool _isDeposit) external view returns (uint256);

    /// @notice Calculate single-coin withdrawal amount
    /// @param _burnAmount LP tokens to burn
    /// @param i Index of coin to withdraw
    /// @return Expected coin amount
    // forge-lint: disable-next-line(mixed-case-function)
    function calc_withdraw_one_coin(uint256 _burnAmount, int128 i) external view returns (uint256);

    /// @notice Get virtual price of LP token (useful for PnL tracking)
    /// @return Virtual price in 1e18 precision
    // forge-lint: disable-next-line(mixed-case-function)
    function get_virtual_price() external view returns (uint256);

    /// @notice Get dynamic fee for a swap
    /// @param i Index of input coin
    /// @param j Index of output coin
    /// @return Fee in 1e10 precision
    // forge-lint: disable-next-line(mixed-case-function)
    function dynamic_fee(int128 i, int128 j) external view returns (uint256);

    /// @notice Get stored rate multipliers for all coins
    /// @return Array of rate multipliers
    // forge-lint: disable-next-line(mixed-case-function)
    function stored_rates() external view returns (uint256[] memory);
}
