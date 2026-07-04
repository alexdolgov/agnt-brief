// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../superToken/lendingSwitchToken/lendingSwitchErc20.sol";
import "../modules/debugger.sol";
// Debug version contract.
//
// This contract is used for debugging lendingSwitchErc20. Please see lendingSwitchErc20.
contract lendingSwitchErc20Debug is lendingSwitchErc20,debugger {
    constructor(address multiSignature,address origin0,address origin1,address _aavaToken,address _qiToken,
    address payable _swapHelper,address payable _feePool,address leverageFactory)
        lendingSwitchErc20(multiSignature,origin0,origin1,_aavaToken,_qiToken,_swapHelper,_feePool,0,leverageFactory){

    }
}