//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

interface IThenaGaugeV2 {
    function deposit(uint256 amount) external;

    function withdrawAll() external;

    function withdraw(uint256 amount) external;

    function balanceOf(address account) external view returns (uint256);

    function getReward(address account) external;
}
