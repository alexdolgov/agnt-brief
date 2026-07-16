// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./Longship.sol";
import "./libraries/InvariantCalcs.sol";

contract LongshipFrontendUtils {

    using SafeCast for uint256;

    address PARENT;

    constructor(address theParent) { 
        PARENT = theParent;
    }

    function getInvariantsForProspectiveLong(address longship_market, uint128 liq_price, uint128 leverage, uint128 collateral, address holder) public view returns (uint256, uint256) {
        InvariantCalcs.invLongStruct memory requested_long = InvariantCalcs.invLongStruct(liq_price, leverage, collateral, 0, holder);

        return _getInvariantsForProspectiveLong(requested_long, longship_market);

    }

    function _getInvariantsForProspectiveLong(InvariantCalcs.invLongStruct memory requested_long, address longship_market) public view returns (uint256, uint256) {
        Longship market = Longship(longship_market);
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsLong(LongshipGlobal(PARENT).getMinLongFeeBps().toUint128(), market.getQuadraturePrices(), requested_long, market.getPayouts(market.getQuadraturePrices()), market.getWeights(), IERC20(market.underlying()).balanceOf(longship_market), market.repos_owed(), market.ONE_IN_TOKEN_DECIMALS());

        return (irs.invariant_before, irs.invariant_after);

    }

    function getInvariantsForProspectiveRepo(address longship_market, uint256 quantity, uint256 price) public view returns (uint256, uint256){
        Longship market = Longship(longship_market);
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsRepo(quantity, price, market.getPayouts(market.getQuadraturePrices()), market.getWeights(), market.getQuadraturePrices(), IERC20(market.underlying()).balanceOf(longship_market), market.repos_owed(), market.ONE_IN_TOKEN_DECIMALS());
        return (irs.invariant_before, irs.invariant_after);
    }

}