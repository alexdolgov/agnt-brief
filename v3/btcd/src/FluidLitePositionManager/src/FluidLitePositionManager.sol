// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {StrategyBase} from "strategy-base/StrategyBase.sol";

/**
 * Strategy Integration Plan: Fluid Lite Vault
 * =============================================
 *
 * ## Protocol Overview
 * Fluid Lite is an ERC-4626 vault that accepts an input asset (e.g. USDC) and
 * issues receipt shares (e.g. fLiteUSD). Yield accrues via a rising exchange
 * rate. The vault is a UUPS upgradeable proxy — approvals must be exact-amount.
 *
 * ## Chain of Command
 * Multicall -> FluidLitePositionManager -> FluidLiteVault (ERC-4626)
 *                                              |
 *                                         fUSDC -> Fluid Liquidity -> Strategies
 *
 * ## Strategy Type
 * TYP: "FLUIDLITE:<VAULTNAME>:<IOTOKEN>:<VERSION>"
 *
 * ## Contract Interactions
 * ### Deposit Flow
 * 1. ASSET.forceApprove(VAULT, assetAmount) — exact amount only
 * 2. VAULT.deposit(assetAmount, address(this)) — receive shares
 * 3. require(shares >= minSharesOut) — slippage check
 * 4. ASSET.forceApprove(VAULT, 0) — reset approval to zero
 *
 * ### Withdraw Flow
 * 1. VAULT.withdraw(assetAmount, receiver, address(this)) — burns shares, sends assets
 * 2. require(sharesBurned <= maxShares) — slippage check
 *
 * ## Contract Invariants
 * - INV-C1: No phantom gains — total withdrawn <= total deposited
 * - INV-C2: Token conservation — all tokens accounted for across manager + vault
 * - INV-C3: Share accounting — shares minted >= shares burned
 * - INV-C4: No stuck tokens — if 0 net shares, manager vault position ~0
 * - INV-C5: Access control — only owner can call deposit/withdrawAssets
 * - INV-C6: Approval hygiene — ASSET approval to vault is 0 after every deposit
 *
 * ## Security Considerations
 * - UUPS upgradeable vault: per-deposit approval + reset to zero
 * - No reentrancy risk: single external call per function, state not read after
 * - No flash loan risk: onlyOwner gates all mutations
 */

/// @title FluidLitePositionManager
/// @notice ERC-4626 vault position manager for the Fluid Lite protocol.
/// @dev Inherits StrategyBase (Ownable, SafeERC20, multicall, ERC20 utilities).
///      The underlying vault is a UUPS upgradeable proxy; approvals are set to the
///      exact deposit amount and immediately reset to zero after each deposit.
contract FluidLitePositionManager is StrategyBase {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════ Immutables ═══════════════════════════════════════

    /// @notice The ERC-4626 vault this manager deposits into.
    IERC4626 public immutable VAULT;

    /// @notice The underlying asset accepted by the vault.
    IERC20 public immutable ASSET;

    /// @notice Strategy type identifier string (e.g. "FLUIDLITE:fUSDC:USDC:1").
    string public TYP;

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    /// @notice Emitted when the received shares or burned shares violate the caller's slippage limit.
    /// @param expected The minimum shares out (deposit) or maximum shares burned (withdraw).
    /// @param actual   The actual shares received or burned.
    error SlippageExceeded(uint256 expected, uint256 actual);

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    /// @notice Emitted after a successful deposit into the vault.
    event Deposited(uint256 indexed assets, uint256 sharesReceived);

    /// @notice Emitted after a successful withdrawal from the vault.
    event Withdrawn(uint256 indexed sharesBurned, uint256 assetsReceived, address indexed receiver);

    // ═══════════════════════════════════════ Constructor ═══════════════════════════════════════

    /// @param owner_  Initial owner of this contract.
    /// @param vault_  Address of the ERC-4626 vault.
    /// @param typ_    Strategy type identifier string.
    constructor(address owner_, address vault_, string memory typ_) Ownable(owner_) {
        if (owner_ == address(0) || vault_ == address(0)) revert ZeroAddress();
        VAULT = IERC4626(vault_);
        ASSET = IERC20(IERC4626(vault_).asset());
        TYP = typ_;
    }

    // ═══════════════════════════════════════ Write Functions ═══════════════════════════════════════

    /// @notice Deposit assets into the Fluid Lite vault.
    /// @param assetAmount   Amount of ASSET to deposit.
    /// @param minSharesOut  Minimum shares to receive (slippage guard).
    /// @return shares       Actual vault shares received.
    function deposit(uint256 assetAmount, uint256 minSharesOut) external onlyOwner returns (uint256 shares) {
        if (assetAmount == 0) revert ZeroAmount();

        // Approve exact amount — vault is an upgradeable proxy so we never leave a standing approval.
        ASSET.forceApprove(address(VAULT), assetAmount);
        shares = VAULT.deposit(assetAmount, address(this));
        // Reset approval to zero immediately after the deposit call.
        ASSET.forceApprove(address(VAULT), 0);

        if (shares < minSharesOut) revert SlippageExceeded(minSharesOut, shares);

        emit Deposited(assetAmount, shares);
    }

    /// @notice Withdraw a specific asset amount from the Fluid Lite vault.
    /// @param assetAmount Amount of ASSET to withdraw.
    /// @param maxShares   Maximum shares the caller is willing to burn (slippage guard).
    /// @param receiver    Address to receive the withdrawn assets.
    /// @return assetsOut  Equal to assetAmount on success.
    function withdrawAssets(uint256 assetAmount, uint256 maxShares, address receiver)
        external
        onlyOwner
        returns (uint256 assetsOut)
    {
        if (assetAmount == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        uint256 sharesBurned = VAULT.withdraw(assetAmount, receiver, address(this));

        if (sharesBurned > maxShares) revert SlippageExceeded(maxShares, sharesBurned);

        assetsOut = assetAmount;

        emit Withdrawn(sharesBurned, assetAmount, receiver);
    }

    // ═══════════════════════════════════════ View Functions ═══════════════════════════════════════

    /// @notice Return raw position balances.
    /// @return assetBalance  Idle (uninvested) ASSET held by this contract.
    /// @return shareBalance  Vault shares held by this contract.
    /// @return sharePrice    Value of one full share expressed in asset units.
    function getRawBalance() external view returns (uint256 assetBalance, uint256 shareBalance, uint256 sharePrice) {
        shareBalance = VAULT.balanceOf(address(this));
        assetBalance = ASSET.balanceOf(address(this));
        sharePrice = VAULT.previewRedeem(10 ** uint256(IERC20Metadata(address(VAULT)).decimals()));
    }

    /// @notice Return human-readable metadata and balances for off-chain dashboards.
    /// @return inputAssetSymbol    Symbol of the underlying input asset (e.g. "USDC").
    /// @return yieldAssetSymbol    Symbol of the vault share token (e.g. "fUSDC").
    /// @return inputAssetDecimals  Decimals of the input asset.
    /// @return yieldAssetDecimals  Decimals of the vault share token.
    /// @return yieldAssetPrice     Value of one full share expressed in asset units.
    /// @return assetBalance        Idle ASSET held by this contract.
    /// @return shareBalance        Vault shares held by this contract.
    function extraInfo()
        external
        view
        returns (
            string memory inputAssetSymbol,
            string memory yieldAssetSymbol,
            uint8 inputAssetDecimals,
            uint8 yieldAssetDecimals,
            uint256 yieldAssetPrice,
            uint256 assetBalance,
            uint256 shareBalance
        )
    {
        IERC20Metadata assetMeta = IERC20Metadata(address(ASSET));
        IERC20Metadata vaultMeta = IERC20Metadata(address(VAULT));

        inputAssetSymbol = assetMeta.symbol();
        inputAssetDecimals = assetMeta.decimals();

        yieldAssetSymbol = vaultMeta.symbol();
        yieldAssetDecimals = vaultMeta.decimals();

        yieldAssetPrice = VAULT.previewRedeem(10 ** uint256(yieldAssetDecimals));

        assetBalance = ASSET.balanceOf(address(this));
        shareBalance = VAULT.balanceOf(address(this));
    }
}
