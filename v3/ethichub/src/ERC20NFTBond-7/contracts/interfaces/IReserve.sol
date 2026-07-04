// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

interface IReserve {
    event Transfer(address indexed to, uint256 amount);
    event RescueFunds(address token, address indexed to, uint256 amount);

    function balance() external view returns (uint256);

    function transfer(address _to, uint256 _value) external returns (bool);

    function rescueFunds(
        address _tokenToRescue,
        address _to,
        uint256 _amount
    ) external;
}
