// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "../../v2/interface/IOracleV2.sol";

interface IOracleV3 is IOracleV2 {
    function requestWithdrawSeedmons(uint256 requestId, uint256[] memory tokenIds, address withdrawer) external payable;
    function requestWithdrawSeed(uint256 requestId, uint256 requestAmount, address withdrawer) external payable;
    function cancelWithdrawSeed(uint256 requestId) external;
    function cancelWithdrawSeedmon(uint256 requestId) external;
}
