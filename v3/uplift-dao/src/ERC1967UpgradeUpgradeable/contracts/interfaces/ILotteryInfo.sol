// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4;

interface ILotteryInfo {
    event SetStakingPowerForOneTicket(address sender, uint stakingPowerForOneTicket);

    function registry() external view returns(address);
    function stakingPowerForOneTicket() external view returns(uint);
    function setStakingPowerForOneTicket(uint _stakingPowerForOneTicket) external;
    function lotteryTicketsForPower(uint _stakingPower) external view returns (uint);
}