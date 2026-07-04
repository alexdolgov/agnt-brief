// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IStakeAccountManagerReader {
    function getTotalManagedStakingBalanceWei(address manager)
        external
        view
        returns (uint256 totalManagedStakingBalanceWei);

    function getManagedStakingBalanceBreakdownWei(address manager)
        external
        view
        returns (
            uint256 totalManagedStakingBalanceWei,
            uint256 preExecutionManagedStakingBalanceWei,
            uint256 liveManagedStakingBalanceWei,
            uint256 executingOrInactiveAccountCount
        );

    function canBeginShutdownUnwind(address manager, address subAccount) external view returns (bool);

    function canEnterShutdownExecution(address manager, address subAccount) external view returns (bool);

    function canReceiveSpotTransfers(address manager, address subAccount)
        external
        view
        returns (bool canReceive, uint64 transferAmountNeededWei);

    function isWithinApiWalletSlashStakeCap(address manager, address subAccount) external view returns (bool);
}
