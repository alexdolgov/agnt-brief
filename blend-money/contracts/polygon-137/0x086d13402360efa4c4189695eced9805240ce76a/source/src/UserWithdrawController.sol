// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {DelegateController} from "./libraries/DelegateController.sol";
import {MorphoVaultLib} from "./libraries/MorphoVaultLib.sol";
import {PriceLib} from "./libraries/PriceLib.sol";
import {MathLib, WAD} from "morpho-blue/src/libraries/MathLib.sol";
import {StrategyManager} from "./libraries/StrategyManager.sol";
import {VaultConfig} from "./types/StrategyTypes.sol";
import {RebalanceData} from "./types/RebalanceTypes.sol";
import {IVaultController} from "./interfaces/controllers/IVaultController.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IModuleManager} from "safe-contracts/interfaces/IModuleManager.sol";
import {IOwnerManager} from "safe-contracts/interfaces/IOwnerManager.sol";
import {IVaultV2} from "morpho-vault-v2/src/interfaces/IVaultV2.sol";
import {IAdapter} from "morpho-vault-v2/src/interfaces/IAdapter.sol";

/**
 * @title UserWithdrawController
 * @notice Delegatecall contract that executes the user withdraw flow atomically from a Gnosis Safe.
 * @dev Runs via delegatecall (address(this) = Safe). Recipient is resolved on-chain from Safe owners.
 *      Bridge values are patched into a pre-built calldata blob via packed offsets.
 *      Withdraw fee is capped at 5% (0.05e18 WAD). Bridge fee is capped at 25% (0.25e18 WAD).
 *      Remaining assets after transfer/bridge are redeposited.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 * @custom:security Delegatecall grants this contract the Safe's identity. External calls
 *     originate as the Safe, passing its self-authorization checks.
 */
contract UserWithdrawController is DelegateController {
    using SafeERC20 for IERC20;
    using MathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    uint256 private constant MAX_WITHDRAW_FEE_WAD = 0.05e18;
    uint256 private constant MAX_BRIDGE_FEE_WAD = 0.25e18;

    /*//////////////////////////////////////////////////////////////
                                IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    StrategyManager public immutable STRATEGY_MANAGER;
    uint256 public immutable WITHDRAW_FEE_WAD;
    address public immutable WITHDRAW_FEE_RECIPIENT;
    uint256 public immutable BRIDGE_FEE_WAD;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted after a successful withdrawal
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
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice StrategyManager module is not enabled on the Safe
    error ReceiverNotEnabled();
    /// @notice Address is zero or invalid
    error InvalidAddress();
    /// @notice Vault is not registered in the StrategyManager
    error InvalidVault();
    /// @notice Withdraw fee exceeds MAX_WITHDRAW_FEE_WAD
    error InvalidWithdrawFee();
    /// @notice Bridge fee exceeds MAX_BRIDGE_FEE_WAD
    error InvalidBridgeFee();
    /// @notice Liquidity reset delegatecall failed
    error LiqResetFailed();
    /// @notice Force deallocation could not cover the shortfall
    error ForceDeallocateFailed();
    /// @notice Bridge call reverted
    error BridgeFailed();
    /// @notice Bridge did not consume the requested amount
    error BridgeAmountNotConsumed();
    /// @notice Patch offset would write past the payload end
    error OffsetOutOfBounds();
    /// @notice Multi-owner Safes are not allowed
    error MultipleOwnersDetected();
    /// @notice Safe balance insufficient after vault withdraw
    error InsufficientBalance();
    /// @notice Withdraw amount must be greater than zero
    error ZeroWithdrawAmount();
    /// @notice Adapter has a non-zero force-deallocate penalty
    error NonZeroPenalty();

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deploy with the given fee configuration.
     * @dev Fees are immutable. A non-zero withdraw fee requires a non-zero recipient.
     * @param _strategyManager StrategyManager used to look up vault configs
     * @param _withdrawFeeWad Withdraw fee in WAD (1e18 = 100%), capped at MAX_WITHDRAW_FEE_WAD
     * @param _withdrawFeeRecipient Address that receives the withdraw fee
     * @param _bridgeFeeWad Bridge fee in WAD (1e18 = 100%), capped at MAX_BRIDGE_FEE_WAD
     * @custom:reverts InvalidWithdrawFee, InvalidBridgeFee, InvalidAddress
     */
    constructor(
        StrategyManager _strategyManager,
        uint256 _withdrawFeeWad,
        address _withdrawFeeRecipient,
        uint256 _bridgeFeeWad
    ) {
        require(_withdrawFeeWad <= MAX_WITHDRAW_FEE_WAD, InvalidWithdrawFee());
        require(_bridgeFeeWad <= MAX_BRIDGE_FEE_WAD, InvalidBridgeFee());
        require(_withdrawFeeWad == 0 || _withdrawFeeRecipient != address(0), InvalidAddress());
        require(address(_strategyManager) != address(0), InvalidAddress());
        STRATEGY_MANAGER = _strategyManager;
        WITHDRAW_FEE_WAD = _withdrawFeeWad;
        WITHDRAW_FEE_RECIPIENT = _withdrawFeeRecipient;
        BRIDGE_FEE_WAD = _bridgeFeeWad;
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Execute the withdraw flow via delegatecall from a Safe.
     * @dev Steps: validate, liquidity reset, snapshot, force deallocate, withdraw, fee, transfer or bridge, redeposit.
     * @param vault The ERC-4626 vault to withdraw from
     * @param withdrawAmount Asset amount, or type(uint256).max for the full position
     * @param withdrawAssetPerShare Slippage floor for the vault withdraw
     * @param depositAssetPerShare Slippage ceiling for the cleanup redeposit
     * @param rebalanceData Liquidity reset data, empty array to skip
     * @param forceDeallocateAdapterIndices Non-market adapter indices to deallocate from, empty to skip
     * @param bridgePayload Pre-built bridge calldata with placeholder values, empty for same-chain
     * @param bridgeOffsets Packed [recipientOffset(16), inputAmountOffset(16), outputAmountOffset(16), destDecimals(8)]
     * @param bridgeFee Bridge cost in WAD (1e18 = 100%), must not exceed BRIDGE_FEE_WAD
     * @param bridgeTarget Contract to call with the patched bridgePayload
     * @custom:reverts ReceiverNotEnabled, InvalidVault, MultipleOwnersDetected, InvalidAddress, InvalidBridgeFee, LiqResetFailed, InsufficientBalance, NonZeroPenalty, ForceDeallocateFailed, OffsetOutOfBounds, BridgeFailed, BridgeAmountNotConsumed
     * @custom:events WithdrawExecuted on success
     */
    function executeWithdraw(
        IERC4626 vault,
        uint256 withdrawAmount,
        uint256 withdrawAssetPerShare,
        uint256 depositAssetPerShare,
        RebalanceData[] calldata rebalanceData,
        uint256[] calldata forceDeallocateAdapterIndices,
        bytes calldata bridgePayload,
        uint256 bridgeOffsets,
        uint256 bridgeFee,
        address bridgeTarget
    ) external _onlyDelegateCall {
        // Step 0: Validate

        // 0.a: withdraw amount must be non-zero
        require(withdrawAmount > 0, ZeroWithdrawAmount());

        // 0.b: no non-receiver safes can use this delegate call
        require(IModuleManager(address(this)).isModuleEnabled(address(STRATEGY_MANAGER)), ReceiverNotEnabled());

        // 0.c: the vault in question must be a parent config
        VaultConfig memory config = STRATEGY_MANAGER.getVaultConfig(address(vault));
        require(address(config.control) != address(0), InvalidVault());

        // 0.d: only safes with one owner can use this
        address[] memory owners = IOwnerManager(address(this)).getOwners();
        require(owners.length == 1, MultipleOwnersDetected());
        address recipient = owners[0];

        // 0.e: if we're bridging, the target must be a contract and the fee must be within bounds
        bool bridged = bridgePayload.length > 0;
        require(!bridged || bridgeTarget.code.length > 0, InvalidAddress());
        require(!bridged || bridgeFee <= BRIDGE_FEE_WAD, InvalidBridgeFee());

        // 0.f: accrue interest so totalAssets/totalSupply reflect fees
        IVaultV2(address(vault)).accrueInterest();

        IERC20 loanToken = IERC20(vault.asset());

        // Step 1: Liquidity reset
        if (rebalanceData.length > 0) {
            (bool ok,) = address(config.control).delegatecall(
                abi.encodeWithSelector(IVaultController.executeRebalance.selector, address(vault), rebalanceData)
            );
            require(ok, LiqResetFailed());
        }

        // Step 2: Snapshot idle balance + resolve max
        // Taken after the liquidity reset so any assets freed by the rebalance are counted as idle.
        uint256 balanceBefore = loanToken.balanceOf(address(this));
        bool isMaxWithdraw = withdrawAmount == type(uint256).max;
        if (isMaxWithdraw) {
            uint256 shares = vault.balanceOf(address(this));
            withdrawAmount = vault.previewRedeem(shares) + balanceBefore;
        }

        // Step 3: Compute vault pull, force deallocate, withdraw
        uint256 amountFromVault = balanceBefore >= withdrawAmount ? 0 : withdrawAmount - balanceBefore;

        if (amountFromVault > 0) {
            if (forceDeallocateAdapterIndices.length > 0) {
                _forceDeallocate(vault, loanToken, amountFromVault, forceDeallocateAdapterIndices);
            }
            MorphoVaultLib._withdrawAssets(
                vault, isMaxWithdraw ? type(uint256).max : amountFromVault, withdrawAssetPerShare
            );
        }

        // Step 4: Determine actual withdrawn amount
        uint256 withdrawnAmount;
        if (isMaxWithdraw) {
            withdrawnAmount = loanToken.balanceOf(address(this));
        } else {
            require(loanToken.balanceOf(address(this)) >= withdrawAmount, InsufficientBalance());
            withdrawnAmount = withdrawAmount;
        }

        // Step 5: Withdraw fee
        uint256 feeAmount;
        if (WITHDRAW_FEE_WAD > 0 && withdrawnAmount > 0) {
            uint256 netAmount = withdrawnAmount.wMulDown(WAD - WITHDRAW_FEE_WAD);
            feeAmount = withdrawnAmount - netAmount;
            loanToken.safeTransfer(WITHDRAW_FEE_RECIPIENT, feeAmount);
            withdrawnAmount = netAmount;
        }

        // Step 6: Transfer to owner or bridge
        if (bridged) {
            (uint16 recipientOffset, uint16 inputAmountOffset, uint16 outputAmountOffset, uint8 destDecimals) =
                _unpackBridgeOffsets(bridgeOffsets);

            bytes memory payload = bridgePayload;

            if (recipientOffset != 0) {
                _patchValue(payload, uint256(recipientOffset), uint256(uint160(recipient)));
            }

            if (inputAmountOffset != 0) {
                _patchValue(payload, uint256(inputAmountOffset), withdrawnAmount);
            }

            if (outputAmountOffset != 0) {
                uint256 outputAmount = withdrawnAmount.wMulDown(WAD - bridgeFee);
                if (destDecimals != 0) {
                    uint8 originDecimals = IERC20Metadata(address(loanToken)).decimals();
                    outputAmount = PriceLib.scale(outputAmount, originDecimals, destDecimals);
                }
                _patchValue(payload, uint256(outputAmountOffset), outputAmount);
            }

            uint256 preBridgeAmount = loanToken.balanceOf(address(this));

            loanToken.forceApprove(bridgeTarget, withdrawnAmount);
            (bool ok,) = bridgeTarget.call(payload);
            loanToken.forceApprove(bridgeTarget, 0);
            require(ok, BridgeFailed());

            uint256 postBridgeAmount = loanToken.balanceOf(address(this));
            require(
                postBridgeAmount <= preBridgeAmount && preBridgeAmount - postBridgeAmount == withdrawnAmount,
                BridgeAmountNotConsumed()
            );
        } else {
            loanToken.safeTransfer(recipient, withdrawnAmount);
        }

        // Step 7: Sweep remaining USDC back into vault
        MorphoVaultLib._depositAssets(vault, type(uint256).max, depositAssetPerShare);

        // Step 8: Emit
        emit WithdrawExecuted(
            address(this), address(vault), recipient, address(loanToken), withdrawnAmount, feeAmount, bridged
        );
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Pulls assets from non-market adapters to cover a liquidity shortfall. Subtracts idle
     *      vault balance and liquidity adapter assets, then iterates adapterIndices until covered.
     * @custom:reverts NonZeroPenalty, ForceDeallocateFailed
     * @param vault The ERC-4626 vault to deallocate from
     * @param loanToken The underlying asset used to read idle balance
     * @param withdrawAmount Target withdraw amount (must be concrete, not type(uint256).max)
     * @param adapterIndices Adapter indices to force-deallocate from
     */
    function _forceDeallocate(
        IERC4626 vault,
        IERC20 loanToken,
        uint256 withdrawAmount,
        uint256[] calldata adapterIndices
    ) internal {
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
                    // Zero-penalty required so users can exit without loss to forced deallocation.
                    require(v2.forceDeallocatePenalty(adapter) == 0, NonZeroPenalty());
                    uint256 adapterAssets = IAdapter(adapter).realAssets();
                    if (adapterAssets > 0) {
                        uint256 deallocateAmount = shortfall < adapterAssets ? shortfall : adapterAssets;
                        v2.forceDeallocate(adapter, "", deallocateAmount, address(this));
                        shortfall -= deallocateAmount;
                        if (shortfall == 0) {
                            return;
                        }
                    }
                }
                unchecked {
                    ++i;
                }
            }

            require(shortfall == 0, ForceDeallocateFailed());
        }
    }

    /**
     * @dev Unpacks bridge offsets and dest decimals from a packed uint256.
     * @param packed Bits [0..15] recipientOffset, [16..31] inputAmountOffset, [32..47] outputAmountOffset, [48..55] destDecimals
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
     * @dev Writes a uint256 value into a bytes buffer at the given byte offset.
     * @param data The mutable bytes buffer to patch
     * @param offset Byte position within data to write the value
     * @param value Value to write at offset
     * @custom:reverts OffsetOutOfBounds
     */
    function _patchValue(bytes memory data, uint256 offset, uint256 value) internal pure {
        require(data.length >= 32 && offset <= data.length - 32, OffsetOutOfBounds());
        assembly ("memory-safe") {
            mstore(add(add(data, 32), offset), value)
        }
    }
}
