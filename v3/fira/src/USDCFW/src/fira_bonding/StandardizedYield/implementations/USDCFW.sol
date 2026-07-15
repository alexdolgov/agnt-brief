// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IRehypothecationModule} from "../../../interfaces/IRehypothecationModule.sol";

import "../../libraries/ArrayLib.sol";
import "../../libraries/Errors.sol";
import "../../libraries/math/PMath.sol";
import "../FWBase.sol";
import {BIPS} from "@lending-market/libraries/ConstantsLib.sol";
import "@lending-market/libraries/ErrorsLib.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @title USDCFW
/// @notice FW token for USDC with partial allocation to a Sisu ERC-4626 vault
/// @dev This contract wraps USDC with optional rehypothecation to a yield-generating vault:
///      - Accepts deposits in USDC (asset) and SisuVault shares (ERC-4626)
///      - Vault-share deposits are valued using vault.convertToAssets(amountShares)
///      - Holds a mix of idle USDC and SisuVault shares
///      - Rehypothecation module controls the idle/vault allocation ratio
///
///      Redemption behavior:
///      - Redeem USDC: Uses idle USDC first, then withdraws from vault if needed
///      - Redeem vault shares: Uses shares on hand, or mints from idle USDC if needed
///
///      Exchange rate = (idle USDC + vault.convertToAssets(vaultShares)) / totalSupply()
contract USDCFW is FWBase {
    using PMath for uint256;

    // ----------------------------------------------------------------
    // Immutables
    // ----------------------------------------------------------------

    /// @notice The ERC-4626 vault used for yield generation (SisuVault)
    IERC4626 public immutable vault;

    /// @notice Module controlling rehypothecation ratio parameters (phiMin, phiMax, phiTarget)
    IRehypothecationModule public rehypothecationModule;

    /// @notice Amount of USDC held idle in this contract (not deposited to vault)
    uint256 public idleAssets;

    /// @notice Amount of vault shares held by this contract
    uint256 public vaultShares;

    event RehypothecationModuleSet(address indexed newModule);
    event RehypothecationEvent(uint256 depositedToVault, uint256 withdrawnFromVault, uint256 previousRatio);
    event AssetTrackingUpdated(uint256 idleAssets, uint256 vaultShares);

    /// @notice Creates a new USDCFW token
    /// @param _name Token name
    /// @param _symbol Token symbol
    /// @param _vault Address of the SisuVault (ERC-4626) for USDC
    constructor(string memory _name, string memory _symbol, address _vault)
        FWBase(_name, _symbol, IERC4626(_vault).asset())
    {
        vault = IERC4626(_vault);
        // Pre-approve the vault to pull USDC from this contract (for minting vault shares when needed)
        _safeApproveInf(vault.asset(), _vault);
    }

    // ================================================================
    // Admin Functions
    // ================================================================

    /// @notice Sets the rehypothecation module address
    /// @param newModule Address of the new rehypothecation module
    function setRehypothecationModule(address newModule) external onlyOwner {
        if (newModule == address(0)) revert Errors.ZeroAddress();
        rehypothecationModule = IRehypothecationModule(newModule);
        emit RehypothecationModuleSet(newModule);
    }

    // ================================================================
    // Core FW Functions (overriding FWBase hooks)
    // ================================================================

    /// @dev Deposit hook – accepts USDC or vault share deposits
    ///      Vault shares are valued via convertToAssets. All USDC remains idle initially.
    /// @param tokenIn The address of the token being deposited (USDC or vault shares)
    /// @param amountDeposited The amount of tokenIn deposited
    /// @return amountSharesOut The amount of FW tokens to mint for the deposit
    function _deposit(address tokenIn, uint256 amountDeposited)
        internal
        virtual
        override
        returns (uint256 amountSharesOut)
    {
        if (tokenIn == address(vault)) {
            vaultShares += amountDeposited;
            amountDeposited = vault.convertToAssets(amountDeposited);
        } else {
            idleAssets += amountDeposited;
        }

        // Determine total underlying value before this deposit (idle USDC + vault assets)
        uint256 totalAfter = _totalUnderlying(); // total underlying *after* deposit (includes assetsIn)
        uint256 totalBefore = totalAfter > amountDeposited ? totalAfter - amountDeposited : 0;

        uint256 supply = totalSupply();
        if (supply == 0) {
            amountSharesOut = amountDeposited;
        } else if (totalBefore == 0) {
            revert Errors.FWFullWipeout();
        } else {
            // Pro-rata allocation: sharesOut = floor( assetsIn * currentSupply / totalBefore )
            amountSharesOut = (amountDeposited * supply) / totalBefore;
        }

        if (amountSharesOut == 0) {
            revert Errors.FWInsufficientSharesOut(0, 1);
        }

        emit AssetTrackingUpdated(idleAssets, vaultShares);
        // FWBase will handle _minting these FW tokens to the user after this returns
        _rehypothecate(false);
        return amountSharesOut;
    }

    /// @dev Redeem hook – burns FW and outputs either USDC or vault shares
    ///      USDC redemption: uses idle first, then withdraws from vault if needed
    ///      Vault share redemption: uses shares on hand, or mints from idle USDC if needed
    /// @param receiver The address receiving the output token
    /// @param tokenOut The token to redeem to (USDC or vault shares)
    /// @param amountSharesToRedeem The amount of FW tokens to redeem (burn)
    /// @return amountTokenOut The amount of tokenOut released to the receiver
    function _redeem(address receiver, address tokenOut, uint256 amountSharesToRedeem)
        internal
        virtual
        override
        returns (uint256 amountTokenOut)
    {
        // NOTE: `FWBase.redeem()` burns `amountSharesToRedeem` before calling this hook,
        uint256 supply = totalSupply() + amountSharesToRedeem;
        if (supply == 0) return 0;

        // Calculate proportional underlying assets to redeem
        uint256 totalUnderlying = _totalUnderlying();
        uint256 underlyingOut = (amountSharesToRedeem * totalUnderlying) / supply;

        if (tokenOut == address(vault)) {
            amountTokenOut = _redeemVaultShares(underlyingOut);
            _transferOut(tokenOut, receiver, amountTokenOut);
        } else {
            amountTokenOut = _redeemAssets(receiver, underlyingOut);
        }
        emit AssetTrackingUpdated(idleAssets, vaultShares);
        _rehypothecate(false);
        return amountTokenOut;
    }

    /// @dev Handles vault share redemption logic
    /// @param underlyingOut Amount of underlying assets to redeem as vault shares
    /// @return sharesOut Amount of vault shares transferred out
    function _redeemVaultShares(uint256 underlyingOut) private returns (uint256 sharesOut) {
        sharesOut = vault.previewWithdraw(underlyingOut);

        if (sharesOut <= vaultShares) {
            // Use existing vault shares
            vaultShares -= sharesOut;
        } else {
            // Need to mint additional shares from idle assets
            uint256 sharesToMint = sharesOut - vaultShares;
            uint256 assetsNeeded = vault.previewMint(sharesToMint);

            // Cap by available idle assets
            if (assetsNeeded > idleAssets) {
                assetsNeeded = idleAssets;
                sharesToMint = vault.convertToShares(assetsNeeded);
                sharesOut = vaultShares + sharesToMint;
            }

            // Mint new shares if needed
            if (assetsNeeded > 0) {
                uint256 actualSharesMinted = vault.deposit(assetsNeeded, address(this));
                idleAssets -= assetsNeeded;
                vaultShares += actualSharesMinted;
                // Recalculate sharesOut based on actual shares minted
                if (sharesOut > vaultShares) {
                    sharesOut = vaultShares;
                }
            }

            vaultShares -= sharesOut;
        }
    }

    /// @dev Handles USDC asset redemption logic
    /// @param receiver Address to receive the USDC
    /// @param underlyingOut Amount of USDC to redeem
    /// @return assetsOut Amount of USDC actually transferred out
    function _redeemAssets(address receiver, uint256 underlyingOut) private returns (uint256 assetsOut) {
        if (underlyingOut <= idleAssets) {
            // Use idle assets only
            assetsOut = underlyingOut;
            idleAssets -= assetsOut;
            _transferOut(yieldToken, receiver, assetsOut);
        } else {
            // Need to withdraw from vault
            uint256 maxWithdrawable = vault.maxWithdraw(address(this));
            uint256 availableAssets = idleAssets + maxWithdrawable;
            // This can cause loss if minAmount out is not specified, as we dont want to block withdrawals under any
            // circumstances
            assetsOut = underlyingOut <= availableAssets ? underlyingOut : availableAssets;

            uint256 fromIdle = assetsOut <= idleAssets ? assetsOut : idleAssets;
            uint256 fromVault = assetsOut - fromIdle;

            // Update state
            idleAssets -= fromIdle;
            if (fromVault > 0) {
                uint256 sharesToBurn = vault.previewWithdraw(fromVault);
                if (sharesToBurn > vaultShares) {
                    sharesToBurn = vaultShares;
                    fromVault = vault.convertToAssets(sharesToBurn);
                    assetsOut = fromIdle + fromVault;
                }

                uint256 sharesBefore = vault.balanceOf(address(this));
                vault.withdraw(fromVault, receiver, address(this));
                uint256 sharesAfter = vault.balanceOf(address(this));

                uint256 actualSharesBurned = sharesBefore - sharesAfter;
                vaultShares = actualSharesBurned <= vaultShares ? vaultShares - actualSharesBurned : 0;
            }

            // Transfer idle assets if any
            if (fromIdle > 0) {
                _transferOut(yieldToken, receiver, fromIdle);
            }
        }
    }

    // ================================================================
    // View Functions (exchangeRate, previews, token lists)
    // ================================================================

    /// @notice Returns the current exchange rate, scaled by 1e18
    /// @dev Returns floor(totalUnderlyingUSDC / totalSupply) in 18-decimal fixed-point
    ///      totalUnderlying = idle USDC + vault.convertToAssets(vaultShares)
    /// @return Exchange rate where exchangeRate * fwAmount / 1e18 = underlying USDC amount
    function exchangeRate() public view override returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            return 0; // Undefined before first mint
        }
        return _totalUnderlying().divDown(supply);
    }

    /// @notice Returns valid deposit tokens (USDC and vault shares)
    /// @return res Array of valid input token addresses
    function getTokensIn() public view override returns (address[] memory res) {
        // USDC and vault shares can be deposited
        return ArrayLib.create(yieldToken, address(vault));
    }

    /// @notice Returns valid redemption tokens (USDC and vault shares)
    /// @return res Array of valid output token addresses
    function getTokensOut() public view override returns (address[] memory res) {
        // Redemptions can be in USDC or vault shares
        return ArrayLib.create(yieldToken, address(vault));
    }

    /// @notice Checks if a token is valid for deposits
    /// @param token Token address to check
    /// @return True if token is USDC or vault shares
    function isValidTokenIn(address token) public view override returns (bool) {
        return token == yieldToken || token == address(vault); // USDC and vault shares are valid deposit tokens
    }

    /// @notice Checks if a token is valid for redemptions
    /// @param token Token address to check
    /// @return True if token is USDC or vault shares
    function isValidTokenOut(address token) public view override returns (bool) {
        return token == address(vault) || token == yieldToken;
    }

    /// @notice Returns information about the underlying asset (USDC)
    /// @return assetType Enum for asset type (TOKEN for normal tokens)
    /// @return assetAddress The USDC token address
    /// @return assetDecimals_ Decimals of the USDC token (6)
    function assetInfo() external view returns (AssetType assetType, address assetAddress, uint8 assetDecimals_) {
        return (AssetType.TOKEN, yieldToken, IERC20Metadata(yieldToken).decimals());
    }

    // ================================================================
    // Internal Previews and Token Validations
    // ================================================================

    /// @dev Previews the amount of FW shares for a deposit
    /// @param tokenIn Token address being deposited
    /// @param amountToDeposit Amount of tokens to deposit
    /// @return Amount of FW shares that would be minted
    function _previewDeposit(address tokenIn, uint256 amountToDeposit) internal view override returns (uint256) {
        if (tokenIn == address(vault)) {
            amountToDeposit = vault.convertToAssets(amountToDeposit);
        }

        uint256 supply = totalSupply();
        uint256 total = _totalUnderlying();
        if (supply == 0) {
            return amountToDeposit;
        } else if (total == 0) {
            revert Errors.FWFullWipeout();
        }
        // Proportional to existing pool state
        return (amountToDeposit * supply) / total;
    }

    /// @dev Previews the amount of tokens for a redemption
    /// @param tokenOut Token address to receive
    /// @param sharesToRedeem Amount of FW shares to redeem
    /// @return Amount of tokens that would be received
    function _previewRedeem(address tokenOut, uint256 sharesToRedeem) internal view override returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            return 0;
        }

        uint256 totalUnderlying = _totalUnderlying();
        uint256 underlyingOut = (sharesToRedeem * totalUnderlying) / supply;

        if (tokenOut == address(vault)) {
            uint256 sharesOut = vault.convertToShares(underlyingOut);
            if (sharesOut > vaultShares) {
                uint256 sharesToMint = sharesOut - vaultShares;
                uint256 assetsNeeded = vault.convertToAssets(sharesToMint);
                if (assetsNeeded > idleAssets) {
                    assetsNeeded = idleAssets;
                    sharesToMint = vault.convertToShares(assetsNeeded);
                    sharesOut = vaultShares + sharesToMint;
                }
            }
            return sharesOut;
        }

        uint256 maxWithdrawable = vault.maxWithdraw(address(this));
        uint256 availableAssets = idleAssets + maxWithdrawable;
        return underlyingOut <= availableAssets ? underlyingOut : availableAssets;
    }

    // ================================================================
    // Internal Helpers
    // ================================================================

    /// @dev Compute total underlying USDC value held by this contract.
    ///      This equals idle USDC balance plus the USDC equivalent of any vault shares held.
    ///      Uses tracked values to avoid balanceOf calls.
    function _totalUnderlying() internal view returns (uint256) {
        if (vaultShares == 0) {
            return idleAssets;
        }
        return idleAssets + vault.convertToAssets(vaultShares);
    }

    // ================================================================
    // Rehypothecation Functions
    // ================================================================

    /// @notice Force a rebalance to exactly ϕTarget.
    /// @dev Owner-only because it will attempt a rebalance even if the current ratio is within bounds.
    function forceRehypothecation() external onlyOwner nonReentrant {
        _rehypothecate(true);
    }

    /// @notice Rebalance only if the current idle ratio is outside [ϕMin, ϕMax].
    /// @dev Callable by anyone to help maintain the configured ratio.
    function triggerRehypothecation() external nonReentrant whenNotDepositsPaused whenNotRedemptionsPaused {
        _rehypothecate(false);
    }

    /// @dev Rehypothecation policy:
    /// - If `force == false`: rebalance to ϕTarget only if current idle ratio is outside [ϕMin, ϕMax]
    /// - If `force == true`: always attempt to rebalance towards ϕTarget
    function _rehypothecate(bool force) private {
        IRehypothecationModule module = rehypothecationModule;
        if (address(module) == address(0)) return; // No rehypothecation module set

        uint256 total = _totalUnderlying(); // idle + vault assets
        if (total == 0) return; // Avoid division by zero

        uint256 raw = idleAssets;
        uint256 ratioBefore = (raw * BIPS) / total; // idle ratio in BIPS

        uint256 phiTarget = module.phiTarget();
        uint256 targetRaw = (phiTarget * total) / BIPS; // idle assets corresponding to ϕTarget

        if (force) {
            if (raw > targetRaw) {
                _rehypothecateExcess(raw - targetRaw, ratioBefore);
            } else if (raw < targetRaw) {
                _rehypothecateShortfall(targetRaw - raw, ratioBefore);
            }
            return;
        }

        uint256 phiMax = module.phiMax();
        if (ratioBefore > phiMax) {
            // Idle ratio too high => deposit excess idle into the vault
            _rehypothecateExcess(raw > targetRaw ? raw - targetRaw : 0, ratioBefore);
        } else {
            uint256 phiMin = module.phiMin();
            if (ratioBefore < phiMin) {
                // Idle ratio too low => withdraw from the vault to raise idle towards target
                _rehypothecateShortfall(targetRaw > raw ? targetRaw - raw : 0, ratioBefore);
            }
        }
    }

    /// @dev Deposit `excess` idle assets into the vault.
    function _rehypothecateExcess(uint256 excess, uint256 ratioBefore) private {
        if (excess == 0) return;
        uint256 maxDeposit = vault.maxDeposit(address(this));
        uint256 assetsToDeposit = excess > maxDeposit ? maxDeposit : excess;
        if (assetsToDeposit == 0) {
            emit RehypothecationEvent(0, 0, ratioBefore);
            return;
        }

        uint256 sharesReceived = vault.deposit(assetsToDeposit, address(this));
        idleAssets -= assetsToDeposit;
        vaultShares += sharesReceived;
        emit RehypothecationEvent(assetsToDeposit, 0, ratioBefore);
        emit AssetTrackingUpdated(idleAssets, vaultShares);
    }

    /// @dev Withdraw up to desiredAssets from the vault into idle assets.
    function _rehypothecateShortfall(uint256 desiredAssets, uint256 ratioBefore) private {
        if (desiredAssets == 0) return;

        uint256 maxWithdrawable = vault.maxWithdraw(address(this));
        if (maxWithdrawable == 0) return;

        // Also cap by what our tracked shares can redeem
        uint256 maxByShares = vault.convertToAssets(vaultShares);

        uint256 withdrawAmount = desiredAssets;
        if (withdrawAmount > maxWithdrawable) withdrawAmount = maxWithdrawable;
        if (withdrawAmount > maxByShares) withdrawAmount = maxByShares;
        if (withdrawAmount == 0) return;

        IERC20Metadata asset = IERC20Metadata(vault.asset());
        uint256 assetBalanceBefore = asset.balanceOf(address(this));
        uint256 sharesBurned = vault.withdraw(withdrawAmount, address(this), address(this));
        uint256 assetBalanceAfter = asset.balanceOf(address(this));
        uint256 receivedAssets = assetBalanceAfter - assetBalanceBefore;

        vaultShares = sharesBurned <= vaultShares ? vaultShares - sharesBurned : 0;
        idleAssets += receivedAssets;

        emit RehypothecationEvent(0, receivedAssets, ratioBefore);
        emit AssetTrackingUpdated(idleAssets, vaultShares);
    }
}
