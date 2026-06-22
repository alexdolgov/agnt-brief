// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IDolomiteMargin} from "../interfaces/dolomite/IDolomiteMargin.sol";
import {DolomiteMarginMath} from "./DolomiteMarginMath.sol";
import {InterestIndexLib} from "./InterestIndexLib.sol";

contract CustomDolomiteGetter {
    IDolomiteMargin public immutable DOLOMITE_MARGIN;

    constructor(address dolomiteMargin_) {
        DOLOMITE_MARGIN = IDolomiteMargin(dolomiteMargin_);
    }

    function getTotalSupplyWei(address token) public view returns (uint256) {
        uint256 marketId = DOLOMITE_MARGIN.getMarketIdByTokenAddress(token);

        IDolomiteMargin.TotalPar memory totalPar = DOLOMITE_MARGIN
            .getMarketTotalPar(marketId);

        if (totalPar.supply == 0) {
            return 0;
        }

        IDolomiteMargin.InterestIndex memory index = DOLOMITE_MARGIN
            .getMarketCurrentIndex(marketId);
        uint256 totalSupplyWei = InterestIndexLib
            .parToWei(
                IDolomiteMargin.Par({sign: true, value: totalPar.supply}),
                index
            )
            .value;
        return totalSupplyWei;
    }

    function getTotalBorrowWei(address token) public view returns (uint256) {
        uint256 marketId = DOLOMITE_MARGIN.getMarketIdByTokenAddress(token);

        IDolomiteMargin.TotalPar memory totalPar = DOLOMITE_MARGIN
            .getMarketTotalPar(marketId);

        if (totalPar.supply == 0) {
            return 0;
        }

        IDolomiteMargin.InterestIndex memory index = DOLOMITE_MARGIN
            .getMarketCurrentIndex(marketId);
        uint256 totalBorrowWei = InterestIndexLib
            .parToWei(
                IDolomiteMargin.Par({sign: false, value: totalPar.borrow}),
                index
            )
            .value;
        return totalBorrowWei;
    }
}
