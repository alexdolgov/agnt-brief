// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

interface IERC20 {

    function transfer(
        address _recipient,
        uint256 _amount
    )
        external
        returns (bool);

    function transferFrom(
        address _sender,
        address _recipient,
        uint256 _amount
    )
        external
        returns (bool);

    function balanceOf(
        address _account
    )
        external
        view
        returns (uint256);
}