// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import "./FeeDistributor.sol";

contract FeeDistributorSC is FeeDistributor {
    constructor(
        address _bondsReceiver,
        address _eggReceiver,
        address _treasuryReceiver,
        address _feeHolder
    ) public FeeDistributor(
        _bondsReceiver,
        _eggReceiver,
        _treasuryReceiver,
        _feeHolder
    ){
        buybackShareBP = 0;
        bondsProfitShareBP = 1000;
        eggProfitShareBP = 0;
        treasuryProfitShareBP = 2000;
        platformShareBP = 1000;
    }
}
