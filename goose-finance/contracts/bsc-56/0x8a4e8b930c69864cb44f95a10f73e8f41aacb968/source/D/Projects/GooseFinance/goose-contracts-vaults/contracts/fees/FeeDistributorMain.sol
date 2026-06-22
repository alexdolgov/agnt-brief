// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import "./FeeDistributor.sol";

contract FeeDistributorMain is FeeDistributor {
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
        buybackShareBP = 120;
        bondsProfitShareBP = 30;
        eggProfitShareBP = 50;
        treasuryProfitShareBP = 50;
        platformShareBP = 50;
    }
}
