// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title INeutrlMintController
 * @notice Interface for Neutrl Protocol's MintController
 * @dev Used for USDC -> NUSD minting
 *
 * Mainnet: 0xa052883ebEe7354FC2Aa0f9c727E657FdeCa744a
 */
interface INeutrlMintController {
    /**
     * @notice Mint NUSD by depositing collateral (USDC/USDT/USDe)
     * @param recipient Address to receive NUSD
     * @param collateral Collateral token address (USDC, USDT, USDe)
     * @param collateralAmount Amount of collateral to deposit
     * @param minNusdOut Minimum NUSD to receive (slippage protection)
     * @param data Additional data (usually empty)
     */
    function mint(
        address recipient,
        address collateral,
        uint256 collateralAmount,
        uint256 minNusdOut,
        bytes calldata data
    ) external;

    /**
     * @notice Quote the amount of NUSD that would be minted for a given collateral amount
     * @param collateral Collateral token address
     * @param collateralAmount Amount of collateral
     * @return nusdAmount Expected NUSD amount
     */
    function quoteDeposit(address collateral, uint256 collateralAmount) external view returns (uint256 nusdAmount);
}

/**
 * @title INeutrlRedeemController
 * @notice Interface for Neutrl Protocol's Redeem functionality
 * @dev Used for NUSD -> USDC redemption (requires KYC)
 *
 * Mainnet: 0xa052883ebEe7354FC2Aa0f9c727E657FdeCa744a (same as MintController)
 *
 * Instant Redeem:
 *   - USDC Reserve: 0x16C2C5Ab7c5A94a733Be90160c01663b7bBA0e02
 *   - If reserve balance >= redeem amount → instant (isRedeemClaimable = true immediately)
 *   - If reserve balance < redeem amount → cooldown 0-48h
 *   - Large USDC reserve typically available, so instant redeem is common
 */
interface INeutrlRedeemController {
    /**
     * @notice Request redemption of NUSD for collateral
     * @param recipient Address to receive collateral
     * @param nusdAmount Amount of NUSD to redeem
     * @param collateral Collateral token to receive (USDC, USDT, USDe)
     * @param minCollateralOut Minimum collateral to receive
     * @param data Additional data
     * @return requestId Redemption request ID
     */
    function redeem(
        address recipient,
        uint256 nusdAmount,
        address collateral,
        uint256 minCollateralOut,
        bytes calldata data
    ) external returns (uint256 requestId);

    /**
     * @notice Quote the amount of collateral for a given NUSD amount
     * @param collateral Collateral token address
     * @param nusdAmount Amount of NUSD
     * @return collateralAmount Expected collateral amount
     */
    function quoteRedeem(address collateral, uint256 nusdAmount) external view returns (uint256 collateralAmount);

    /**
     * @notice Claim a completed redemption
     * @param requestId Redemption request ID
     * @return collateralAmount Amount of collateral received
     */
    function claimRedeem(uint256 requestId) external returns (uint256 collateralAmount);

    /**
     * @notice Check if a redemption request is claimable
     * @param requestId Redemption request ID
     * @return True if claimable
     */
    function isRedeemClaimable(uint256 requestId) external view returns (bool);

    /**
     * @notice Get redemption cooldown duration
     * @return Cooldown duration in seconds
     */
    function cooldownDuration() external view returns (uint256);

    /**
     * @notice Get redemption request details
     * @param requestId Redemption request ID
     */
    function getRedeemRequest(uint256 requestId)
        external
        view
        returns (address recipient, address collateral, uint256 collateralAmount, uint256 cooldownEnd);
}

/**
 * @title INeutrlAdapter
 * @notice Interface for Pendle's Neutrl Adapter (integrated in SY)
 * @dev Used internally by Pendle SY for USDC -> sNUSD conversion
 *
 * Mainnet: 0x24b6aDcF6B5890006E67F71B03d706C1B8E0C8a3
 */
interface INeutrlAdapter {
    function getAdapterTokensDeposit() external view returns (address[] memory);
    function convertToDeposit(address tokenIn, uint256 amountIn) external returns (uint256 amountOut);
}

/**
 * @title ISNUSD
 * @notice Interface for sNUSD (Staked NUSD) with cooldown mechanism
 * @dev sNUSD uses the same pattern as Ethena's sUSDe with a 10-day cooldown
 *
 * Mainnet: 0x08EFCC2F3e61185D0EA7F8830B3FEc9Bfa2EE313
 *
 * Ref: https://docs.neutrl.fi/protocol-design/snusd
 * "The protocol enforces a 10-day cooldown period before withdrawals can be executed."
 *
 * Unstake flow:
 *   1. Call cooldownShares(shares) or cooldownAssets(assets) to start cooldown
 *   2. Wait 10 days (864000 seconds)
 *   3. Call unstake(receiver) to receive NUSD
 */
interface ISNUSD {
    /// @notice Cooldown data structure
    struct UserCooldown {
        uint104 cooldownEnd;
        uint152 underlyingAmount;
    }

    /// @notice Start cooldown for a given amount of sNUSD shares
    /// @param shares Amount of sNUSD shares to unstake
    /// @return assets Amount of NUSD that will be received after cooldown
    function cooldownShares(uint256 shares) external returns (uint256 assets);

    /// @notice Start cooldown for a given amount of underlying NUSD
    /// @param assets Amount of NUSD to withdraw
    /// @return shares Amount of sNUSD shares that will be burned
    function cooldownAssets(uint256 assets) external returns (uint256 shares);

    /// @notice Complete unstake after cooldown period
    /// @param receiver Address to receive NUSD
    function unstake(address receiver) external;

    /// @notice Get cooldown data for a user
    /// @param user Address to check
    /// @return cooldown UserCooldown struct with cooldownEnd and underlyingAmount
    function cooldowns(address user) external view returns (UserCooldown memory cooldown);

    /// @notice Get the cooldown duration in seconds
    /// @return Duration in seconds (864000 = 10 days)
    function cooldownDuration() external view returns (uint24);

    /// @notice Silo address where assets are held during cooldown
    function silo() external view returns (address);

    /// @notice ERC4626 standard functions
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
    function previewDeposit(uint256 assets) external view returns (uint256 shares);
    function previewRedeem(uint256 shares) external view returns (uint256 assets);
    function convertToShares(uint256 assets) external view returns (uint256 shares);
    function convertToAssets(uint256 shares) external view returns (uint256 assets);
    function balanceOf(address account) external view returns (uint256);
    function asset() external view returns (address);
}

