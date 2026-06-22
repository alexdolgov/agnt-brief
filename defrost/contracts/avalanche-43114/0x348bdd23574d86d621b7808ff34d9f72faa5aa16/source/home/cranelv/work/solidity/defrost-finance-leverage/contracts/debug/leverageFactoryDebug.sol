// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../leverageFactory/baseleverageFactory.sol";
import "../modules/debugger.sol";
import "./leveragePoolDebug.sol";
// Debug version contract.
//
// This contract is used for debugging leverageFactory. Please see leverageFactory.
contract leverageFactoryDebug is baseleverageFactory {
    /**
     * @dev constructor.
     */
    constructor (address multiSignature,address origin0,address origin1,address payable _feeAddress,address _oracle) 
        baseleverageFactory(multiSignature,origin0,origin1,_feeAddress,_oracle,type(leveragePoolDebug).creationCode) {
    }
}