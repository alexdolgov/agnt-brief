// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

library InvariantCalcs {

    uint256 constant ONE_IN_QUAD_DECIMALS = 10**16;
    uint128 constant CHOMP_DENOM = 10;
    uint128 constant LONG_FEE_DENOM = 10**8;
    uint256 constant USD_UTILITY_WEIGHT = 25;
    uint256 constant UTILITY_WEIGHT_DENOM = 100;

    struct invariantReturnStruct{
        bool bankrupt_bool;
        uint32 first_node; 
        uint256 invariant_before; 
        uint256 invariant_after;
    }

    struct invLongStruct {
        uint128 liq_price;
        uint128 leverage;
        uint128 collateral;
        uint64 expiry;
        address holder;
    }

    //gets the invariant given price and state data
    function getInvariant(uint256[] memory prices, uint256[] memory payouts, uint256[] memory weights, uint256 _balance, uint256 repos_owed, uint256 ONE_IN_TOKEN_DECIMALS) external pure returns (invariantReturnStruct memory) {
        uint256[] memory wealth = new uint256[](prices.length);

        for (uint32 i = 0; i < prices.length; i++) {
            uint256 pos_wealth = _balance*prices[i]/ONE_IN_TOKEN_DECIMALS;
            uint256 neg_wealth = payouts[i] + repos_owed;
            if (neg_wealth > pos_wealth){
                return invariantReturnStruct(true, i, 0, 0);
            }
            wealth[i] = pos_wealth - neg_wealth;
        }

        return invariantReturnStruct(false, 0, invariantFromWealth(wealth, weights, prices), 0);
    }

    //gets the invariant given price and state data starting from the highest quadrature node
    function getInvariantReverse(uint256[] memory prices, uint256[] memory payouts, uint256[] memory weights, uint256 _balance, uint256 repos_owed, uint256 ONE_IN_TOKEN_DECIMALS) public pure returns (invariantReturnStruct memory) {
        uint256[] memory wealth = new uint256[](prices.length);

        for (uint32 i = uint32(prices.length); i > 0; i--) {
            uint256 pos_wealth = _balance*prices[i-1]/ONE_IN_TOKEN_DECIMALS;
            uint256 neg_wealth = payouts[i-1] + repos_owed;
            if (neg_wealth > pos_wealth){
                return invariantReturnStruct(true, i-1, 0, 0);
            }
            wealth[i] = pos_wealth - neg_wealth;
        }

        return invariantReturnStruct(false, 0, invariantFromWealth(wealth, weights, prices), 0);
    }

    //version of getInvariant for evaluating potential liquidity provision
    function getInvariantsLP(uint256 lpToAdd, uint256 lpToRemove, uint256[] memory prices, uint256[] memory payouts, uint256[] memory weights, uint256 _balance, uint256 repos_owed, uint256 ONE_IN_TOKEN_DECIMALS) external pure returns (invariantReturnStruct memory) {
        uint256[] memory wealth = new uint256[](prices.length);

        uint256[] memory counterfactual_wealth = new uint256[](prices.length);
        

        for (uint32 i = 0; i < prices.length; i++) {
            {
                uint256 pos_wealth = _balance*prices[i]/ONE_IN_TOKEN_DECIMALS;
                uint256 neg_wealth = payouts[i] + repos_owed;
                if (neg_wealth > pos_wealth){
                    return invariantReturnStruct(true, i, 0, 0);
                }
                wealth[i] = pos_wealth - neg_wealth;
            }
            uint256 plusWealth = lpToAdd*prices[i]/ONE_IN_TOKEN_DECIMALS;
            uint256 minusWealth = lpToRemove*prices[i]/ONE_IN_TOKEN_DECIMALS;
            if(minusWealth > (wealth[i] + plusWealth)){
                revert("Withdrawal makes bankrupt");
            }

            counterfactual_wealth[i] = wealth[i] + plusWealth - minusWealth;
        }

        return invariantReturnStruct(false, 0, invariantFromWealth(wealth, weights, prices), invariantFromWealth(counterfactual_wealth, weights, prices));
    }

    //payout from a long at given price
    function payoutFromLong(uint128 liq_price, uint128 total_margin, uint128 chomp_payout, uint256 price, uint256 ONE_IN_TOKEN_DECIMALS) public pure returns(uint256){
        uint256 payout = 0;
        payout += chomp_payout*price/ONE_IN_TOKEN_DECIMALS;
        if (uint256(liq_price) < price){
            payout += ((price - uint256(liq_price))*total_margin)/(ONE_IN_TOKEN_DECIMALS);
        }
        return payout;
    }

    //version of getInvariant for evaluating potential long opening
    function getInvariantsLong(uint128 longFeeBps, uint256[] memory prices, invLongStruct memory requested_long, uint256[] memory payouts, uint256[] memory weights, uint256 _balance, uint256 repos_owed, uint256 ONE_IN_TOKEN_DECIMALS) public pure
    returns (invariantReturnStruct memory) {
        uint256[] memory wealth = new uint256[](prices.length);
        uint256[] memory counterfactual_wealth = new uint256[](prices.length);

        requested_long.liq_price = (requested_long.liq_price*(LONG_FEE_DENOM - longFeeBps))/(LONG_FEE_DENOM);

        for (uint32 i = uint32(prices.length); i > 0; i--) {
            {
                uint256 pos_wealth = _balance*prices[i-1]/ONE_IN_TOKEN_DECIMALS;
                uint256 neg_wealth = payouts[i-1] + repos_owed;
                if (neg_wealth > pos_wealth){
                    return invariantReturnStruct(true, i-1, 0, 0);
                }
                wealth[i-1] = pos_wealth - neg_wealth;
            }
            
            uint256 _long_payout = payoutFromLong(requested_long.liq_price, (requested_long.leverage*requested_long.collateral - requested_long.collateral/CHOMP_DENOM), requested_long.collateral/CHOMP_DENOM, prices[i-1], ONE_IN_TOKEN_DECIMALS);
            if(_long_payout > (wealth[i-1] + requested_long.collateral*prices[i-1]/ONE_IN_TOKEN_DECIMALS)){
                revert("Long makes bankrupt");
            }
            counterfactual_wealth[i-1] = wealth[i-1] + requested_long.collateral*prices[i-1]/ONE_IN_TOKEN_DECIMALS - _long_payout;
        }

        return invariantReturnStruct(false, 0, invariantFromWealth(wealth, weights, prices), invariantFromWealth(counterfactual_wealth, weights, prices));
    }

    //version of getInvariant for evaluating potential repo trade
    function getInvariantsRepo(uint256 quantity, uint256 repo_price, uint256[] memory payouts, uint256[] memory weights, uint256[] memory prices, uint256 _balance, uint256 repos_owed, uint256 ONE_IN_TOKEN_DECIMALS) external pure 
    returns (invariantReturnStruct memory) {
        uint256[] memory wealth = new uint256[](prices.length);


        uint256[] memory counterfactual_wealth = new uint256[](prices.length);
        uint256 repo_payout = quantity*repo_price/ONE_IN_TOKEN_DECIMALS;
        
        for (uint32 i = 0; i < prices.length; i++) {
            {
            uint256 pos_wealth = _balance*prices[i]/ONE_IN_TOKEN_DECIMALS;
            uint256 neg_wealth = payouts[i] + repos_owed;
            if (neg_wealth > pos_wealth){
                return invariantReturnStruct(true, i, 0, 0);
            }
            wealth[i] = pos_wealth - neg_wealth;
            }
            if(repo_payout > (wealth[i] + quantity*prices[i]/ONE_IN_TOKEN_DECIMALS)){
                revert("Proposed repo would make system bankrupt at one or more quadrature nodes");
            }

            counterfactual_wealth[i] = wealth[i] + quantity*prices[i]/ONE_IN_TOKEN_DECIMALS - repo_payout;
        }

        return invariantReturnStruct(false, 0, invariantFromWealth(wealth, weights, prices), invariantFromWealth(counterfactual_wealth, weights, prices));
    }

    function invariantFromWealth(uint256[] memory wealth, uint256[] memory weights, uint256[] memory prices) internal pure returns (uint256) {
        //assume wealth at 8 decimal point resolution (chainlink)
        //reciprocal calc done with 1 = 1*10^28, so 20 additional OOM
        uint256 _one = 1*10**28;
        uint256 usd_utility;
        uint256 underlying_utility;
        uint256 oracle_price = (prices[7] + prices[8])/2;

        for (uint i = 0; i < wealth.length; i++) {
            //weights at 16 decimals, will be resolved when invariant is set below
            uint256 the_weight_times_one = (weights[i]*_one);
            usd_utility += the_weight_times_one/wealth[i];
            underlying_utility += ((the_weight_times_one*prices[i])/wealth[i])/oracle_price;
        }
        
        return ((_one*ONE_IN_QUAD_DECIMALS*USD_UTILITY_WEIGHT)/usd_utility)/UTILITY_WEIGHT_DENOM +
        ((_one*ONE_IN_QUAD_DECIMALS*(UTILITY_WEIGHT_DENOM - USD_UTILITY_WEIGHT))/underlying_utility)/UTILITY_WEIGHT_DENOM;
    }

}
