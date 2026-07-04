//SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.4;

interface IYieldExecutor {
    function vault() external view returns (address);

    // /// @notice Called to initiate the process of depositing of asset into 3rd party protocol
    // function initiateDeposit(bytes calldata _data) external;

    // /// @notice Called to initiate the process of removal of asset from 3rd party protocol
    // function initiateWithdraw(bytes calldata _data) external;

    function totalFunds()
        external
        view
        returns (uint256 posValue, uint256 lastUpdatedBlock);

    function depositIntoExecutor(uint256 amount)
        external
        returns (uint256 lpTokens);

    function withdrawfromExecutor(uint256 amountRequested)
        external
        returns (uint256 amountReturned);

    function previewAddLiquidity(uint256 assets)
        external
        view
        returns (uint256);

    function previewWithdrawLiquidity(uint256 lpTokens)
        external
        view
        returns (uint256);

    function lpValueInAsset(uint256 lpTokens) external view returns (uint256);

    function assetValueInLpToken(uint256 assets)
        external
        view
        returns (uint256);

    function totalLPTokens() external view returns (uint256);

    function maxSlippage() external view returns (uint256);

    function claimYield(bytes calldata _data) external returns (uint256 yield);
}
