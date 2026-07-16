// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IYbGaugeController {
    function vote_for_gauge_weights(address[] calldata, uint256[] calldata) external;
    function vote_user_slopes(address,address) external view returns(uint256,uint256,uint256,uint256);
}
