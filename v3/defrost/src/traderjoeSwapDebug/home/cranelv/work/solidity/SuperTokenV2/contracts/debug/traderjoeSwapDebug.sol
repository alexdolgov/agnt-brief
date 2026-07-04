// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../swapHelper/traderjoeSwap.sol";
import "../modules/debugger.sol";
// Debug version contract.
//
// This contract is used for debugging traderjoeSwap. Please see traderjoeSwap.
contract traderjoeSwapDebug is traderjoeSwap,debugger {
    constructor(address multiSignature,address origin0,address origin1,address _swapRouter,address _oracle)
        traderjoeSwap(multiSignature,origin0,origin1,_swapRouter,_oracle){

    }
}