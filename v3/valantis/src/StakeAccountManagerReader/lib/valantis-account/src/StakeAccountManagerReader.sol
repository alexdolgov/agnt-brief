// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {PrecompileLib} from "@hyper-evm-lib/src/PrecompileLib.sol";
import {HLConstants} from "@hyper-evm-lib/src/common/HLConstants.sol";

import {AccountFactory} from "./factories/AccountFactory.sol";
import {IStakeAccountManager} from "./interfaces/IStakeAccountManager.sol";
import {IStakeAccountManagerReader} from "./interfaces/IStakeAccountManagerReader.sol";

/**
 * @title StakeAccountManagerReader
 * @notice External read helper for StakeAccountManager state and preflight checks.
 */
contract StakeAccountManagerReader is IStakeAccountManagerReader {
    using SafeCast for uint256;

    /**
     * @notice Returns total staking balance across all HyperCore-active managed sub-accounts.
     * @param manager Address of the StakeAccountManager.
     * @return totalManagedStakingBalanceWei Total managed staking balance in HyperCore wei units.
     */
    function getTotalManagedStakingBalanceWei(address manager)
        external
        view
        override
        returns (uint256 totalManagedStakingBalanceWei)
    {
        (totalManagedStakingBalanceWei,,,) = _managedStakingBalanceBreakdownWei(IStakeAccountManager(manager));
    }

    /**
     * @notice Returns staking balance breakdown across managed sub-accounts.
     * @param manager Address of the StakeAccountManager.
     */
    function getManagedStakingBalanceBreakdownWei(address manager)
        external
        view
        override
        returns (
            uint256 totalManagedStakingBalanceWei,
            uint256 preExecutionManagedStakingBalanceWei,
            uint256 liveManagedStakingBalanceWei,
            uint256 executingOrInactiveAccountCount
        )
    {
        return _managedStakingBalanceBreakdownWei(IStakeAccountManager(manager));
    }

    /**
     * @notice Returns whether forced shutdown unwind can currently be started for a sub-account.
     * @param manager Address of the StakeAccountManager.
     * @param subAccount The managed sub-account address.
     */
    function canBeginShutdownUnwind(address manager, address subAccount) external view override returns (bool) {
        IStakeAccountManager manager_ = IStakeAccountManager(manager);
        if (!manager_.isManagedSubAccount(subAccount)) return false;

        IStakeAccountManager.ManagedSubAccountInfo memory managed = manager_.getManagedSubAccountInfo(subAccount);
        if (managed.state != IStakeAccountManager.LifecycleState.SHUTDOWN_NOTICE) return false;
        if (manager_.shutdownControlsPaused()) return false;

        return block.timestamp >= managed.shutdownEarliestUnwindAt;
    }

    /**
     * @notice Returns whether shutdown execution can currently be entered for a sub-account.
     * @param manager Address of the StakeAccountManager.
     * @param subAccount The managed sub-account address.
     */
    function canEnterShutdownExecution(address manager, address subAccount) external view override returns (bool) {
        IStakeAccountManager manager_ = IStakeAccountManager(manager);
        if (!manager_.isManagedSubAccount(subAccount)) return false;

        IStakeAccountManager.ManagedSubAccountInfo memory managed = manager_.getManagedSubAccountInfo(subAccount);
        if (managed.state != IStakeAccountManager.LifecycleState.SHUTDOWN_UNWIND) return false;
        if (manager_.shutdownControlsPaused()) return false;

        IStakeAccountManager.ShutdownUnwindStatus memory unwindStatus = manager_.getShutdownUnwindStatus(subAccount);
        if (!unwindStatus.apiWalletsCleared || unwindStatus.trustedApiWalletActive || !unwindStatus.flatStateAttested) {
            return false;
        }

        return PrecompileLib.delegatorSummary(subAccount).delegated == 0;
    }

    /**
     * @notice Returns point-in-time provisioning intake status for LST spot HYPE transfers.
     * @param manager Address of the StakeAccountManager.
     * @param subAccount The managed sub-account address.
     * @return canReceive True if spot-transfer intake should be allowed, false otherwise.
     * @return transferAmountNeededWei Additional spot HYPE the LST should send now.
     */
    function canReceiveSpotTransfers(address manager, address subAccount)
        external
        view
        override
        returns (bool canReceive, uint64 transferAmountNeededWei)
    {
        IStakeAccountManager manager_ = IStakeAccountManager(manager);
        if (!manager_.isManagedSubAccount(subAccount)) return (false, 0);

        IStakeAccountManager.ManagedSubAccountInfo memory managed = manager_.getManagedSubAccountInfo(subAccount);
        if (managed.state != IStakeAccountManager.LifecycleState.PROVISIONING) return (false, 0);
        if (!PrecompileLib.coreUserExists(subAccount)) return (false, 0);
        if (!AccountFactory(manager_.accountFactory()).isAccountDeployed(managed.account)) return (false, 0);

        (,, transferAmountNeededWei) = _provisioningFundingStatusWei(subAccount, managed.managedPrincipalWei);
        return (true, transferAmountNeededWei);
    }

    /**
     * @notice Returns whether a managed sub-account remains within the configured API-wallet slash stake cap.
     * @param manager Address of the StakeAccountManager.
     * @param subAccount The managed sub-account address.
     */
    function isWithinApiWalletSlashStakeCap(address manager, address subAccount) external view override returns (bool) {
        IStakeAccountManager manager_ = IStakeAccountManager(manager);
        if (!manager_.isManagedSubAccount(subAccount)) return false;

        IStakeAccountManager.ManagedSubAccountInfo memory managed = manager_.getManagedSubAccountInfo(subAccount);
        uint64 capWei = manager_.apiWalletSlashStakeCapWei();
        if (managed.managedPrincipalWei > capWei) {
            return false;
        }
        if (!PrecompileLib.coreUserExists(subAccount)) return true;

        return _currentTotalStakingWei(subAccount) <= capWei;
    }

    function _provisioningFundingStatusWei(address subAccount, uint64 managedPrincipalWei)
        internal
        view
        returns (uint64 remainingStakeAmountWei, uint64 currentSpotHypeWei, uint64 transferAmountNeededWei)
    {
        uint256 currentTotalStakingWei = _currentTotalStakingWei(subAccount);
        remainingStakeAmountWei = _remainingStakeAmountWei(currentTotalStakingWei, managedPrincipalWei);
        currentSpotHypeWei = PrecompileLib.spotBalance(subAccount, HLConstants.hypeTokenIndex()).total;
        transferAmountNeededWei =
            remainingStakeAmountWei > currentSpotHypeWei ? remainingStakeAmountWei - currentSpotHypeWei : 0;
    }

    function _remainingStakeAmountWei(uint256 currentTotalStakingWei, uint64 managedPrincipalWei)
        internal
        pure
        returns (uint64)
    {
        if (currentTotalStakingWei >= managedPrincipalWei) return 0;
        return managedPrincipalWei - currentTotalStakingWei.toUint64();
    }

    function _currentTotalStakingWei(address subAccount) internal view returns (uint256) {
        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
        return uint256(summary.delegated) + uint256(summary.undelegated) + uint256(summary.totalPendingWithdrawal);
    }

    function _managedStakingBalanceBreakdownWei(IStakeAccountManager manager_)
        internal
        view
        returns (
            uint256 totalManagedStakingBalanceWei,
            uint256 preExecutionManagedStakingBalanceWei,
            uint256 liveManagedStakingBalanceWei,
            uint256 executingOrInactiveAccountCount
        )
    {
        uint256 managedLength = manager_.getManagedSubAccountsCount();
        for (uint256 i = 0; i < managedLength; i++) {
            address subAccount = manager_.getManagedSubAccountAt(i);
            IStakeAccountManager.ManagedSubAccountInfo memory managed = manager_.getManagedSubAccountInfo(subAccount);
            IStakeAccountManager.LifecycleState state = managed.state;
            bool isPreExecutionState = state == IStakeAccountManager.LifecycleState.ACTIVE
                || state == IStakeAccountManager.LifecycleState.SHUTDOWN_NOTICE
                || state == IStakeAccountManager.LifecycleState.SHUTDOWN_UNWIND;
            bool isExecutionInclusiveState =
                isPreExecutionState || state == IStakeAccountManager.LifecycleState.SHUTDOWN_EXECUTING;
            bool isActiveOnHyperCore = PrecompileLib.coreUserExists(subAccount);

            if (!isPreExecutionState || !isActiveOnHyperCore) {
                executingOrInactiveAccountCount++;
            }

            if (!isActiveOnHyperCore) {
                continue;
            }

            uint256 subAccountStakingBalanceWei = _currentTotalStakingWei(subAccount);

            totalManagedStakingBalanceWei += subAccountStakingBalanceWei;
            if (isPreExecutionState) {
                preExecutionManagedStakingBalanceWei += subAccountStakingBalanceWei;
            }
            if (isExecutionInclusiveState) {
                liveManagedStakingBalanceWei += subAccountStakingBalanceWei;
            }
        }
    }
}
