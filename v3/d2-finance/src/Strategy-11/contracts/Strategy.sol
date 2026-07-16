// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { AccessControl } from "@solidstate/contracts/access/access_control/AccessControl.sol";
import { ITraderV0, TraderV0InitializerParams } from "./modules/Trader.sol";
import { ID2_Module } from "./modules/D2.sol";
import { IWETH_Module } from "./modules/WETH.sol";
import { IInch_Module } from "./modules/Inch.sol";
import { IAave_Module } from "./modules/Aave.sol";
import { IHypurrfi_Module } from "./modules/Hypurrfi.sol";
import { IPendle_Module } from "./modules/Pendle.sol";
import { IGMXV2_Module } from "./modules/GMXV2.sol";
import { IDolomite_Module } from "./modules/Dolomite.sol";
import { ISilo_Module } from "./modules/Silo.sol";
import { ICamelot_LP_Module, ICamelot_NFTPool_Module, ICamelot_NitroPool_Module, ICamelot_Swap_Module, ICamelot_V3LP_Module, ICamelot_V3Swap_Module, ICamelot_Storage_Module } from "./modules/Camelot.sol";
import { IBera_Module } from "./modules/Bera.sol";
import { IHype_Module } from "./modules/Hype.sol";
import { IHyperbeat_Module } from "./modules/Hyperbeat.sol";

contract Strategy is AccessControl {
    struct State {
        bool claimed;
        bool frozen;
        mapping(bytes4 => address) selectors;
    }

    bytes32 internal constant STATE_SLOT = keccak256("strategy");

    constructor(address[] memory targets, address[] memory allowedTokens, address[] memory allowedSpenders) {
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }

        if (block.chainid == 42161) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));

            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
            t = targets[2];
            s.selectors[IWETH_Module.weth_deposit.selector] = t;
            s.selectors[IWETH_Module.weth_withdraw.selector] = t;
            t = targets[3];
            s.selectors[IInch_Module.inch_swap.selector] = t;
            s.selectors[IInch_Module.inch_uniswapV3Swap.selector] = t;
            s.selectors[IInch_Module.inch_clipperSwap.selector] = t;
            t = targets[4];
            s.selectors[IAave_Module.aave_supply.selector] = t;
            s.selectors[IAave_Module.aave_withdraw.selector] = t;
            s.selectors[IAave_Module.aave_borrow.selector] = t;
            s.selectors[IAave_Module.aave_repay.selector] = t;
            s.selectors[IAave_Module.aave_setUserEMode.selector] = t;
            s.selectors[IAave_Module.aave_claimRewards.selector] = t;
            t = targets[5];
            s.selectors[IPendle_Module.pendle_deposit.selector] = t;
            s.selectors[IPendle_Module.pendle_withdraw.selector] = t;
            s.selectors[IPendle_Module.pendle_swap.selector] = t;
            s.selectors[IPendle_Module.pendle_claim.selector] = t;
            s.selectors[IPendle_Module.pendle_exit.selector] = t;
            t = targets[6];
            s.selectors[IGMXV2_Module.gmxv2_create.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_update.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_cancel.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_claimFees.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_deposit.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_withdraw.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_glvDeposit.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_glvCancelDeposit.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_glvWithdraw.selector] = t;
            s.selectors[IGMXV2_Module.gmxv2_glvCancelWithdraw.selector] = t;
            t = targets[7];
            s.selectors[IDolomite_Module.dolomite_depositWei.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositWeiIntoDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawWei.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawWeiFromDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositPar.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositParIntoDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawPar.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawParFromDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_openBorrowPosition.selector] = t;
            s.selectors[IDolomite_Module.dolomite_closeBorrowPosition.selector] = t;
            s.selectors[IDolomite_Module.dolomite_transferBetweenAccounts.selector] = t;
            s.selectors[IDolomite_Module.dolomite_repayAllForBorrowPosition.selector] = t;
            t = targets[8];
            s.selectors[ISilo_Module.silo_deposit.selector] = t;
            s.selectors[ISilo_Module.silo_withdraw.selector] = t;
            s.selectors[ISilo_Module.silo_borrow.selector] = t;
            s.selectors[ISilo_Module.silo_repay.selector] = t;
            s.selectors[ISilo_Module.silo_execute.selector] = t;
            t = targets[9];
            s.selectors[ICamelot_LP_Module.camelot_addLiquidity.selector] = t;
            s.selectors[ICamelot_LP_Module.camelot_addLiquidityETH.selector] = t;
            s.selectors[ICamelot_LP_Module.camelot_removeLiquidity.selector] = t;
            s.selectors[ICamelot_LP_Module.camelot_removeLiquidityETH.selector] = t;
            t = targets[10];
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
            t = targets[11];
            s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_transfer.selector] = t;
            s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_withdraw.selector] = t;
            s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_emergencyWithdraw.selector] = t;
            s.selectors[ICamelot_NitroPool_Module.camelot_nitropool_harvest.selector] = t;
            t = targets[12];
            s.selectors[ICamelot_Swap_Module.camelot_swapExactTokensForTokens.selector] = t;
            s.selectors[ICamelot_Swap_Module.camelot_swapExactETHForTokens.selector] = t;
            s.selectors[ICamelot_Swap_Module.camelot_swapExactTokensForETH.selector] = t;
            t = targets[13];
            s.selectors[ICamelot_V3LP_Module.camelot_v3_mint.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_burn.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_collect.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_increaseLiquidity.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidity.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidityAndCollect.selector] = t;
            s.selectors[ICamelot_V3LP_Module.camelot_v3_decreaseLiquidityCollectAndBurn.selector] = t;
            t = targets[14];
            s.selectors[ICamelot_V3Swap_Module.camelot_v3_swap.selector] = t;
            t = targets[15];
            s.selectors[ICamelot_Storage_Module.manageNFTPools.selector] = t;
            s.selectors[ICamelot_Storage_Module.manageNitroPools.selector] = t;
            s.selectors[ICamelot_Storage_Module.manageExecutors.selector] = t;
            s.selectors[ICamelot_Storage_Module.manageReceivers.selector] = t;
            s.selectors[ICamelot_Storage_Module.getAllowedNFTPools.selector] = t;
            s.selectors[ICamelot_Storage_Module.getAllowedNitroPools.selector] = t;
            s.selectors[ICamelot_Storage_Module.getAllowedExecutors.selector] = t;
            s.selectors[ICamelot_Storage_Module.getAllowedReceivers.selector] = t;
        } else if (block.chainid == 8453) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));
            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
            t = targets[2];
            s.selectors[IWETH_Module.weth_deposit.selector] = t;
            s.selectors[IWETH_Module.weth_withdraw.selector] = t;
            t = targets[3];
            s.selectors[IInch_Module.inch_swap.selector] = t;
            s.selectors[IInch_Module.inch_uniswapV3Swap.selector] = t;
            s.selectors[IInch_Module.inch_clipperSwap.selector] = t;
            t = targets[4];
            s.selectors[IAave_Module.aave_supply.selector] = t;
            s.selectors[IAave_Module.aave_withdraw.selector] = t;
            s.selectors[IAave_Module.aave_borrow.selector] = t;
            s.selectors[IAave_Module.aave_repay.selector] = t;
            s.selectors[IAave_Module.aave_setUserEMode.selector] = t;
            s.selectors[IAave_Module.aave_claimRewards.selector] = t;
            t = targets[5];
            s.selectors[IPendle_Module.pendle_deposit.selector] = t;
            s.selectors[IPendle_Module.pendle_withdraw.selector] = t;
            s.selectors[IPendle_Module.pendle_swap.selector] = t;
            s.selectors[IPendle_Module.pendle_claim.selector] = t;
            s.selectors[IPendle_Module.pendle_exit.selector] = t;
        } else if (block.chainid == 80094) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));
            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
            t = targets[2];
            s.selectors[IWETH_Module.weth_deposit.selector] = t;
            s.selectors[IWETH_Module.weth_withdraw.selector] = t;
            t = targets[3];
            s.selectors[IBera_Module.bera_bgt_redeem.selector] = t;
            s.selectors[IBera_Module.bera_bgt_act.selector] = t;
            s.selectors[IBera_Module.bera_bgt_get_reward.selector] = t;
            s.selectors[IBera_Module.bera_vault_stake.selector] = t;
            s.selectors[IBera_Module.bera_vault_withdraw.selector] = t;
            s.selectors[IBera_Module.bera_vault_get_reward.selector] = t;
            s.selectors[IBera_Module.bera_infrared_stake.selector] = t;
            s.selectors[IBera_Module.bera_infrared_withdraw.selector] = t;
            s.selectors[IBera_Module.bera_infrared_get_reward.selector] = t;
            s.selectors[IBera_Module.bera_oogabooga_swap.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv2_add.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv2_remove.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv2_swap.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_mint.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_increase.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_decrease.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_collect.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_burn.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_swap.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_islands_mint.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_islands_burn.selector] = t;
            s.selectors[IBera_Module.bera_kodiakv3_islands_deploy.selector] = t;
            t = targets[4];
            s.selectors[IDolomite_Module.dolomite_depositWei.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositWeiIntoDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawWei.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawWeiFromDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositPar.selector] = t;
            s.selectors[IDolomite_Module.dolomite_depositParIntoDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawPar.selector] = t;
            s.selectors[IDolomite_Module.dolomite_withdrawParFromDefaultAccount.selector] = t;
            s.selectors[IDolomite_Module.dolomite_openBorrowPosition.selector] = t;
            s.selectors[IDolomite_Module.dolomite_closeBorrowPosition.selector] = t;
            s.selectors[IDolomite_Module.dolomite_transferBetweenAccounts.selector] = t;
            s.selectors[IDolomite_Module.dolomite_repayAllForBorrowPosition.selector] = t;
        } else if (block.chainid == 1) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));
            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
            t = targets[2];
            s.selectors[IWETH_Module.weth_deposit.selector] = t;
            s.selectors[IWETH_Module.weth_withdraw.selector] = t;
            t = targets[3];
            s.selectors[IInch_Module.inch_swap.selector] = t;
            s.selectors[IInch_Module.inch_uniswapV3Swap.selector] = t;
            s.selectors[IInch_Module.inch_clipperSwap.selector] = t;
            t = targets[4];
            s.selectors[IAave_Module.aave_supply.selector] = t;
            s.selectors[IAave_Module.aave_withdraw.selector] = t;
            s.selectors[IAave_Module.aave_borrow.selector] = t;
            s.selectors[IAave_Module.aave_repay.selector] = t;
            s.selectors[IAave_Module.aave_setUserEMode.selector] = t;
            s.selectors[IAave_Module.aave_claimRewards.selector] = t;
            t = targets[5];
            s.selectors[IPendle_Module.pendle_deposit.selector] = t;
            s.selectors[IPendle_Module.pendle_withdraw.selector] = t;
            s.selectors[IPendle_Module.pendle_swap.selector] = t;
            s.selectors[IPendle_Module.pendle_claim.selector] = t;
            s.selectors[IPendle_Module.pendle_exit.selector] = t;
        } else if (block.chainid == 999 || block.chainid == 998) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));
            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
            t = targets[2];
            s.selectors[IHype_Module.hyper_sendOrder.selector] = t;
            s.selectors[IHype_Module.hyper_cancelOrderOid.selector] = t;
            s.selectors[IHype_Module.hyper_cancelOrderCloid.selector] = t;
            s.selectors[IHype_Module.hyper_depositSpot.selector] = t;
            s.selectors[IHype_Module.hyper_sendSpot.selector] = t;
            s.selectors[IHype_Module.hyper_sendUsdClassTransfer.selector] = t;
            s.selectors[IHype_Module.hyper_addApiWallet.selector] = t;
            t = targets[3];
            s.selectors[IHyperbeat_Module.hyperbeat_deposit.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_withdraw.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_depositInstant.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_depositRequest.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_redeemInstant.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_redeemRequest.selector] = t;
            s.selectors[IHyperbeat_Module.hyperbeat_redeemFiatRequest.selector] = t;
            t = targets[4];
            s.selectors[IBera_Module.bera_oogabooga_swap.selector] = t;
            t = targets[5];
            s.selectors[IPendle_Module.pendle_deposit.selector] = t;
            s.selectors[IPendle_Module.pendle_withdraw.selector] = t;
            s.selectors[IPendle_Module.pendle_swap.selector] = t;
            s.selectors[IPendle_Module.pendle_claim.selector] = t;
            s.selectors[IPendle_Module.pendle_exit.selector] = t;
            t = targets[6];
            s.selectors[IHypurrfi_Module.hypurrfi_supply.selector] = t;
            s.selectors[IHypurrfi_Module.hypurrfi_withdraw.selector] = t;
            s.selectors[IHypurrfi_Module.hypurrfi_borrow.selector] = t;
            s.selectors[IHypurrfi_Module.hypurrfi_repay.selector] = t;
            s.selectors[IHypurrfi_Module.hypurrfi_setUserEMode.selector] = t;
        } else if (block.chainid == 1116) {
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
            initialize(t, abi.encodeWithSelector(ITraderV0.initializeTraderV0.selector, TraderV0InitializerParams({
                _name: "",
                _allowedTokens: allowedTokens,
                _allowedSpenders: allowedSpenders,
                _initialPerformanceFeeRate: 0.2e18,
                _initialManagementFeeRate: 0.02e18
            })));
            t = targets[1];
            s.selectors[ID2_Module.d2_deposit.selector] = t;
            s.selectors[ID2_Module.d2_withdraw.selector] = t;
        }
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

    function setFrozen() public onlyRole(0x00) {
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }
        s.frozen = true;
    }

    function setSelector(bytes4 selector, address target) public onlyRole(0x00) {
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }
        require(!s.frozen, "frozen");
        s.selectors[selector] = target;
    }

    function claim() public {
        State storage s;
        bytes32 slot = STATE_SLOT;
        assembly { s.slot := slot }
        require(!s.claimed, "claimed");
        s.claimed = true;
        _grantRole(0x00, msg.sender);
        _grantRole(keccak256("EXECUTOR_ROLE"), msg.sender);
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
