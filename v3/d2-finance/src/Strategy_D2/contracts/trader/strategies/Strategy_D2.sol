// SPDX-License-Identifier: AGPL
pragma solidity ^0.8.19;

import "../diamonds/StrategyDiamond.sol";
import "../trader/ITraderV0.sol";
import "../trader/TraderV0_Cutter.sol";
import "../modules/camelot/lp/Camelot_LP_Cutter.sol";
import "../modules/camelot/nftpool/Camelot_NFTPool_Cutter.sol";
import "../modules/camelot/nitropool/Camelot_NitroPool_Cutter.sol";
import "../modules/camelot/swap/Camelot_Swap_Cutter.sol";
import "../modules/camelot/v3LP/Camelot_V3LP_Cutter.sol";
import "../modules/camelot/v3Swap/Camelot_V3Swap_Cutter.sol";
import "../modules/camelot/storage/Camelot_Storage_Cutter.sol";
import "../modules/inch/swap/Inch_Swap_Cutter.sol";
import "../modules/inch/limitorder/Inch_LimitOrder_Cutter.sol";
import "../modules/WETH.sol";

contract Strategy_D2 is
    StrategyDiamond,
    TraderV0_Cutter,
    Camelot_LP_Cutter,
    Camelot_NFTPool_Cutter,
    Camelot_NitroPool_Cutter,
    Camelot_Swap_Cutter,
    Camelot_V3LP_Cutter,
    Camelot_V3Swap_Cutter,
    Camelot_Storage_Cutter,
    Inch_Swap_Cutter,
    Inch_LimitOrder_Cutter,
    WETH_Cutter
{
    constructor(
        address _admin,
        address _traderFacet,
        TraderV0InitializerParams memory _traderV0Params,
        address[] memory _facets,
        address[] memory _assets,
        address[] memory _oracles
    ) StrategyDiamond(_admin) {
        cut_TraderV0(_traderFacet, _traderV0Params);
        cut_Camelot_LP(_facets[0]);
        cut_Camelot_NFTPool(_facets[1]);
        cut_Camelot_NitroPool(_facets[2]);
        cut_Camelot_Swap(_facets[3]);
        cut_Camelot_V3LP(_facets[4]);
        cut_Camelot_V3Swap(_facets[5]);
        cut_Camelot_Storage(_facets[6]);
        cut_Inch_Swap(_facets[7]);
        cut_Inch_LimitOrder(_facets[8], _assets, _oracles);
        cut_WETH(_facets[9]);
    }
}
