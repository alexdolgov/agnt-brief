// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import "./FeeDistributorV2.sol";

contract FeeDistributorV2Gusd is FeeDistributorV2 {
    constructor(
        address _bondsReceiver,
        address _eggReceiver,
        address _treasuryReceiver,
        address _feeHolder
    ) public FeeDistributorV2(
        _bondsReceiver,
        _eggReceiver,
        _treasuryReceiver,
        _feeHolder
    ){
        buybackShareBP = 0;
        bondsProfitShareBP = 1000;
        eggProfitShareBP = 0;
        treasuryProfitShareBP = 1000;
        platformShareBP = 1000;
    }
}
