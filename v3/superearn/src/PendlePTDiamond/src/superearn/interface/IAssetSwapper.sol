// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title IAssetSwapper
 * @notice Generalized interface for swapping between vault assets and strategy assets
 * @dev This interface abstracts asset conversion with optional cooldown periods.
 *      Implementations can handle various token pairs:
 *      - USDC ↔ sUSDe (with 7-day Ethena cooldown)
 *      - USDT ↔ stETH (instant or with cooldown)
 *      - DAI ↔ wstETH, etc.
 *
 * Key concepts:
 * - vaultAsset: The asset held by CooldownVault (e.g., USDC)
 * - strategyAsset: The asset used by the strategy for yield (e.g., sUSDe for Pendle PT)
 * - Forward swap (deposit): vaultAsset → strategyAsset (usually instant)
 * - Reverse swap (redeem): strategyAsset → vaultAsset (may require cooldown)
 */
interface IAssetSwapper {
    // ============================================
    // EVENTS
    // ============================================

    event SwapToStrategyAsset(address indexed caller, uint256 vaultAssetIn, uint256 strategyAssetOut);

    event SwapRequested(
        uint256 indexed requestId, address indexed requester, uint256 strategyAssetAmount, uint256 cooldownEnd
    );

    event SwapClaimed(uint256 indexed requestId, address indexed claimer, uint256 vaultAssetOut);

    // ============================================
    // ERRORS
    // ============================================

    error ZeroAmount();
    error ZeroAddress();
    error InvalidRequestId();
    error RequestAlreadyClaimed();
    error CooldownNotComplete();
    error SlippageExceeded(uint256 expected, uint256 actual);
    error NotAuthorized();
    error InsufficientBalance();

    // ============================================
    // FORWARD SWAP: Vault Asset → Strategy Asset
    // ============================================

    /**
     * @notice Swap vault asset to strategy asset (instant execution)
     * @param amount Amount of vault asset to swap
     * @param minOut Minimum strategy asset to receive (slippage protection)
     * @return received Amount of strategy asset received
     * @dev For USDC→sUSDe: USDC → USDe (Uniswap) → sUSDe (Ethena stake)
     */
    function swapToStrategyAsset(uint256 amount, uint256 minOut) external returns (uint256 received);

    /**
     * @notice Preview expected strategy asset output for given vault asset input
     * @param amount Amount of vault asset to swap
     * @return expectedOut Expected strategy asset output
     */
    function previewSwapToStrategyAsset(uint256 amount) external view returns (uint256 expectedOut);

    // ============================================
    // REVERSE SWAP: Strategy Asset → Vault Asset (with cooldown)
    // ============================================

    /**
     * @notice Request reverse swap (starts cooldown if applicable)
     * @param amount Amount of strategy asset to swap
     * @return requestId Unique identifier for the request
     * @dev For sUSDe→USDC: Starts Ethena cooldown (7 days)
     *      The strategy asset is transferred to the swapper and locked
     */
    function requestSwapToVaultAsset(uint256 amount) external returns (uint256 requestId);

    /**
     * @notice Claim completed reverse swap after cooldown
     * @param requestId Request identifier from requestSwapToVaultAsset
     * @param minOut Minimum vault asset to receive (slippage protection)
     * @return received Amount of vault asset received
     * @dev For sUSDe→USDC: Ethena unstake → USDe → USDC (Uniswap swap)
     */
    function claimSwapToVaultAsset(uint256 requestId, uint256 minOut) external returns (uint256 received);

    /**
     * @notice Check if reverse swap request is claimable
     * @param requestId Request identifier
     * @return isClaimable True if cooldown is complete and claim is possible
     */
    function isSwapClaimable(uint256 requestId) external view returns (bool isClaimable);

    /**
     * @notice Preview expected vault asset output for given strategy asset input
     * @param amount Amount of strategy asset to swap
     * @return expectedOut Expected vault asset output
     */
    function previewSwapToVaultAsset(uint256 amount) external view returns (uint256 expectedOut);

    /**
     * @notice Get swap request details
     * @param requestId Request identifier
     * @return requester Address that created the request
     * @return strategyAssetAmount Amount of strategy asset locked
     * @return cooldownEnd Timestamp when cooldown completes
     * @return claimed Whether the request has been claimed
     */
    function getSwapRequest(uint256 requestId)
        external
        view
        returns (address requester, uint256 strategyAssetAmount, uint256 cooldownEnd, bool claimed);

    // ============================================
    // COOLDOWN INFO
    // ============================================

    /**
     * @notice Get cooldown duration for reverse swaps
     * @return duration Cooldown duration in seconds (e.g., 7 days for sUSDe)
     * @dev Returns 0 if no cooldown is required
     */
    function getCooldownDuration() external view returns (uint256 duration);

    // ============================================
    // MULTI-PHASE SUPPORT
    // ============================================

    /**
     * @notice Check if this swapper has multiple phases in its cooldown process
     * @return hasMultiple True if swapper requires multiple phases (e.g., sNUSD: 10-day cooldown + 0-48h redeem)
     * @dev Single-phase swappers should return false. Multi-phase swappers need
     *      advancePhase() to be called between phases.
     */
    function hasMultiplePhases() external view returns (bool hasMultiple);

    /**
     * @notice Advance to the next phase of a multi-phase cooldown
     * @param requestId Request identifier
     * @return success True if phase was successfully advanced
     * @dev Only callable when current phase is complete. For single-phase swappers,
     *      this should return false. Keepers call this to transition between phases.
     *
     *      Example for sNUSD:
     *      - Phase 1: sNUSD cooldown (10 days) → advancePhase starts NUSD redeem
     *      - Phase 2: NUSD redeem (0-48h) → claimSwapToVaultAsset completes
     */
    function advancePhase(uint256 requestId) external returns (bool success);

    /**
     * @notice Check if the current phase is complete and ready to advance
     * @param requestId Request identifier
     * @return isComplete True if current phase is complete
     * @dev For single-phase swappers, this is equivalent to isSwapClaimable.
     *      For multi-phase swappers, this indicates readiness to advance to next phase.
     */
    function isCurrentPhaseComplete(uint256 requestId) external view returns (bool isComplete);

    /**
     * @notice Get current phase information for a swap request
     * @param requestId Request identifier
     * @return currentPhase Current phase number (1-indexed)
     * @return totalPhases Total number of phases
     * @return phaseEndTime Timestamp when current phase ends (0 if variable/unknown)
     * @dev For single-phase swappers: returns (1, 1, cooldownEnd)
     */
    function getPhaseInfo(uint256 requestId)
        external
        view
        returns (uint8 currentPhase, uint8 totalPhases, uint256 phaseEndTime);

    // ============================================
    // ADMIN
    // ============================================

    /**
     * @notice Recover accidentally sent tokens
     * @param token Address of the token to recover
     * @param to Address to send the tokens to
     * @param amount Amount of tokens to recover
     */
    function recoverTokens(address token, address to, uint256 amount) external;

    // ============================================
    // ASSET INFO
    // ============================================

    /**
     * @notice Get vault asset address (e.g., USDC)
     * @return asset Address of the vault asset token
     */
    function vaultAsset() external view returns (address asset);

    /**
     * @notice Get strategy asset address (e.g., sUSDe)
     * @return asset Address of the strategy asset token
     */
    function strategyAsset() external view returns (address asset);
}
