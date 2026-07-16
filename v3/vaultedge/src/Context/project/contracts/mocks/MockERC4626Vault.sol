// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MockERC4626Vault
 * @notice ⚠️ DEVELOPMENT/TESTING ONLY ⚠️
 * @dev Mock ERC4626 vault for testing yield-bearing collateral scenarios.
 *      Uses 18 decimals for shares (like Morpho vaults) regardless of underlying decimals.
 *
 *      This contract is NOT suitable for production deployment due to:
 *      - Public yield donation (anyone can inflate share value)
 *      - Owner-controlled yield simulation
 *      - No security measures for production use
 *
 *      Key functions for testing:
 *      - donateYield(amount): Transfer underlying to vault to increase share value
 *      - simulateYieldBps(bps): Owner can simulate % yield (e.g., 500 = 5%)
 *      - getCurrentExchangeRate(): Get current assets per 1e18 shares
 *
 * @custom:security-contact This is a mock contract for testing only
 */
contract MockERC4626Vault is ERC4626, Ownable {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    //                                  EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Emitted when yield is donated to the vault
    event YieldDonated(address indexed donor, uint256 amount, uint256 newTotalAssets);

    /// @notice Emitted when yield is simulated by owner
    event YieldSimulated(uint256 yieldBps, uint256 yieldAmount, uint256 newTotalAssets);

    // ═══════════════════════════════════════════════════════════════════════════
    //                                CONSTANTS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Basis points denominator (100% = 10000 bps)
    uint256 public constant BPS_DENOMINATOR = 10000;

    /// @notice Maximum yield that can be simulated in one call (1000% = 100000 bps)
    uint256 public constant MAX_YIELD_BPS = 100000;

    // ═══════════════════════════════════════════════════════════════════════════
    //                              CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Create a new MockERC4626Vault
     * @param asset_ The underlying asset (e.g., mUSD)
     * @param name_ Vault share token name (e.g., "Mock Vault USD")
     * @param symbol_ Vault share token symbol (e.g., "mvUSD")
     */
    constructor(
        IERC20 asset_,
        string memory name_,
        string memory symbol_
    ) ERC4626(asset_) ERC20(name_, symbol_) Ownable() {}

    // ═══════════════════════════════════════════════════════════════════════════
    //                            DECIMAL OVERRIDE
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Returns 18 decimals for shares (Morpho-style)
     * @dev Overrides ERC4626 default which would match underlying decimals.
     *      18 decimals provides better precision and matches real vaults like Morpho.
     * @return Always returns 18
     */
    function decimals() public pure override(ERC4626) returns (uint8) {
        return 18;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    //                            YIELD SIMULATION
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Donate yield to the vault (anyone can call)
     * @dev Transfers underlying tokens from caller to vault, increasing share value.
     *      This simulates yield earned by the vault (e.g., from lending, staking).
     *
     *      Example: If vault has 1000 mUSD and 1000e18 shares (1:1 ratio),
     *               donating 50 mUSD makes each share worth 1.05 mUSD.
     *
     * @param amount Amount of underlying tokens to donate (in underlying decimals)
     */
    function donateYield(uint256 amount) external {
        require(amount > 0, "MockERC4626Vault: zero amount");

        IERC20 underlying = IERC20(asset());
        underlying.safeTransferFrom(msg.sender, address(this), amount);

        emit YieldDonated(msg.sender, amount, totalAssets());
    }

    /**
     * @notice Simulate yield as a percentage of total assets (owner only)
     * @dev Mints underlying tokens directly to the vault to simulate yield.
     *      Requires the underlying token to have a public mint function.
     *
     *      This is useful for testing without needing to acquire tokens first.
     *
     * @param yieldBps Yield in basis points (e.g., 500 = 5%, 10000 = 100%)
     */
    function simulateYieldBps(uint256 yieldBps) external onlyOwner {
        require(yieldBps > 0, "MockERC4626Vault: zero yield");
        require(yieldBps <= MAX_YIELD_BPS, "MockERC4626Vault: yield too high");

        uint256 currentAssets = totalAssets();
        require(currentAssets > 0, "MockERC4626Vault: no assets to yield on");

        uint256 yieldAmount = (currentAssets * yieldBps) / BPS_DENOMINATOR;

        // Try to mint from underlying (assumes MockERC20Token interface)
        // This will revert if underlying doesn't support minting
        (bool success, ) = asset().call(
            abi.encodeWithSignature("mint(address,uint256)", address(this), yieldAmount)
        );
        require(success, "MockERC4626Vault: mint failed (underlying must be MockERC20Token)");

        emit YieldSimulated(yieldBps, yieldAmount, totalAssets());
    }

    // ═══════════════════════════════════════════════════════════════════════════
    //                              VIEW HELPERS
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Get the current exchange rate (assets per 1e18 shares)
     * @dev Returns how many underlying tokens 1 full share (1e18) is worth.
     *      Useful for debugging and testing yield scenarios.
     * @return assetsPerShare Amount of underlying per 1e18 shares (in underlying decimals)
     */
    function getCurrentExchangeRate() external view returns (uint256 assetsPerShare) {
        return convertToAssets(1e18);
    }

    /**
     * @notice Get the current share price in underlying decimals
     * @dev Alias for getCurrentExchangeRate() for clarity
     * @return price Amount of underlying per 1e18 shares
     */
    function pricePerShare() external view returns (uint256 price) {
        return convertToAssets(1e18);
    }

    /**
     * @notice Check if this is a mock contract
     * @return Always returns true to identify as mock
     * @dev Can be used by other contracts to detect mock vs real vaults
     */
    function isMockContract() external pure returns (bool) {
        return true;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    //                          INTERNAL OVERRIDES
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @dev Override _decimalsOffset to account for 18 decimal shares with variable underlying.
     *      Since we hardcode decimals() to 18, we need to adjust the offset.
     *
     *      For 6-decimal underlying (like USDC/mUSD):
     *        - Share decimals: 18
     *        - Underlying decimals: 6
     *        - Offset needed: 18 - 6 = 12
     *
     *      This ensures convertToAssets/convertToShares math works correctly.
     */
    function _decimalsOffset() internal view override returns (uint8) {
        uint8 underlyingDecimals = IERC20Metadata(asset()).decimals();
        // We want 18 decimal shares, so offset = 18 - underlying decimals
        return 18 - underlyingDecimals;
    }
}
