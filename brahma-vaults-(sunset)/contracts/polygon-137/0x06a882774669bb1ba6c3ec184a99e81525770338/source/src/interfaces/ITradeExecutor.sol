//SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.4;

interface ITradeExecutor {
    function vault() external view returns (address);

    /// @notice Called to deposit asset into 3rd party protocol
    function initiateDeposit(bytes calldata _data) external;

    /// @notice Called for the process of removal of asset from 3rd party protocol
    function initiateWithdraw(bytes calldata _data)
        external
        returns (uint256 amountWithdrawn);
}
