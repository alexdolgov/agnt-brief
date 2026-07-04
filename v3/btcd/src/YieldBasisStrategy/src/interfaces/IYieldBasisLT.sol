// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IYieldBasisLT
 * @notice Interface for the Yield Basis LT (Leveraged Token) contract
 * @dev Based on yield-basis/yb-core LT.vy contract
 *      LT Contract on mainnet: 0x6095a220C5567360d459462A25b1AD5aEAD45204
 */
interface IYieldBasisLT {
    /* ───────────────────────── Structs ───────────────────────── */

    struct AMMState {
        uint256 collateral;
        uint256 debt;
        uint256 x0;
    }

    struct LiquidityValues {
        int256 admin;
        uint256 total;
        uint256 idealStaked;
        uint256 staked;
    }

    /* ───────────────────────── Events ───────────────────────── */

    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender, address indexed receiver, address indexed owner, uint256 assets, uint256 shares
    );

    /* ───────────────────────── View Functions ───────────────────────── */

    /// @notice Returns the address of the underlying asset token (e.g., WBTC)
    function ASSET_TOKEN() external view returns (address);

    /// @notice Returns the address of the stablecoin used for borrowing
    function STABLECOIN() external view returns (address);

    /// @notice Returns the address of the Curve CryptoPool
    function CRYPTOPOOL() external view returns (address);

    /// @notice Returns the AMM contract address
    function amm() external view returns (address);

    /// @notice Returns the price oracle/aggregator address
    function agg() external view returns (address);

    /// @notice Returns the admin address
    function admin() external view returns (address);

    /// @notice Returns the staker (gauge) address
    function staker() external view returns (address);

    /// @notice Returns the token decimals (always 18)
    function decimals() external view returns (uint8);

    /// @notice Returns the total supply of LT shares
    function totalSupply() external view returns (uint256);

    /// @notice Returns the balance of LT shares for an account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Returns the allowance for a spender
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Returns the stablecoin allocation limit
    function stablecoin_allocation() external view returns (uint256);

    /// @notice Returns the current stablecoin allocated amount
    function stablecoin_allocated() external view returns (uint256);

    /// @notice Returns the current liquidity values
    function liquidity() external view returns (int256 admin, uint256 total, uint256 idealStaked, uint256 staked);

    /// @notice Returns the price per share (value of 1 LT share)
    function pricePerShare() external view returns (uint256);

    /// @notice Preview the shares to receive for a deposit
    /// @param assets Amount of crypto to deposit
    /// @param debt Amount of stables to borrow for MMing
    /// @param raise_overflow Whether to raise on overflow
    /// @return shares Amount of shares that would be received
    function preview_deposit(uint256 assets, uint256 debt, bool raise_overflow) external view returns (uint256 shares);
    function preview_deposit(uint256 assets, uint256 debt) external view returns (uint256 shares);
    /// @notice Preview the assets to receive for a withdrawal
    /// @param shares Shares to withdraw
    /// @return assets Amount of assets that would be received
    function preview_withdraw(uint256 shares) external view returns (uint256 assets);

    /// @notice Preview emergency withdrawal amounts
    /// @param shares Shares to withdraw
    /// @return collateral Unsigned collateral amount
    /// @return stables Signed stables (negative means need to bring them)
    function preview_emergency_withdraw(uint256 shares) external view returns (uint256 collateral, int256 stables);

    /* ───────────────────────── State-Changing Functions ───────────────────────── */

    /// @notice Deposit assets to receive LT shares
    /// @param assets Amount of assets to deposit (e.g., WBTC)
    /// @param debt Amount of debt for AMM to take (approximately assets * price)
    /// @param min_shares Minimal amount of shares to receive (slippage protection)
    /// @param receiver Receiver of the shares (optional, defaults to msg.sender)
    /// @return shares Amount of shares minted
    function deposit(uint256 assets, uint256 debt, uint256 min_shares, address receiver)
        external
        returns (uint256 shares);

    /// @notice Deposit assets to receive LT shares (without receiver param)
    /// @param assets Amount of assets to deposit
    /// @param debt Amount of debt for AMM to take
    /// @param min_shares Minimal amount of shares to receive
    /// @return shares Amount of shares minted
    function deposit(uint256 assets, uint256 debt, uint256 min_shares) external returns (uint256 shares);

    /// @notice Withdraw assets by burning LT shares
    /// @param shares Shares to withdraw
    /// @param min_assets Minimal amount of assets to receive (slippage protection)
    /// @param receiver Receiver of the assets (optional, defaults to msg.sender)
    /// @return assets Amount of assets received
    function withdraw(uint256 shares, uint256 min_assets, address receiver) external returns (uint256 assets);

    /// @notice Withdraw assets by burning LT shares (without receiver param)
    /// @param shares Shares to withdraw
    /// @param min_assets Minimal amount of assets to receive
    /// @return assets Amount of assets received
    function withdraw(uint256 shares, uint256 min_assets) external returns (uint256 assets);

    /// @notice Emergency withdrawal - repay debt from wallet and withdraw
    /// @param shares Shares to withdraw
    /// @param receiver Receiver of the assets
    /// @param owner Owner of the shares
    /// @return collateral Unsigned asset amount
    /// @return stables Signed stables (negative means brought from wallet)
    function emergency_withdraw(uint256 shares, address receiver, address owner)
        external
        returns (uint256 collateral, int256 stables);

    /// @notice Transfer LT shares
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Transfer LT shares from another account
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Approve spending of LT shares
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Allocate stablecoins to the AMM
    /// @param limit Optional limit for allocation
    function allocate_stablecoins(uint256 limit) external;

    /// @notice Allocate stablecoins (no limit)
    function allocate_stablecoins() external;

    /// @notice Distribute borrower fees to the pool
    function distribute_borrower_fees() external;

    /// @notice Checkpoint the staker rebase
    function checkpoint_staker_rebase() external;

    /// @notice Set the interest rate
    /// @param rate New rate in units of int(fraction * 1e18) per second
    function set_rate(uint256 rate) external;
}
