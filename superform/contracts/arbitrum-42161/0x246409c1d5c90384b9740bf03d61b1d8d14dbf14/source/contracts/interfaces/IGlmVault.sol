// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmVault {
    struct ManagementFeeInfo {
        uint256 managementFeeBpsFor1Year; //in bps
        uint256 lastManagementFeeTimestamp;
        uint256 managementFeeInterval; //in seconds
    }
    event AdjustPendingExecutionAmount(uint256 amount, bool isIncrease);

    event TransferToGlmRouter(address token, uint256 amount);

    event TransferGmToRouter(address token, uint256 amount, address user);

    event TransferGm(address token, uint256 amount, address toAddress);

    event KeeperManagementFeeClaimed(address gmToken, uint256 gmAmount, uint256 claimTimestamp);

    event SetManagementFeeInfo(uint256 managementFeeBpsFor1Year, uint256 lastManagementFeeTimestamp, uint256 managementFeeInterval);

    event SetGlmRoles(address glmKeeper, address glmFeeReceiver);

    event GmTokenSwap(
        address indexed user,
        address inputGmToken,
        address outputGmToken,
        uint256 inputGmAmount,
        uint256 outputGmAmount,
        uint256 inputGmTokenPrice,
        uint256 outputGmTokenPrice,
        uint256 feeInGm
    );

    event AddRemoveGlmContract(address glmContract, bool isAdd);

    function adjustPendingExecutionAmount(uint256 _amount, bool _isIncrease) external;

    //function to get the pending execution amount
    function pendingExecutionAmount() external view returns (uint256);

    function transferToGlmRouter(address _token, uint256 _amount) external;

    function transferGm(address _token, uint256 _amount, address _address) external;

    function finalizeWithdrawal(uint256 assets, uint256 glm, address receiver) external returns (uint256 shares);
}
