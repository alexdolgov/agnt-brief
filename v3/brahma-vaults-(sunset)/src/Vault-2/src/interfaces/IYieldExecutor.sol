//SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.13;

interface IYieldExecutor {
    function vault() external view returns (address);

    // /// @notice Called to initiate the process of depositing of asset into 3rd party protocol
    // function initiateDeposit(bytes calldata _data) external;

    // /// @notice Called to initiate the process of removal of asset from 3rd party protocol
    // function initiateWithdraw(bytes calldata _data) external;

    function totalFunds()
        external
        view
        returns (
            // view
            uint256 posValue,
            uint256 lastUpdatedBlock
        );

    /// @dev send want token to executor and then call
    function depositIntoProtocol(uint256 amount)
        external
        returns (uint256 lpTokens);

    function withdrawfromProtocol(uint256 lpTokens)
        external
        returns (uint256 amountReturned);

    function lpValueInAsset(uint256 lpTokens) external view returns (uint256);

    function assetValueInLpToken(uint256 assets)
        external
        view
        returns (uint256);

    function totalLPTokens() external view returns (uint256);

    function maxSlippage() external view returns (uint256);

    function claimYield(bytes calldata _data) external returns (uint256 yield);

    function checkReentrancy() external;
}
