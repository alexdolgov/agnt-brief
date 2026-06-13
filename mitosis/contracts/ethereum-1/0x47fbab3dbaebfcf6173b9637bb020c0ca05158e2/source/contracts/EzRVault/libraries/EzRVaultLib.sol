// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import { WithdrawalBuffer } from "../InstantWithdrawal/WithdrawalBuffer.sol";
import { IEzRVault } from "../IEzRVault.sol";
import { IDelegationManager } from "../../EigenLayer/interfaces/IDelegationManager.sol";
import { IStrategy } from "../../EigenLayer/interfaces/IStrategy.sol";

library EzRVaultLib {
    function createWithdrawBuffer(
        address _withdrawBufferBeacon,
        uint256 _instantWithdrawalFeeBps,
        uint256 _withdrawBufferTarget,
        address _feeDestination,
        address _owner
    ) external returns (address _withdrawBuffer) {
        _withdrawBuffer = address(
            new BeaconProxy(
                address(_withdrawBufferBeacon),
                abi.encodeWithSelector(
                    WithdrawalBuffer.initialize.selector,
                    _instantWithdrawalFeeBps,
                    _withdrawBufferTarget,
                    _feeDestination,
                    _owner,
                    IEzRVault(address(this))
                )
            )
        );
    }

    /// @dev build the QueuedWithdrawalParam struct for EigenLayer withdrawals
    function getQueuedWithdrawalParam(
        uint256 underlyingAmount,
        IDelegationManager delegationManager,
        IStrategy underlyingStrategy
    )
        external
        returns (
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams,
            uint256,
            uint96
        )
    {
        // create queuedWithdrawalParams struct for withdrawRequest
        queuedWithdrawalParams = new IDelegationManager.QueuedWithdrawalParams[](1);
        queuedWithdrawalParams[0].strategies = new IStrategy[](1);

        queuedWithdrawalParams[0].depositShares = new uint256[](1);
        // length 1 array for withdrawableShares
        uint256[] memory withdrawableShares = new uint256[](1);
        // set vault strategy for 0th index only
        queuedWithdrawalParams[0].strategies[0] = underlyingStrategy;

        // set the withdrawable shares of the underlying
        withdrawableShares[0] = underlyingStrategy.underlyingToSharesView(underlyingAmount);

        // set deposit shares for the token
        // After upgrade
        uint256[] memory depositShares = delegationManager.convertToDepositShares(
            address(this),
            queuedWithdrawalParams[0].strategies,
            withdrawableShares
        );

        queuedWithdrawalParams[0].depositShares[0] = depositShares[0];

        // set withdrawer as this contract address
        queuedWithdrawalParams[0].__deprecated_withdrawer = address(this);

        // Save the nonce before starting the withdrawal
        uint96 nonce = uint96(delegationManager.cumulativeWithdrawalsQueued(address(this)));

        return (queuedWithdrawalParams, withdrawableShares[0], nonce);
    }

    function getUnderlyingBalance(
        IStrategy underlyingStrategy,
        IDelegationManager delegationManager,
        uint256 queuedSharesWithSlashing,
        uint256 withdrawBufferUnderlyingBalance
    ) external view returns (uint256) {
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = underlyingStrategy;

        (uint256[] memory withdrawableShares, ) = delegationManager.getWithdrawableShares(
            address(this),
            strategies
        );

        // get withdrawable shares from EigenLayer
        uint256 collateralBalance = withdrawableShares[0];

        // add queued shares for the token with slashing
        collateralBalance += queuedSharesWithSlashing;

        // convert shares to underlying
        return
            underlyingStrategy.sharesToUnderlyingView(collateralBalance) +
            withdrawBufferUnderlyingBalance;
    }
}
