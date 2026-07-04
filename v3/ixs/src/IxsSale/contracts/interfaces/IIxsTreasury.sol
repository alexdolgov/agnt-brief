// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IIxsTreasury {
    event Withdraw(address token, address to, uint256 amount);

    function withdrawETH(address _to, uint256 _amount) external;

    function withdraw(
        address _token,
        address _to,
        uint256 _amount
    ) external;
}
