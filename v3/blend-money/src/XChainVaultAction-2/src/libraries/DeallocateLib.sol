// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MathLib, WAD} from "morpho-blue/src/libraries/MathLib.sol";
import {IVaultV2} from "morpho-vault-v2/src/interfaces/IVaultV2.sol";
import {IAdapter} from "morpho-vault-v2/src/interfaces/IAdapter.sol";
import {MorphoVaultLib} from "./MorphoVaultLib.sol";
import {PriceLib} from "./PriceLib.sol";
import {StrategyManager} from "./StrategyManager.sol";
import {VaultConfig} from "../types/StrategyTypes.sol";
import {RebalanceData} from "../types/RebalanceTypes.sol";
import {IVaultController} from "../interfaces/controllers/IVaultController.sol";
import {IModuleManager} from "safe-contracts/interfaces/IModuleManager.sol";
import {IOwnerManager} from "safe-contracts/interfaces/IOwnerManager.sol";

/**
 * @notice Parameters for the shared user withdraw flow.
 */
struct WithdrawParams {
    IERC4626 vault;
    StrategyManager strategyManager;
    address expectedRecipient;
    uint256 withdrawFeeWad;
    address withdrawFeeRecipient;
    uint256 withdrawAmount;
    uint256 withdrawAssetPerShare;
    uint256 depositAssetPerShare;
    RebalanceData[] rebalanceData;
    uint256[] forceDeallocateAdapterIndices;
    bytes bridgePayload;
    uint256 bridgeOffsets;
    uint256 bridgeFee;
    address bridgeTarget;
    address[] allowedBridgeTargets;
}

/**
 * @title DeallocateLib
 * @notice Shared force-deallocation and user withdraw helpers.
 * @dev Used by UserWithdrawController, UserWithdrawVaultAction, and XChainVaultAction.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
library DeallocateLib {
    using SafeERC20 for IERC20;
    using MathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant MAX_WITHDRAW_FEE_WAD = 0.05e18;
    uint256 internal constant MAX_BRIDGE_FEE_WAD = 0.25e18;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when force deallocation cannot cover the full shortfall.
     */
    error ForceDeallocateFailed();
    /**
     * @notice Thrown when an adapter has a non-zero force-deallocate penalty.
     */
    error NonZeroPenalty();
    /**
     * @notice Thrown when the strategy manager is not an enabled module on the Safe.
     */
    error ReceiverNotEnabled();
    /**
     * @notice Thrown when a required address is invalid (e.g. bridge target has no code).
     */
    error InvalidAddress();
    /**
     * @notice Thrown when the vault has no registered configuration.
     */
    error InvalidVault();
    /**
     * @notice Thrown when the liquidity-reset rebalance delegatecall fails.
     */
    error LiqResetFailed();
    /**
     * @notice Thrown when the bridge call reverts.
     */
    error BridgeFailed();
    /**
     * @notice Thrown when the bridge did not consume the expected token amount.
     */
    error BridgeAmountNotConsumed();
    /**
     * @notice Thrown when a bridge payload patch offset exceeds the data length.
     */
    error OffsetOutOfBounds();
    /**
     * @notice Thrown when the Safe has more than one owner.
     */
    error MultipleOwnersDetected();
    /**
     * @notice Thrown when the Safe owner does not match the expected recipient.
     */
    error RecipientMismatch();
    /**
     * @notice Thrown when the post-withdraw balance is less than the requested amount.
     */
    error InsufficientBalance();
    /**
     * @notice Thrown when the withdraw amount is zero.
     */
    error ZeroWithdrawAmount();
    /**
     * @notice Thrown when bridgePayload is non-empty but recipientOffset is zero.
     */
    error RecipientOffsetRequired();
    /**
     * @notice Thrown when bridge payload patch offsets are less than 32 bytes apart.
     */
    error OverlappingOffsets();
    /**
     * @notice Thrown when the withdraw fee exceeds MAX_WITHDRAW_FEE_WAD (5%).
     */
    error InvalidWithdrawFee();
    /**
     * @notice Thrown when the bridge fee exceeds MAX_BRIDGE_FEE_WAD (25%).
     */
    error InvalidBridgeFee();
    /**
     * @notice Thrown when the bridge target is not in the allowed list.
     */
    error BridgeTargetNotAllowed();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted after a user withdraw is executed.
     * @param safe The Safe executing the withdrawal.
     * @param vault The ERC-4626 vault withdrawn from.
     * @param intendedRecipient The owner address that receives the funds.
     * @param asset The underlying loan token address.
     * @param amount The net amount transferred after fees.
     * @param fee The fee amount deducted.
     * @param bridged Whether the transfer was routed through a bridge.
     */
    event WithdrawExecuted(
        address indexed safe,
        address indexed vault,
        address intendedRecipient,
        address asset,
        uint256 amount,
        uint256 fee,
        bool bridged
    );

    /*//////////////////////////////////////////////////////////////
                            WITHDRAW FLOW
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Executes the full user withdraw flow: validate, deallocate, withdraw, fee, transfer/bridge, sweep.
     * @dev Must be called via delegatecall from a 1-of-1 Gnosis Safe.
     *
     *      Trust assumption -- config.control delegatecall: the liquidity-reset step delegates
     *      execution to config.control, which runs arbitrary code in the Safe's context. This
     *      address is set by the protocol admin through the timelocked RolesBroadcaster/RolesReceiver
     *      path (StrategyManager._updateVaultConfig). A compromised control contract could drain
     *      the Safe. This is an accepted trust assumption: the admin key path governs all vault
     *      strategy configurations, and the timelock provides a review window for changes.
     * @param params Withdraw parameters including vault, recipient, fees, and bridge config
     */
    function executeWithdraw(WithdrawParams memory params) internal {
        require(params.withdrawAmount > 0, ZeroWithdrawAmount());
        require(params.withdrawFeeWad <= MAX_WITHDRAW_FEE_WAD, InvalidWithdrawFee());
        require(params.bridgeFee <= MAX_BRIDGE_FEE_WAD, InvalidBridgeFee());

        require(IModuleManager(address(this)).isModuleEnabled(address(params.strategyManager)), ReceiverNotEnabled());

        VaultConfig memory config = params.strategyManager.getVaultConfig(address(params.vault));
        require(address(config.control) != address(0), InvalidVault());

        address[] memory owners = IOwnerManager(address(this)).getOwners();
        require(owners.length == 1, MultipleOwnersDetected());
        require(owners[0] == params.expectedRecipient, RecipientMismatch());
        address recipient = params.expectedRecipient;

        bool bridged = params.bridgePayload.length > 0;
        if (bridged) {
            require(params.bridgeTarget.code.length > 0, InvalidAddress());
            require(_isAllowedBridgeTarget(params.allowedBridgeTargets, params.bridgeTarget), BridgeTargetNotAllowed());
        }

        IVaultV2(address(params.vault)).accrueInterest();

        IERC20 loanToken = IERC20(params.vault.asset());

        // Liquidity reset
        if (params.rebalanceData.length > 0) {
            require(address(config.control).code.length > 0, InvalidAddress());
            (bool ok,) = address(config.control).delegatecall(
                abi.encodeWithSelector(
                    IVaultController.executeRebalance.selector, address(params.vault), params.rebalanceData
                )
            );
            require(ok, LiqResetFailed());
        }

        // Snapshot idle balance + resolve max
        uint256 balanceBefore = loanToken.balanceOf(address(this));
        bool isMaxWithdraw = params.withdrawAmount == type(uint256).max;
        uint256 withdrawAmount = params.withdrawAmount;
        if (isMaxWithdraw) {
            uint256 shares = params.vault.balanceOf(address(this));
            withdrawAmount = params.vault.previewRedeem(shares) + balanceBefore;
            require(withdrawAmount > 0, ZeroWithdrawAmount());
        }

        // Force deallocate + vault withdraw
        {
            uint256 amountFromVault = balanceBefore >= withdrawAmount ? 0 : withdrawAmount - balanceBefore;
            if (amountFromVault > 0) {
                if (params.forceDeallocateAdapterIndices.length > 0) {
                    forceDeallocate(params.vault, loanToken, amountFromVault, params.forceDeallocateAdapterIndices);
                }
                MorphoVaultLib._withdrawAssets(
                    params.vault, isMaxWithdraw ? type(uint256).max : amountFromVault, params.withdrawAssetPerShare
                );
            }
        }

        // Determine actual withdrawn amount
        uint256 withdrawnAmount;
        if (isMaxWithdraw) {
            withdrawnAmount = loanToken.balanceOf(address(this));
        } else {
            require(loanToken.balanceOf(address(this)) >= withdrawAmount, InsufficientBalance());
            withdrawnAmount = withdrawAmount;
        }

        // Withdraw fee
        uint256 feeAmount;
        if (params.withdrawFeeWad > 0 && withdrawnAmount > 0) {
            uint256 netAmount = withdrawnAmount.wMulDown(WAD - params.withdrawFeeWad);
            feeAmount = withdrawnAmount - netAmount;
            loanToken.safeTransfer(params.withdrawFeeRecipient, feeAmount);
            withdrawnAmount = netAmount;
        }

        // Transfer to owner or bridge
        if (bridged) {
            {
                (uint16 recipientOffset, uint16 inputAmountOffset, uint16 outputAmountOffset, uint8 destDecimals) =
                    _unpackBridgeOffsets(params.bridgeOffsets);

                require(recipientOffset != 0, RecipientOffsetRequired());
                _validateOffsets(recipientOffset, inputAmountOffset, outputAmountOffset);

                _patchValue(params.bridgePayload, uint256(recipientOffset), uint256(uint160(recipient)));
                if (inputAmountOffset != 0) {
                    _patchValue(params.bridgePayload, uint256(inputAmountOffset), withdrawnAmount);
                }
                if (outputAmountOffset != 0) {
                    uint256 outputAmount = withdrawnAmount.wMulDown(WAD - params.bridgeFee);
                    if (destDecimals != 0) {
                        outputAmount =
                            PriceLib.scale(outputAmount, IERC20Metadata(address(loanToken)).decimals(), destDecimals);
                    }
                    _patchValue(params.bridgePayload, uint256(outputAmountOffset), outputAmount);
                }
            }

            uint256 preBridgeAmount = loanToken.balanceOf(address(this));
            loanToken.forceApprove(params.bridgeTarget, withdrawnAmount);
            (bool ok,) = params.bridgeTarget.call(params.bridgePayload);
            loanToken.forceApprove(params.bridgeTarget, 0);
            require(ok, BridgeFailed());

            uint256 postBridgeAmount = loanToken.balanceOf(address(this));
            require(
                postBridgeAmount <= preBridgeAmount && preBridgeAmount - postBridgeAmount == withdrawnAmount,
                BridgeAmountNotConsumed()
            );
        } else {
            loanToken.safeTransfer(recipient, withdrawnAmount);
        }

        // Sweep remaining back into vault
        MorphoVaultLib._depositAssets(params.vault, type(uint256).max, params.depositAssetPerShare);

        emit WithdrawExecuted(
            address(this), address(params.vault), recipient, address(loanToken), withdrawnAmount, feeAmount, bridged
        );
    }

    /*//////////////////////////////////////////////////////////////
                        FORCE DEALLOCATION
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Pulls assets from non-market adapters to cover a vault liquidity shortfall.
     *      VaultV2.forceDeallocate routes through withdraw which checks canSendShares(onBehalf).
     *      The calling Safe must be whitelisted in the vault's share gate or this will revert.
     * @param vault The ERC-4626 vault to deallocate from
     * @param loanToken The underlying asset used to read idle balance
     * @param withdrawAmount Target withdraw amount, not type(uint256).max
     * @param adapterIndices Adapter indices to force-deallocate from
     */
    function forceDeallocate(IERC4626 vault, IERC20 loanToken, uint256 withdrawAmount, uint256[] memory adapterIndices)
        internal
    {
        IVaultV2 v2 = IVaultV2(address(vault));

        uint256 idle = loanToken.balanceOf(address(vault));
        address liqAdapter = v2.liquidityAdapter();
        uint256 liqAssets = liqAdapter != address(0) ? IAdapter(liqAdapter).realAssets() : 0;
        uint256 available = idle + liqAssets;

        if (withdrawAmount > available) {
            uint256 shortfall = withdrawAmount - available;

            for (uint256 i = 0; i < adapterIndices.length;) {
                address adapter = v2.adapters(adapterIndices[i]);
                if (adapter != liqAdapter) {
                    require(v2.forceDeallocatePenalty(adapter) == 0, NonZeroPenalty());
                    uint256 adapterAssets = IAdapter(adapter).realAssets();
                    if (adapterAssets > 0) {
                        uint256 deallocateAmount = shortfall < adapterAssets ? shortfall : adapterAssets;
                        uint256 idleBefore = loanToken.balanceOf(address(vault));
                        v2.forceDeallocate(adapter, "", deallocateAmount, address(this));
                        uint256 actualFreed = loanToken.balanceOf(address(vault)) - idleBefore;
                        if (actualFreed >= shortfall) {
                            return;
                        }
                        shortfall -= actualFreed;
                    }
                }
                unchecked {
                    ++i;
                }
            }

            require(shortfall == 0, ForceDeallocateFailed());
        }
    }

    /*//////////////////////////////////////////////////////////////
                            BRIDGE HELPERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Unpacks bridge offset configuration from a single uint256.
     */
    function _unpackBridgeOffsets(uint256 packed)
        internal
        pure
        returns (uint16 recipientOffset, uint16 inputAmountOffset, uint16 outputAmountOffset, uint8 destDecimals)
    {
        assembly ("memory-safe") {
            recipientOffset := and(packed, 0xFFFF)
            inputAmountOffset := and(shr(16, packed), 0xFFFF)
            outputAmountOffset := and(shr(32, packed), 0xFFFF)
            destDecimals := and(shr(48, packed), 0xFF)
        }
    }

    /**
     * @dev Patches a uint256 value into a bytes payload at the given offset.
     * @param data Mutable bytes payload.
     * @param offset Byte offset where value will be written.
     * @param value uint256 value to write.
     */
    function _patchValue(bytes memory data, uint256 offset, uint256 value) internal pure {
        require(data.length >= 32 && offset <= data.length - 32, OffsetOutOfBounds());
        assembly ("memory-safe") {
            mstore(add(add(data, 32), offset), value)
        }
    }

    /**
     * @dev Validates that bridge payload patch offsets do not overlap (min 32-byte spacing).
     */
    function _validateOffsets(uint16 recipientOffset, uint16 inputAmountOffset, uint16 outputAmountOffset)
        internal
        pure
    {
        if (inputAmountOffset != 0) {
            uint16 diff = recipientOffset > inputAmountOffset
                ? recipientOffset - inputAmountOffset
                : inputAmountOffset - recipientOffset;
            require(diff >= 32, OverlappingOffsets());
        }
        if (outputAmountOffset != 0) {
            uint16 diff = recipientOffset > outputAmountOffset
                ? recipientOffset - outputAmountOffset
                : outputAmountOffset - recipientOffset;
            require(diff >= 32, OverlappingOffsets());
        }
        if (inputAmountOffset != 0 && outputAmountOffset != 0) {
            uint16 diff = inputAmountOffset > outputAmountOffset
                ? inputAmountOffset - outputAmountOffset
                : outputAmountOffset - inputAmountOffset;
            require(diff >= 32, OverlappingOffsets());
        }
    }

    /**
     * @dev Returns true when `target` is present in `allowedTargets`.
     * @param allowedTargets Approved bridge targets.
     * @param target Bridge target being checked.
     * @return True when `target` is allowlisted.
     */
    function _isAllowedBridgeTarget(address[] memory allowedTargets, address target) private pure returns (bool) {
        for (uint256 i = 0; i < allowedTargets.length;) {
            if (allowedTargets[i] == target) {
                return true;
            }
            unchecked {
                ++i;
            }
        }
        return false;
    }
}
