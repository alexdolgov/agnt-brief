// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


interface IFeeEscrowRegistry {
    
    function feeEscrows() external view returns (address[] memory feeEscrows_);

    function addFeeEscrow(address _feeEscrow) external;

    function removeFeeEscrow(address _feeEscrow) external;

}