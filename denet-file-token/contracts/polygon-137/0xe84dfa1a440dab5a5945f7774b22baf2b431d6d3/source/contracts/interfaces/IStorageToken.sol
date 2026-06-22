// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.0;


interface IStorageToken {

    // function balanceOf (address _user) external view returns (uint256);
    // function transfer(address recipient, uint256 amount) external returns (bool);
    // function approve(address spender, uint256 amount) external returns (bool);
    
    // useful getters
    function currentFeeLimit() external view returns (uint);
    function currentPayoutFee() external view returns (uint16);
    function currentPayinFee() external view returns (uint16);
    function currentMintPercent() external view returns (uint16);
    function currentUnburnPercent() external view returns (uint16);
    function currentDivFee() external view returns (uint16);
    
    // change interface
    function changeFeeLimit(uint _new) external;
    function changePayoutFee(uint16 _new) external;
    function changePayinFee(uint16 _new) external;
    function changeMintPercent(uint16 _new) external;
    function changeUnburnPercent(uint16 _new) external;
    
}