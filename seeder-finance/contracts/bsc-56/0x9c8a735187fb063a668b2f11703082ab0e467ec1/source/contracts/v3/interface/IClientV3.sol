// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "../../v2/interface/IClientV2.sol";

interface IClientV3 {
    function onWithdrawSeedmonsReceived(uint256 requestId, uint256[] memory tokenIds, uint256[] memory exps, bool isSuccess) external;
    function onWithdrawSeedReceived(uint256 requestId, uint256 tokenBalance, bool isSuccess) external returns (bool isCompleted);
    function onCancelWithdrawSeedReceived(uint256 requestId) external payable;
    function onCancelWithdrawSeedmonReceived(uint256 requestId) external payable;
}
