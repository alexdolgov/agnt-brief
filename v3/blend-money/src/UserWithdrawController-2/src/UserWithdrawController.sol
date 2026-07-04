// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {DelegateController} from "./libraries/DelegateController.sol";
import {DeallocateLib, WithdrawParams} from "./libraries/DeallocateLib.sol";
import {StrategyManager} from "./libraries/StrategyManager.sol";
import {RebalanceData} from "./types/RebalanceTypes.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title UserWithdrawController
 * @notice Delegatecall contract that executes the user withdraw flow atomically from a Gnosis Safe.
 * @dev Resolves fee parameters from constructor immutables and delegates to DeallocateLib.
 *      Withdraw fee is capped at 5% (0.05e18 WAD). Bridge fee is capped at 25% (0.25e18 WAD).
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract UserWithdrawController is DelegateController {
    /*//////////////////////////////////////////////////////////////
                                IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    StrategyManager public immutable STRATEGY_MANAGER;
    uint256 public immutable WITHDRAW_FEE_WAD;
    address public immutable WITHDRAW_FEE_RECIPIENT;
    uint256 public immutable BRIDGE_FEE_WAD;
    bytes32 public immutable ALLOWED_BRIDGE_TARGETS_HASH;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Withdraw fee exceeds MAX_WITHDRAW_FEE_WAD
     */
    error InvalidWithdrawFee();
    /**
     * @notice Bridge fee exceeds BRIDGE_FEE_WAD
     */
    error InvalidBridgeFee();
    /**
     * @notice Address is zero or invalid
     */
    error InvalidAddress();
    /**
     * @notice Supplied bridge targets do not match the deployment commitment.
     */
    error InvalidBridgeTargets();

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deploy with the given fee configuration and bridge target allowlist.
     * @dev Fees and the allowlist hash are immutable. A non-zero withdraw fee requires a non-zero recipient.
     *      Fee caps are enforced at construction and again by DeallocateLib.executeWithdraw at call time.
     * @param _strategyManager StrategyManager used to look up vault configs
     * @param _withdrawFeeWad Withdraw fee in WAD
     * @param _withdrawFeeRecipient Address that receives the withdraw fee
     * @param _bridgeFeeWad Bridge fee in WAD
     * @param _allowedBridgeTargets Approved bridge target contracts
     * @custom:reverts InvalidAddress
     * @custom:reverts InvalidWithdrawFee if _withdrawFeeWad exceeds MAX_WITHDRAW_FEE_WAD
     * @custom:reverts InvalidBridgeFee if _bridgeFeeWad exceeds MAX_BRIDGE_FEE_WAD
     */
    constructor(
        StrategyManager _strategyManager,
        uint256 _withdrawFeeWad,
        address _withdrawFeeRecipient,
        uint256 _bridgeFeeWad,
        address[] memory _allowedBridgeTargets
    ) {
        require(_withdrawFeeWad == 0 || _withdrawFeeRecipient != address(0), InvalidAddress());
        require(address(_strategyManager) != address(0), InvalidAddress());
        require(_withdrawFeeWad <= DeallocateLib.MAX_WITHDRAW_FEE_WAD, InvalidWithdrawFee());
        require(_bridgeFeeWad <= DeallocateLib.MAX_BRIDGE_FEE_WAD, InvalidBridgeFee());
        STRATEGY_MANAGER = _strategyManager;
        WITHDRAW_FEE_WAD = _withdrawFeeWad;
        WITHDRAW_FEE_RECIPIENT = _withdrawFeeRecipient;
        BRIDGE_FEE_WAD = _bridgeFeeWad;
        ALLOWED_BRIDGE_TARGETS_HASH = keccak256(abi.encode(_allowedBridgeTargets));
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Execute the withdraw flow via delegatecall from a Safe.
     * @dev Must be called via delegatecall from a single-owner Safe. Delegates to DeallocateLib for
     *      validation, vault withdraw, fee, transfer/bridge, and redeposit.
     * @param vault The ERC-4626 vault to withdraw from
     * @param expectedRecipient Expected owner EOA -- must match the Safe's sole owner
     * @param withdrawAmount Asset amount, or type(uint256).max for the full position
     * @param withdrawAssetPerShare Slippage floor for the vault withdraw
     * @param depositAssetPerShare Slippage ceiling for the cleanup redeposit
     * @param rebalanceData Liquidity reset data, empty array to skip
     * @param forceDeallocateAdapterIndices Non-market adapter indices to deallocate from, empty to skip
     * @param bridgePayload Pre-built bridge calldata with placeholder values, empty for same-chain
     * @param bridgeOffsets Packed [recipientOffset(16), inputAmountOffset(16), outputAmountOffset(16), destDecimals(8)]
     * @param bridgeFee Bridge cost in WAD, must not exceed BRIDGE_FEE_WAD
     * @param bridgeTarget Contract to call with the patched bridgePayload
     * @param allowedBridgeTargets Approved bridge targets, must match ALLOWED_BRIDGE_TARGETS_HASH
     * @custom:reverts InvalidBridgeFee if bridgeFee exceeds BRIDGE_FEE_WAD on a bridged withdrawal
     * @custom:reverts InvalidBridgeTargets if the supplied list does not match the deployment hash
     * @custom:reverts BridgeTargetNotAllowed if bridgeTarget is not in the allowlist
     * @custom:events WithdrawExecuted on success
     */
    function executeWithdraw(
        IERC4626 vault,
        address expectedRecipient,
        uint256 withdrawAmount,
        uint256 withdrawAssetPerShare,
        uint256 depositAssetPerShare,
        RebalanceData[] calldata rebalanceData,
        uint256[] calldata forceDeallocateAdapterIndices,
        bytes calldata bridgePayload,
        uint256 bridgeOffsets,
        uint256 bridgeFee,
        address bridgeTarget,
        address[] calldata allowedBridgeTargets
    ) external _onlyDelegateCall {
        require(bridgePayload.length == 0 || bridgeFee <= BRIDGE_FEE_WAD, InvalidBridgeFee());
        require(keccak256(abi.encode(allowedBridgeTargets)) == ALLOWED_BRIDGE_TARGETS_HASH, InvalidBridgeTargets());

        DeallocateLib.executeWithdraw(
            WithdrawParams({
                vault: vault,
                strategyManager: STRATEGY_MANAGER,
                expectedRecipient: expectedRecipient,
                withdrawFeeWad: WITHDRAW_FEE_WAD,
                withdrawFeeRecipient: WITHDRAW_FEE_RECIPIENT,
                withdrawAmount: withdrawAmount,
                withdrawAssetPerShare: withdrawAssetPerShare,
                depositAssetPerShare: depositAssetPerShare,
                rebalanceData: rebalanceData,
                forceDeallocateAdapterIndices: forceDeallocateAdapterIndices,
                bridgePayload: bridgePayload,
                bridgeOffsets: bridgeOffsets,
                bridgeFee: bridgeFee,
                bridgeTarget: bridgeTarget,
                allowedBridgeTargets: allowedBridgeTargets
            })
        );
    }
}
