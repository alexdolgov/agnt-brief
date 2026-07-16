// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import { AccessControl } from "@solidstate/contracts/access/access_control/AccessControl.sol";
import { ITraderV0, TraderV0InitializerParams } from "./trader/trader/ITraderV0.sol";
import { IGMX_Swap_Module } from "./trader/modules/gmx/swap/IGMX_Swap_Module.sol";
import { IGMX_PositionRouter_Module } from "./trader/modules/gmx/position/IGMX_PositionRouter_Module.sol";
import { IGMX_OrderBook_Module } from "./trader/modules/gmx/orderbook/IGMX_OrderBook_Module.sol";
import { IGMX_GLP_Module } from "./trader/modules/gmx/glp/IGMX_GLP_Module.sol";
import { ICamelot_LP_Module } from "./trader/modules/camelot/lp/ICamelot_LP_Module.sol";
import { ICamelot_NFTPool_Module } from "./trader/modules/camelot/nftpool/ICamelot_NFTPool_Module.sol";
import { ICamelot_NitroPool_Module } from "./trader/modules/camelot/nitropool/ICamelot_NitroPool_Module.sol";
import { ICamelot_Swap_Module } from "./trader/modules/camelot/swap/ICamelot_Swap_Module.sol";
import { ICamelot_V3LP_Module } from "./trader/modules/camelot/v3LP/ICamelot_V3LP_Module.sol";
import { ICamelot_V3Swap_Module } from "./trader/modules/camelot/v3Swap/ICamelot_V3Swap_Module.sol";
import { ICamelot_Storage_Module } from "./trader/modules/camelot/storage/ICamelot_Storage_Module.sol";
import { ILyra_Storage_Module } from "./trader/modules/lyra/storage/ILyra_Storage_Module.sol";
import { ILyra_LP_Module } from "./trader/modules/lyra/lp/ILyra_LP_Module.sol";
import { ILyra_Options_Module } from "./trader/modules/lyra/options/ILyra_Options_Module.sol";
import { ILyra_Rewards_Module } from "./trader/modules/lyra/rewards/ILyra_Rewards_Module.sol";
import { IAave_Lending_Module } from "./trader/modules/aave/IAave_Lending_Module.sol";
import { ITraderJoe_Swap_Module } from "./trader/modules/traderjoe/swap/ITraderJoe_Swap_Module.sol";
import { ITraderJoe_Legacy_LP_Module } from "./trader/modules/traderjoe/legacy_lp/ITraderJoe_Legacy_LP_Module.sol";
import { ITraderJoe_LP_Module } from "./trader/modules/traderjoe/lp/ITraderJoe_LP_Module.sol";
import { IInch_Swap_Module } from "./trader/modules/inch/swap/IInch_Swap_Module.sol";
import { IInch_LimitOrder_Module } from "./trader/modules/inch/limitorder/IInch_LimitOrder_Module.sol";
import { IRysk_LP_Module } from "./trader/modules/rysk/lp/IRysk_LP_Module.sol";
import { IRysk_Options_Module } from "./trader/modules/rysk/options/IRysk_Options_Module.sol";
import { IWETH_Module } from "./trader/modules/WETH.sol";
import { IRodeo_Module } from "./trader/modules/Rodeo.sol";
import { IGMXV2_Module } from "./trader/modules/GMXV2.sol";
import { IDolomite_Module } from "./trader/modules/Dolomite.sol";

contract Strategy is AccessControl {
    struct State {
        mapping(bytes4 => address) selectors;
    }

    bytes32 internal constant STATE_SLOT = keccak256('strategy');

    constructor(
      address[] memory targets,
      TraderV0InitializerParams memory traderParams,
      address[] memory assets,
      address[] memory oracles
    ) {
        _grantRole(0x00, msg.sender);
        _grantRole(keccak256("EXECUTOR_ROLE"), msg.sender);
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }

        address t = targets[0];
        s.selectors[ITraderV0.setVault.selector] = t;
        s.selectors[ITraderV0.approve.selector] = t;
        s.selectors[ITraderV0.custodyFunds.selector] = t;
        s.selectors[ITraderV0.returnFunds.selector] = t;
        s.selectors[ITraderV0.withdrawFees.selector] = t;
        s.selectors[ITraderV0.setFeeRates.selector] = t;
        s.selectors[ITraderV0.setFeeReceiver.selector] = t;
        s.selectors[ITraderV0.getAllowedTokens.selector] = t;
        s.selectors[ITraderV0.getAllowedSpenders.selector] = t;
        s.selectors[ITraderV0.name.selector] = t;
        s.selectors[ITraderV0.feeReceiver.selector] = t;
        s.selectors[ITraderV0.vault.selector] = t;
        s.selectors[ITraderV0.baseAsset.selector] = t;
        s.selectors[ITraderV0.performanceFeeRate.selector] = t;
        s.selectors[ITraderV0.managementFeeRate.selector] = t;
        s.selectors[ITraderV0.custodyTime.selector] = t;
        s.selectors[ITraderV0.custodiedAmount.selector] = t;
        s.selectors[ITraderV0.totalFees.selector] = t;
        s.selectors[ITraderV0.MAX_PERFORMANCE_FEE_RATE.selector] = t;
        s.selectors[ITraderV0.MAX_MANAGEMENT_FEE_RATE.selector] = t;
        initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, traderParams));

        t = targets[1];
        s.selectors[IGMX_Swap_Module.gmx_swap.selector] = t;
        s.selectors[IGMX_Swap_Module.gmx_swapETHToTokens.selector] = t;
        s.selectors[IGMX_Swap_Module.gmx_swapTokensToETH.selector] = t;
        t = targets[2];
        s.selectors[IGMX_PositionRouter_Module.gmx_createIncreasePosition.selector] = t;
        s.selectors[IGMX_PositionRouter_Module.gmx_createIncreasePositionETH.selector] = t;
        s.selectors[IGMX_PositionRouter_Module.gmx_createDecreasePosition.selector] = t;
        s.selectors[IGMX_PositionRouter_Module.gmx_cancelIncreasePosition.selector] = t;
        s.selectors[IGMX_PositionRouter_Module.gmx_cancelDecreasePosition.selector] = t;
        t = targets[3];
        s.selectors[IGMX_OrderBook_Module.gmx_createIncreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_createDecreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_createSwapOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_updateIncreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_updateDecreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_cancelIncreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_cancelDecreaseOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_cancelSwapOrder.selector] = t;
        s.selectors[IGMX_OrderBook_Module.gmx_cancelMultiple.selector] = t;
        t = targets[4];
        s.selectors[IGMX_GLP_Module.gmx_mintAndStakeGlp.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_mintAndStakeGlpETH.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_unstakeAndRedeemGlp.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_unstakeAndRedeemGlpETH.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_claim.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_compound.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_handleRewards.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_unstakeGmx.selector] = t;
        s.selectors[IGMX_GLP_Module.gmx_unstakeEsGmx.selector] = t;
        t = targets[5];
        s.selectors[ICamelot_LP_Module.camelot_addLiquidity.selector] = t;
        s.selectors[ICamelot_LP_Module.camelot_addLiquidityETH.selector] = t;
        s.selectors[ICamelot_LP_Module.camelot_removeLiquidity.selector] = t;
        s.selectors[ICamelot_LP_Module.camelot_removeLiquidityETH.selector] = t;
        t = targets[6];
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_createPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_addToPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_harvestPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_withdrawFromPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_renewLockPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_lockPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_splitPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_mergePositions.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.camelot_nftpool_emergencyWithdraw.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.onERC721Received.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.onNFTHarvest.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.onNFTAddToPosition.selector] = t;
        s.selectors[ICamelot_NFTPool_Module.onNFTWithdraw.selector] = t;
        t = targets[7];
        s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_transfer.selector] = t;
        s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_withdraw.selector] = t;
        s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_emergencyWithdraw.selector] = t;
        s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_harvest.selector] = t;
        t = targets[8];
        s.selectors[ICamelot_Swap_Module.camelot_swapExactTokensForTokens.selector] = t;
        s.selectors[ICamelot_Swap_Module.camelot_swapExactETHForTokens.selector] = t;
        s.selectors[ICamelot_Swap_Module.camelot_swapExactTokensForETH.selector] = t;
        t = targets[9];
        s.selectors[ICamelot_V3LP_Module.camelot_v3_mint.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_burn.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_collect.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_increaseLiquidity.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidity.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidityAndCollect.selector] = t;
        s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidityCollectAndBurn.selector] = t;
        t = targets[10];
        s.selectors[ICamelot_V3Swap_Module.camelot_v3_swap.selector] = t;
        t = targets[11];
        s.selectors[ICamelot_Storage_Module.manageNFTPools.selector] = t;
        s.selectors[ICamelot_Storage_Module.manageNitroPools.selector] = t;
        s.selectors[ICamelot_Storage_Module.manageExecutors.selector] = t;
        s.selectors[ICamelot_Storage_Module.manageReceivers.selector] = t;
        s.selectors[ICamelot_Storage_Module.getAllowedNFTPools.selector] = t;
        s.selectors[ICamelot_Storage_Module.getAllowedNitroPools.selector] = t;
        s.selectors[ICamelot_Storage_Module.getAllowedExecutors.selector] = t;
        s.selectors[ICamelot_Storage_Module.getAllowedReceivers.selector] = t;
        t = targets[12];
        s.selectors[ILyra_Storage_Module.addLyraMarket.selector] = t;
        s.selectors[ILyra_Storage_Module.removeLyraMarket.selector] = t;
        s.selectors[ILyra_Storage_Module.getAllowedLyraMarkets.selector] = t;
        s.selectors[ILyra_Storage_Module.getAllowedLyraPools.selector] = t;
        s.selectors[ILyra_Storage_Module.getLyraPoolQuoteAsset.selector] = t;
        t = targets[13];
        s.selectors[ILyra_LP_Module.lyra_initiateDeposit.selector] = t;
        s.selectors[ILyra_LP_Module.lyra_initiateWithdraw.selector] = t;
        t = targets[14];
        s.selectors[ILyra_Options_Module.lyra_openPosition.selector] = t;
        s.selectors[ILyra_Options_Module.lyra_addCollateral.selector] = t;
        s.selectors[ILyra_Options_Module.lyra_closePosition.selector] = t;
        s.selectors[ILyra_Options_Module.lyra_forceClosePosition.selector] = t;
        t = targets[15];
        s.selectors[ILyra_Rewards_Module.lyra_claimRewards.selector] = t;
        s.selectors[ILyra_Rewards_Module.lyra_claimAndDump.selector] = t;
        s.selectors[ILyra_Rewards_Module.lyra_dump.selector] = t;
        t = targets[16];
        s.selectors[IAave_Lending_Module.aave_supply.selector] = t;
        s.selectors[IAave_Lending_Module.aave_withdraw.selector] = t;
        s.selectors[IAave_Lending_Module.aave_borrow.selector] = t;
        s.selectors[IAave_Lending_Module.aave_repay.selector] = t;
        s.selectors[IAave_Lending_Module.aave_swapBorrowRateMode.selector] = t;
        s.selectors[IAave_Lending_Module.aave_setUserEMode.selector] = t;
        t = targets[17];
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactTokensForTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactTokensForNATIVE.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactNATIVEForTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapTokensForExactTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapTokensForExactNATIVE.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapNATIVEForExactTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactTokensForTokensSupportingFeeOnTransferTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactTokensForNATIVESupportingFeeOnTransferTokens.selector] = t;
        s.selectors[ITraderJoe_Swap_Module.traderjoe_swapExactNATIVEForTokensSupportingFeeOnTransferTokens.selector] = t;
        t = targets[18];
        s.selectors[ITraderJoe_Legacy_LP_Module.traderjoe_legacy_addLiquidity.selector] = t;
        s.selectors[ITraderJoe_Legacy_LP_Module.traderjoe_legacy_addLiquidityAVAX.selector] = t;
        s.selectors[ITraderJoe_Legacy_LP_Module.traderjoe_legacy_removeLiquidity.selector] = t;
        s.selectors[ITraderJoe_Legacy_LP_Module.traderjoe_legacy_removeLiquidityAVAX.selector] = t;
        s.selectors[ITraderJoe_Legacy_LP_Module.traderjoe_legacy_setApprovalForAll.selector] = t;
        t = targets[19];
        s.selectors[ITraderJoe_LP_Module.traderjoe_addLiquidity.selector] = t;
        s.selectors[ITraderJoe_LP_Module.traderjoe_addLiquidityNATIVE.selector] = t;
        s.selectors[ITraderJoe_LP_Module.traderjoe_removeLiquidity.selector] = t;
        s.selectors[ITraderJoe_LP_Module.traderjoe_removeLiquidityNATIVE.selector] = t;
        s.selectors[ITraderJoe_LP_Module.traderjoe_approveForAll.selector] = t;
        t = targets[20];
        s.selectors[IInch_Swap_Module.inch_swap.selector] = t;
        s.selectors[IInch_Swap_Module.inch_uniswapV3Swap.selector] = t;
        s.selectors[IInch_Swap_Module.inch_clipperSwap.selector] = t;
        t = targets[21];
        s.selectors[IInch_LimitOrder_Module.inch_fillOrder.selector] = t;
        s.selectors[IInch_LimitOrder_Module.inch_cancelOrder.selector] = t;
        s.selectors[IInch_LimitOrder_Module.inch_addOrder.selector] = t;
        s.selectors[IInch_LimitOrder_Module.inch_removeOrder.selector] = t;
        s.selectors[IInch_LimitOrder_Module.isValidSignature.selector] = t;
        s.selectors[IInch_LimitOrder_Module.inch_getHashes.selector] = t;
        s.selectors[IInch_LimitOrder_Module.inch_getOracleForAsset.selector] = t;
        initialize(t, abi.encodeWithSelector(IInch_LimitOrder_Module.init_Inch_LimitOrder.selector, assets, oracles));
        t = targets[22];
        s.selectors[IRysk_LP_Module.rysk_deposit.selector] = t;
        s.selectors[IRysk_LP_Module.rysk_redeem.selector] = t;
        s.selectors[IRysk_LP_Module.rysk_initiateWithdraw.selector] = t;
        s.selectors[IRysk_LP_Module.rysk_completeWithdraw.selector] = t;
        t = targets[23];
        s.selectors[IRysk_Options_Module.rysk_executeOrder.selector] = t;
        s.selectors[IRysk_Options_Module.rysk_executeBuyBackOrder.selector] = t;
        s.selectors[IRysk_Options_Module.rysk_executeStrangle.selector] = t;
        t = targets[24];
        s.selectors[IWETH_Module.weth_deposit.selector] = t;
        s.selectors[IWETH_Module.weth_withdraw.selector] = t;
        t = targets[25];
        s.selectors[IRodeo_Module.rodeo_mint.selector] = t;
        s.selectors[IRodeo_Module.rodeo_edit.selector] = t;
        s.selectors[IRodeo_Module.rodeo_burn.selector] = t;
        t = targets[26];
        s.selectors[IGMXV2_Module.gmxv2_create.selector] = t;
        s.selectors[IGMXV2_Module.gmxv2_update.selector] = t;
        s.selectors[IGMXV2_Module.gmxv2_cancel.selector] = t;
        s.selectors[IGMXV2_Module.gmxv2_claimFees.selector] = t;
        t = targets[27];
        s.selectors[IDolomite_Module.dolomite_depositWei.selector] = t;
        s.selectors[IDolomite_Module.dolomite_depositETH.selector] = t;
        s.selectors[IDolomite_Module.dolomite_depositWeiIntoDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_depositETHIntoDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawWei.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawETH.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawWeiFromDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawETHFromDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_depositPar.selector] = t;
        s.selectors[IDolomite_Module.dolomite_depositParIntoDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawPar.selector] = t;
        s.selectors[IDolomite_Module.dolomite_withdrawParFromDefaultAccount.selector] = t;
        s.selectors[IDolomite_Module.dolomite_openBorrowPosition.selector] = t;
        s.selectors[IDolomite_Module.dolomite_closeBorrowPosition.selector] = t;
        s.selectors[IDolomite_Module.dolomite_transferBetweenAccounts.selector] = t;
        s.selectors[IDolomite_Module.dolomite_repayAllForBorrowPosition.selector] = t;
        s.selectors[IDolomite_Module.dolomite_openBorrowPositionWithDifferentAccounts.selector] = t;
        s.selectors[IDolomite_Module.dolomite_closeBorrowPositionWithDifferentAccounts.selector] = t;
        s.selectors[IDolomite_Module.dolomite_transferBetweenAccountsWithDifferentAccounts.selector] = t;
        s.selectors[IDolomite_Module.dolomite_repayAllForBorrowPositionWithDifferentAccounts.selector] = t;
    }

    function initialize(address target, bytes memory data) internal {
        (bool success,) = target.delegatecall(data);
        if (!success) {
            assembly {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }
    }

    fallback() external payable {
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }
        address target = s.selectors[msg.sig];
        if (target == address(0)) {
            revert("unknown signature");
        }
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), target, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    receive() external payable {}
}
