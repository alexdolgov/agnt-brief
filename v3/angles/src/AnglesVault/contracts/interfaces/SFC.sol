// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface SFC {
    function delegate(uint256 toValidatorID) external payable;
    function pendingRewards(address, uint256) external view returns(uint256);
    function claimRewards(uint256) external;
    function getStake(address, uint256) external view returns(uint256);
    function restakeRewards(uint256 toValidatorID) external;
    function isSlashed(uint256 validatorID) external view returns (bool);
    function undelegate(uint256 toValidatorID, uint256 wrID, uint256 amount) external;
    function withdraw(uint256 toValidatorID, uint256 wrID) external;
    function slashingRefundRatio(uint256 validatorID) external view returns (uint256);
    function getValidator(uint256 validatorId) external view returns (
        uint256 status,
        uint256 receivedStake,
        address auth,
        uint256 createdEpoch,
        uint256 createdTime,
        uint256 deactivatedTime,
        uint256 deactivatedEpoch

    );
}