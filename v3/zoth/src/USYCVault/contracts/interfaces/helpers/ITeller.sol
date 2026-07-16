// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface ITeller {
    function buy(uint256 _amount) external returns (uint256);

    function buyFor(uint256 _amount, address _recipient) external returns (uint256);

    function sellFor(uint256 _amount, address _recipient) external returns (uint256);

    function buyPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);

    function sellPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);
}
