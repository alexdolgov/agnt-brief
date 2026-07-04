// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {IERC4626} from "lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {Vault} from "../base/Vault.sol";
import {IVault} from "../../interface/IVault.sol";
import {Errors} from "../../lib/Errors.sol";
import {Events} from "../../lib/Events.sol";

/// @title ERC4626
/// @author Bundie Team
/// @notice Vault module for standard ERC-4626 tokenized vaults (synchronous deposit + withdrawal)
/// @dev Handles all ERC-4626 vault interactions: deposit, redeem, preview, and slippage enforcement.
///      Both deposit() and withdraw() are fully synchronous, returning (bytes32(0), amount).
///
///      ## Slippage Enforcement
///      - Deposit: calls previewDeposit() immediately before deposit(), reverts if shares < preview
///      - Withdrawal: calls previewRedeem() immediately before redeem(), reverts if assets < preview
///
///      ## Token Flow
///      1. Router approves this module to spend tokens
///      2. This module pulls tokens from Router via transferFrom
///      3. This module approves the ERC4626 vault to spend tokens
///      4. This module calls vault.deposit() / vault.redeem()
///      5. Shares/assets are sent directly to the receiver (Account)
///
///      ## Absorbs VaultHelpers
///      This module contains the same defensive try-catch wrapping and slippage enforcement
///      that was previously in VaultHelpers.sol, making it fully self-contained.
contract ERC4626 is Vault {
    using SafeERC20 for IERC20;

    // ========================== Initialization ==========================

    /// @notice Initialize the ERC4626 vault module
    /// @dev Called by VaultManager during beacon proxy deployment.
    /// @param name_ Module name (e.g., "ERC4626")
    /// @param owner_ Owner address for admin functions
    function initialize(string calldata name_, address owner_) external initializer {
        __Vault_init(name_, owner_);
    }

    // ========================== IVault Implementation ==========================

    /// @inheritdoc IVault
    /// @dev Synchronous ERC-4626 deposit. Pulls asset tokens from caller (Router),
    ///      deposits into the vault, and sends shares to the receiver (Account).
    ///      Returns (bytes32(0), sharesReceived) indicating sync completion.
    function deposit(address vault, address asset, uint256 amount, address receiver, bytes calldata params)
        external
        override
        nonReentrant
        returns (bytes32 operationId, uint256 sharesReceived)
    {
        // Module must be active
        require(!paused(), Errors.VaultModuleInactive());

        // Pull tokens from the Router (caller must have approved this module)
        // Use balance delta to handle fee-on-transfer tokens correctly
        uint256 balanceBefore = IERC20(asset).balanceOf(address(this));
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        uint256 actualAmount = IERC20(asset).balanceOf(address(this)) - balanceBefore;
        require(actualAmount > 0, Errors.NoFundsReceived());

        // Approve the ERC4626 vault to spend actual received tokens
        IERC20(asset).forceApprove(vault, actualAmount);

        // Check vault deposit limits before attempting
        _checkMaxDeposit(vault, actualAmount, receiver);

        // Slippage protection: user must provide minSharesOut via params.
        // previewDeposit runs in the same tx as deposit, so preview-based slippage
        // is ineffective against sandwich attacks.
        uint256 minSharesOut = params.length >= 32 ? abi.decode(params, (uint256)) : 0;

        // Execute the deposit - shares sent directly to receiver (Account)
        try IERC4626(vault).deposit(actualAmount, receiver) returns (uint256 _shares) {
            // Sanity check: must receive positive shares
            require(_shares > 0, Errors.NoFundsReceived());
            // Slippage check: user-provided minimum
            require(_shares >= minSharesOut, Errors.InsufficientSharesReceived(_shares, minSharesOut));
            sharesReceived = _shares;
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Sync operation: no operationId
        operationId = bytes32(0);
    }

    /// @inheritdoc IVault
    /// @dev Synchronous ERC-4626 redemption. Pulls share tokens from caller (Router),
    ///      redeems from the vault, and sends assets to the receiver (Account).
    ///      Returns (bytes32(0), assetsReceived) indicating sync completion.
    function withdraw(
        address vault,
        address share,
        uint256 amount,
        address receiver,
        address owner,
        bytes calldata params
    ) external virtual override nonReentrant returns (bytes32 operationId, uint256 assetsReceived) {
        // Module must be active
        require(!paused(), Errors.VaultModuleInactive());

        // Pull share tokens from the Router (caller must have approved this module)
        // Use balance delta to handle fee-on-transfer tokens correctly
        uint256 shareBalanceBefore = IERC20(share).balanceOf(address(this));
        IERC20(share).safeTransferFrom(msg.sender, address(this), amount);
        uint256 actualShares = IERC20(share).balanceOf(address(this)) - shareBalanceBefore;
        require(actualShares > 0, Errors.NoFundsReceived());

        // Approve the ERC4626 vault to burn our share tokens
        IERC20(share).forceApprove(vault, actualShares);

        // Cap redeem amount to vault's reported maxRedeem(owner).
        // Two non-spec-compliant patterns are observed in production ERC4626 vaults:
        // (a) maxRedeem returns slightly less than balanceOf due to internal share/asset
        //     rounding — strictly require()ing shares <= maxRedeem rejects valid redeems;
        // (b) maxRedeem returns 0 as a sentinel even when redemptions are possible.
        // Capping (rather than reverting) accommodates (a); a 0 return is treated as
        // "no usable info" and the underlying redeem call is left to enforce limits.
        uint256 redeemShares = _capToMaxRedeem(vault, actualShares, address(this));
        require(redeemShares > 0, Errors.NoFundsReceived());

        // Slippage protection: user must provide minAssetsOut via params.
        uint256 minAssetsOut = params.length >= 32 ? abi.decode(params, (uint256)) : 0;

        // Execute the redemption - assets sent directly to receiver (Account)
        // owner = address(this) because we hold the shares after transfer from Router
        try IERC4626(vault).redeem(redeemShares, receiver, address(this)) returns (uint256 _assets) {
            // Sanity check: must receive positive assets
            require(_assets > 0, Errors.NoFundsReceived());
            // Slippage check: user-provided minimum
            require(_assets >= minAssetsOut, Errors.InsufficientAssetsReceived(_assets, minAssetsOut));
            assetsReceived = _assets;
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Return un-redeemed share dust (when capped) to the receiver so position
        // accounting stays consistent and shares are not trapped on the module.
        if (redeemShares < actualShares) {
            IERC20(share).safeTransfer(receiver, actualShares - redeemShares);
        }

        // Sync operation: no operationId
        operationId = bytes32(0);
    }

    /// @inheritdoc Vault
    /// @dev Returns the ERC-4626 preview estimate for deposit
    function previewDeposit(address vault, uint256 assets) external override returns (uint256 shares) {
        return _safePreviewDeposit(vault, assets);
    }

    /// @inheritdoc Vault
    /// @dev Returns the ERC-4626 preview estimate for redemption
    function previewRedeem(address vault, uint256 shares) external override returns (uint256 assets) {
        return _safePreviewRedeem(vault, shares);
    }

    // ========================== Internal Helpers ==========================

    /// @notice Safely preview deposit with defensive error handling
    /// @param vault ERC4626 vault address
    /// @param assets Amount of assets to preview
    /// @return shares Expected shares
    function _safePreviewDeposit(address vault, uint256 assets) internal returns (uint256 shares) {
        try IERC4626(vault).previewDeposit(assets) returns (uint256 _shares) {
            require(_shares > 0, Errors.ZeroAmount());
            return _shares;
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }
    }

    /// @notice Safely preview redeem with defensive error handling
    /// @param vault ERC4626 vault address
    /// @param shares Amount of shares to preview
    /// @return assets Expected assets
    function _safePreviewRedeem(address vault, uint256 shares) internal returns (uint256 assets) {
        try IERC4626(vault).previewRedeem(shares) returns (uint256 _assets) {
            require(_assets > 0, Errors.ZeroAmount());
            return _assets;
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }
    }

    /// @notice Check if deposit amount exceeds vault's maximum deposit limit
    /// @param vault ERC4626 vault address
    /// @param assets Intended deposit amount
    /// @param receiver Receiver of shares
    function _checkMaxDeposit(address vault, uint256 assets, address receiver) internal {
        try IERC4626(vault).maxDeposit(receiver) returns (uint256 maxAssets) {
            require(assets <= maxAssets, Errors.DepositFailed());
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }
    }

    /// @notice Cap shares to the vault's reported maxRedeem(owner) value.
    /// @dev Cap when the vault returns a positive value strictly less than `shares`,
    ///      which can happen with vaults that report maxRedeem with conservative
    ///      share/asset rounding. A reported 0 is treated as "no usable info" — some
    ///      vault implementations return 0 from max-functions by design — and we
    ///      proceed with the original `shares`, letting the underlying redeem call
    ///      enforce limits naturally.
    /// @param vault ERC4626 vault address
    /// @param shares Intended redeem amount (module's actualShares post-transfer)
    /// @param owner Address against which maxRedeem is queried (the module itself)
    /// @return The amount of shares that may safely be passed to vault.redeem
    function _capToMaxRedeem(address vault, uint256 shares, address owner) internal returns (uint256) {
        try IERC4626(vault).maxRedeem(owner) returns (uint256 maxShares) {
            if (maxShares > 0 && maxShares < shares) {
                return maxShares;
            }
        } catch (bytes memory lowLevelData) {
            // Non-spec-compliant maxRedeem revert. Surface for diagnostics, then
            // fall through and let the underlying redeem call enforce.
            emit Events.ErrorLogBytes(lowLevelData);
        }
        return shares;
    }

}
