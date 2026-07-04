// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {VaultActionController} from "../libraries/VaultActionController.sol";
import {DeallocateLib, WithdrawParams} from "../libraries/DeallocateLib.sol";
import {StrategyManager} from "../libraries/StrategyManager.sol";
import {RebalanceData} from "../types/RebalanceTypes.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @notice Admin-controlled configuration decoded from strategyData.
 */
struct UserWithdrawStrategyData {
    uint256 withdrawFeeWad;
    address withdrawFeeRecipient;
    uint256 maxBridgeFeeWad;
    address[] allowedBridgeTargets;
}

/**
 * @notice Per-execution parameters for UserWithdrawVaultAction.
 */
struct UserWithdrawExtraData {
    address expectedRecipient;
    uint256 withdrawAmount;
    uint256 withdrawAssetPerShare;
    uint256 depositAssetPerShare;
    RebalanceData[] rebalanceData;
    uint256[] forceDeallocateAdapterIndices;
    bytes bridgePayload;
    uint256 bridgeOffsets;
    uint256 bridgeFee;
    address bridgeTarget;
}

/**
 * @title UserWithdrawVaultAction
 * @notice Vault action variant of the user withdraw flow. Fee parameters come from calldata.
 * @dev Dispatched by RolesReceiver. Delegates to DeallocateLib for the shared withdraw path.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract UserWithdrawVaultAction is VaultActionController {
    /*//////////////////////////////////////////////////////////////
                                IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    StrategyManager public immutable STRATEGY_MANAGER;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Bridge fee exceeds the per-strategy or global cap
     */
    error InvalidBridgeFee();
    /**
     * @notice Address is zero or invalid
     */
    error InvalidAddress();

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deploy with the given StrategyManager.
     * @param _strategyManager StrategyManager used to look up vault configs
     * @custom:reverts InvalidAddress if _strategyManager is the zero address
     */
    constructor(StrategyManager _strategyManager) {
        require(address(_strategyManager) != address(0), InvalidAddress());
        STRATEGY_MANAGER = _strategyManager;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Decodes admin config from strategyData and per-execution params from extraData.
     * @param vault The ERC-4626 vault to withdraw from
     * @param strategyData ABI-encoded UserWithdrawStrategyData struct (admin-controlled)
     * @param extraData ABI-encoded UserWithdrawExtraData struct (executor-supplied)
     */
    function _execute(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData) internal override {
        UserWithdrawStrategyData memory sd = abi.decode(strategyData, (UserWithdrawStrategyData));
        UserWithdrawExtraData memory ed = abi.decode(extraData, (UserWithdrawExtraData));

        require(sd.maxBridgeFeeWad <= DeallocateLib.MAX_BRIDGE_FEE_WAD, InvalidBridgeFee());
        require(sd.withdrawFeeWad == 0 || sd.withdrawFeeRecipient != address(0), InvalidAddress());
        bool bridged = ed.bridgePayload.length > 0;
        require(!bridged || ed.bridgeFee <= sd.maxBridgeFeeWad, InvalidBridgeFee());

        DeallocateLib.executeWithdraw(
            WithdrawParams({
                vault: vault,
                strategyManager: STRATEGY_MANAGER,
                expectedRecipient: ed.expectedRecipient,
                withdrawFeeWad: sd.withdrawFeeWad,
                withdrawFeeRecipient: sd.withdrawFeeRecipient,
                withdrawAmount: ed.withdrawAmount,
                withdrawAssetPerShare: ed.withdrawAssetPerShare,
                depositAssetPerShare: ed.depositAssetPerShare,
                rebalanceData: ed.rebalanceData,
                forceDeallocateAdapterIndices: ed.forceDeallocateAdapterIndices,
                bridgePayload: ed.bridgePayload,
                bridgeOffsets: ed.bridgeOffsets,
                bridgeFee: ed.bridgeFee,
                bridgeTarget: ed.bridgeTarget,
                allowedBridgeTargets: sd.allowedBridgeTargets
            })
        );
    }
}
