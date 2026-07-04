// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IBridgeMintBSC {

    event WithdrawOwner(address indexed account, uint amount);
    event Withdraw(address indexed account, uint mintedAmount, uint totalAmount);

    function token() external view returns (address);
    function registry() external view returns (address);
    function lastTotalBurned(address) external view returns (uint);

    function withdrawOwner() external;
    function withdraw(uint _totalBurned, bytes calldata _signature) external;
}