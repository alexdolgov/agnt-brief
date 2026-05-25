// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTWithdrawalManager {
    //errors
    error InvalidAmountToWithdraw();
    error ExceedAmountToWithdraw();
    error WithdrawalLocked();
    error WithdrawalDelayNotPassed();
    error NoPendingWithdrawals();
    error AmountMustBeGreaterThanZero();
    error NotSupportedLST();

    error ElETHPriceMustBeGreaterMinimum(uint256 elETHPrice);
    error AssetPriceMustBeGreaterMinimum(uint256 assetPrice);

    struct WithdrawalRequest {
        uint256 elETHUnstaked;
        uint256 expectedAssetAmount;
        uint256 withdrawalStartBlock;
    }

    //events
    event AssetWithdrawalQueued(
        address indexed withdrawer,
        address asset,
        uint256 elETHUnstaked
    );
    event AssetWithdrawalFinalized(
        address indexed withdrawer,
        address indexed asset,
        uint256 amountBurned,
        uint256 amountReceived
    );
    event EtherReceived(
        address indexed depositor,
        uint256 ethAmount,
        uint256 sharesAmount
    );

    event AssetUnlocked(
        address asset,
        uint256 elETHAmount,
        uint256 assetAmount,
        uint256 rsEThPrice,
        uint256 assetPrice
    );

    event MinAmountToWithdrawUpdated(
        address asset,
        uint256 minAmountToWithdraw
    );
    event WithdrawalDelayBlocksUpdated(uint256 withdrawalDelayBlocks);

    // methods

    function getExpectedAssetAmount(
        address asset,
        uint256 amount
    ) external view returns (uint256);

    function getAvailableAssetAmount(
        address asset
    ) external view returns (uint256 assetAmount);

    function getUserWithdrawalRequest(
        address asset,
        address user,
        uint256 index
    )
        external
        view
        returns (
            uint256 elETHAmount,
            uint256 expectedAssetAmount,
            uint256 withdrawalStartBlock
        );

    function initiateWithdrawal(address asset, uint256 withdrawAmount) external;

    function completeWithdrawal(address asset) external payable;

    function unlockQueue(
        address asset,
        uint256 index,
        uint256 minimumAssetPrice,
        uint256 minimumElEthPrice
    ) external returns (uint256 elETHBurned, uint256 assetAmountUnlocked);
}
