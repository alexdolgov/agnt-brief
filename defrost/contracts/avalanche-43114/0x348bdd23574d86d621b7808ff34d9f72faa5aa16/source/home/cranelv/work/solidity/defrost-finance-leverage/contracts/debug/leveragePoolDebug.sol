// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../leveragePool/leveragePool.sol";
import "../modules/debugger.sol";
// Debug version contract.
//
// This contract is used for debugging leveragePool. Please see leveragePool.
contract leveragePoolDebug is leveragePool,debugger {
    // Define the qiToken token contract
    constructor(address multiSignature,address origin0,address origin1,
        address payable _feeAddress,address _lendingPool,address _underlying,
        address oracle,address _swapHelper,
        uint256 _collateralRate,uint256 _liquidationPenalty,uint256 _liquidationReward)
        leveragePool(multiSignature,origin0,origin1,_feeAddress,_lendingPool,_underlying,
        oracle,_swapHelper,_collateralRate,_liquidationPenalty,_liquidationReward){

    }
}