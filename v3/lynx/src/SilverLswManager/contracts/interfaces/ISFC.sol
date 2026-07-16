// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ISFC {
    error StakeIsFullySlashed();

	function createValidator(bytes calldata pubkey) external payable;

	function getValidatorID(address auth) external view returns (uint256);

    function currentEpoch() external view returns (uint256);

    function getStake(address, uint256) external view returns (uint256);

    function delegate(uint256 toValidatorID) external payable;

    function undelegate(uint256 toValidatorID, uint256 wrID, uint256 amount) external;

    function withdraw(uint256 toValidatorID, uint256 wrID) external;

    function pendingRewards(address delegator, uint256 toValidatorID) external view returns (uint256);

    function claimRewards(uint256 toValidatorID) external;

    function getSelfStake(uint256 validatorID) external view returns (uint256);

    function isSlashed(uint256 validatorID) external view returns (bool);

    function slashingRefundRatio(uint256 validatorID) external view returns (uint256);
}