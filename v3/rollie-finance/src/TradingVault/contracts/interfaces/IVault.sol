// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

interface IVault {
    function distributeReward(uint _amount, bool _send) external;
    function currentBalance() external view returns (uint);
    function sendToTrader(address _trader, uint _amount) external;
    function receiveFromTrader(address _trader, uint _amount, uint _vaultFee, bool _send) external;
}
