// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "./baseleverageFactory.sol";
import "../leveragePool/leveragePool.sol";

contract leverageFactory is baseleverageFactory {
    /**
     * @dev constructor.
     */
    constructor (address multiSignature,address origin0,address origin1,address payable _feeAddress,address _oracle) 
        baseleverageFactory(multiSignature,origin0,origin1,_feeAddress,_oracle,type(leveragePool).creationCode) {
    }
}