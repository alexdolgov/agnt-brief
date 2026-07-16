// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface ITeller2 {
    function buy(uint256 _amount) external returns (uint256 amount);
    function buyFor(uint256 _amount, address _recipient) external returns (uint256 amount);
    function buyWithPermit(
        address _from,
        uint256 _amount,
        address _recipient,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external returns (uint256);
    function sell(uint256 _amount) external returns (uint256);
    function sellFor(uint256 _amount, address _recipient) external returns (uint256);
}
