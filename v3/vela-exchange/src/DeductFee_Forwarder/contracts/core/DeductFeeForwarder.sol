//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;
pragma abicoder v2;

interface ISettingsManager{
    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external ;
}

ISettingsManager constant SettingsManager = ISettingsManager(0xe8aeE3EeAdeCF8Ee0150B2368d40a076BF36624a); //mainnet
contract DeductFee_Forwarder{
    address operator;
    constructor(){
        operator = msg.sender;
    }
    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external{
        require(msg.sender == operator, "onlyOwner");
        SettingsManager.setDeductFeePercentForUser(_account, _deductFee);
    }
}