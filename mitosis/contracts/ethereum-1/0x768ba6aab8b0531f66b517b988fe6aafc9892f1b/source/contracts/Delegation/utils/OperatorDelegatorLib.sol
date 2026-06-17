// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../EigenLayer/interfaces/IDelegationManager.sol";
import "../../EigenLayer/interfaces/IEigenPodManager.sol";
import "../../Errors/Errors.sol";
import "../../EigenLayer/libraries/BeaconChainProofs.sol";
import "../IOperatorDelegator.sol";

library OperatorDelegatorLib {
    using BeaconChainProofs for *;

    uint256 internal constant GWEI_TO_WEI = 1e9;

    address public constant IS_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @dev Max stakedButNotVerifiedEth amount cap per validator
    uint256 public constant MAX_STAKE_BUT_NOT_VERIFIED_AMOUNT = 32 ether;

    function verifyWithdrawalCredentials(
        uint64 oracleTimestamp,
        BeaconChainProofs.StateRootProof calldata stateRootProof,
        uint40[] calldata validatorIndices,
        bytes[] calldata withdrawalCredentialProofs,
        bytes32[][] calldata validatorFields,
        IEigenPod eigenPod,
        mapping(bytes32 => uint256) storage validatorStakedButNotVerifiedEth
    ) external returns (uint256 totalStakedAndVerifiedEth) {
        eigenPod.verifyWithdrawalCredentials(
            oracleTimestamp,
            stateRootProof,
            validatorIndices,
            withdrawalCredentialProofs,
            validatorFields
        );

        // Increment the staked and verified ETH
        for (uint256 i = 0; i < validatorFields.length; ) {
            bytes32 validatorPubkeyHash = validatorFields[i].getPubkeyHash();
            // Increment total stakedAndVerifiedEth by validatorStakedButNotVerifiedEth
            if (validatorStakedButNotVerifiedEth[validatorPubkeyHash] != 0) {
                totalStakedAndVerifiedEth += validatorStakedButNotVerifiedEth[validatorPubkeyHash];
            } else {
                // fallback to Increment total stakedAndVerifiedEth by MAX_STAKE_BUT_NOT_VERIFIED_AMOUNT
                totalStakedAndVerifiedEth += MAX_STAKE_BUT_NOT_VERIFIED_AMOUNT;
            }

            // set validatorStakedButNotVerifiedEth value to 0
            validatorStakedButNotVerifiedEth[validatorPubkeyHash] = 0;

            unchecked {
                ++i;
            }
        }
    }

    function queueWithdrawal(
        IERC20 token,
        uint256 tokenAmount,
        IDelegationManager delegationManager,
        IEigenPodManager eigenPodManager,
        mapping(IERC20 => IStrategy) storage tokenStrategyMapping,
        mapping(address => uint256) storage queuedShares,
        mapping(bytes32 => bool) storage queuedWithdrawal,
        mapping(bytes32 => mapping(address => IOperatorDelegator.QueuedWithdrawal))
            storage queuedWithdrawalTokenInfo
    )
        external
        returns (
            bytes32 withdrawalRoot,
            uint96 nonce,
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams
        )
    {
        uint256 withdrawableShares;
        (queuedWithdrawalParams, withdrawableShares) = _getQueuedWithdrawalParams(
            token,
            tokenAmount,
            delegationManager,
            eigenPodManager,
            tokenStrategyMapping
        );

        // track withdrawable shares of tokens withdraw for TVL
        queuedShares[address(token)] += withdrawableShares;

        // Save the nonce before starting the withdrawal
        nonce = uint96(delegationManager.cumulativeWithdrawalsQueued(address(this)));

        // queue withdrawal in EigenLayer
        withdrawalRoot = delegationManager.queueWithdrawals(queuedWithdrawalParams)[0];

        // track initial withdrawable shares of the token in queuedWithdrawal
        queuedWithdrawalTokenInfo[withdrawalRoot][address(token)]
            .initialWithdrawableShares = withdrawableShares;

        // track protocol queued withdrawals
        queuedWithdrawal[withdrawalRoot] = true;
    }

    function trackMissedCheckpoint(
        uint64[] calldata missedCheckpoints,
        mapping(uint64 => bool) storage recordedCheckpoints,
        IEigenPod eigenPod
    ) external returns (uint256 totalBeaconChainExitBalance, uint64 latestCheckpoint) {
        for (uint256 i = 0; i < missedCheckpoints.length; ) {
            // revert if checkpoint already recorded
            if (recordedCheckpoints[missedCheckpoints[i]]) revert CheckpointAlreadyRecorded();

            // update totalBeaconChainExitBalance
            uint256 totalBeaconChainExitBalanceGwei = eigenPod.checkpointBalanceExitedGwei(
                missedCheckpoints[i]
            );

            // accumulate total Exit Balance
            totalBeaconChainExitBalance += totalBeaconChainExitBalanceGwei * GWEI_TO_WEI;

            // mark the checkpoint as recorded
            recordedCheckpoints[missedCheckpoints[i]] = true;

            // if current missedCheckpoint is greater than latestCheckpoint
            if (missedCheckpoints[i] > latestCheckpoint) {
                // update the latestCheckpoint
                latestCheckpoint = missedCheckpoints[i];
            }

            unchecked {
                ++i;
            }
        }
    }

    function trackSlashedQueuedWithdrawalDelta(
        bytes32[] calldata withdrawalRoots,
        mapping(bytes32 => bool) storage queuedWithdrawal,
        mapping(bytes32 => mapping(address => IOperatorDelegator.QueuedWithdrawal))
            storage queuedWithdrawalTokenInfo,
        mapping(address => uint256) storage totalTokenQueuedSharesSlashedDelta,
        IDelegationManager delegationManager
    ) external {
        for (uint256 i = 0; i < withdrawalRoots.length; ) {
            // revert if withdrawal not queued
            if (!queuedWithdrawal[withdrawalRoots[i]]) revert WithdrawalNotQueued();

            // get withdrawal and current shares of queuedWithdrawal from EigenLayer DelegationManager
            (
                IDelegationManager.Withdrawal memory withdrawal,
                uint256[] memory currentShares
            ) = delegationManager.getQueuedWithdrawal(withdrawalRoots[i]);

            // loop on every token in the queuedWithdrawal
            for (uint256 j = 0; j < withdrawal.strategies.length; ) {
                address underlyingToken = _getUnderlyingFromStrategy(
                    withdrawal.strategies[j],
                    delegationManager
                );

                // calculate new slashing delta for each token
                uint256 slashingDelta = (queuedWithdrawalTokenInfo[withdrawalRoots[i]][
                    underlyingToken
                ].initialWithdrawableShares > currentShares[j])
                    ? (queuedWithdrawalTokenInfo[withdrawalRoots[i]][underlyingToken]
                        .initialWithdrawableShares - currentShares[j])
                    : 0;

                // reduce totalTokenQueuedSharesSlashedDelta with old slashing delta for queuedWithdrawal
                totalTokenQueuedSharesSlashedDelta[underlyingToken] -= queuedWithdrawalTokenInfo[
                    withdrawalRoots[i]
                ][underlyingToken].sharesSlashedDelta;

                // track new slashed delta for each token
                totalTokenQueuedSharesSlashedDelta[underlyingToken] += slashingDelta;

                // track new slashed delta for queuedWithdrawal
                queuedWithdrawalTokenInfo[withdrawalRoots[i]][underlyingToken]
                    .sharesSlashedDelta = slashingDelta;

                unchecked {
                    ++j;
                }
            }

            unchecked {
                ++i;
            }
        }
    }

    /// @dev Calculates the underlying token amount from the amount of shares + queued withdrawal shares
    function getTokenBalanceFromStrategy(
        uint256 queuedSharesWithSlashing,
        IDelegationManager delegationManager,
        IStrategy strategy
    ) external view returns (uint256) {
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = strategy;
        (uint256[] memory withdrawableShares, ) = delegationManager.getWithdrawableShares(
            address(this),
            strategies
        );

        // get withdrawable shares from EigenLayer
        uint256 collateralBalance = withdrawableShares[0];
        // add queued shares for the token with slashing
        collateralBalance += queuedSharesWithSlashing;

        // convert shares to underlying
        return strategy.sharesToUnderlyingView(collateralBalance);
    }

    /// @dev Calculate the amount of ETH staked in the EigenLayer
    function getStakedETHBalance(
        uint256 queuedSharesWithSlashing,
        uint256 stakedButNotVerifiedEth,
        uint256 partialWithdrawalPodDelta,
        IEigenPodManager eigenPodManager,
        IDelegationManager delegationManager
    ) external view returns (uint256) {
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = eigenPodManager.beaconChainETHStrategy();

        (uint256[] memory withdrawableShares, ) = delegationManager.getWithdrawableShares(
            address(this),
            strategies
        );
        // get withdrawable shares from EigenLayer
        uint256 collateralBalance = withdrawableShares[0];

        // accounts for current podOwner shares + stakedButNotVerified ETH + queued withdraw shares - podDelta
        collateralBalance += (queuedSharesWithSlashing + stakedButNotVerifiedEth);

        // subtract the partial withdrawals podDelta
        collateralBalance -= partialWithdrawalPodDelta;

        return collateralBalance;
    }

    function getTotalConsolidationAmount(
        IEigenPodTypes.ConsolidationRequest[] calldata requests,
        IEigenPod eigenPod
    ) external view returns (uint256 _totalConsolidatedAmount) {
        for (uint256 i = 0; i < requests.length; ) {
            IEigenPodTypes.ValidatorInfo memory validatorInfo = eigenPod.validatorPubkeyToInfo(
                requests[i].srcPubkey
            );
            _totalConsolidatedAmount += (validatorInfo.restakedBalanceGwei * GWEI_TO_WEI);
            unchecked {
                ++i;
            }
        }
    }

    function trackUndelegateQueuedWithdrawals(
        bytes32[] calldata withdrawalRoots,
        IDelegationManager delegationManager,
        mapping(bytes32 => bool) storage queuedWithdrawal,
        mapping(address => uint256) storage queuedShares,
        mapping(bytes32 => mapping(address => IOperatorDelegator.QueuedWithdrawal))
            storage queuedWithdrawalTokenInfo
    ) external {
        for (uint256 i = 0; i < withdrawalRoots.length; ) {
            // verify withdrawal is not tracked
            if (queuedWithdrawal[withdrawalRoots[i]]) revert WithdrawalAlreadyTracked();

            // verify withdrawal is pending and protocol not double counting
            if (!delegationManager.pendingWithdrawals(withdrawalRoots[i]))
                revert WithdrawalAlreadyCompleted();

            // get withdrawal and current shares of queuedWithdrawal from EigenLayer DelegationManager
            (
                IDelegationManager.Withdrawal memory withdrawal,
                uint256[] memory currentShares
            ) = delegationManager.getQueuedWithdrawal(withdrawalRoots[i]);

            // check if withdrawal staker is OperatorDelegator
            if (withdrawal.staker != address(this)) revert InvalidStakerAddress();
            // loop on every token in the queuedWithdrawal
            for (uint256 j = 0; j < withdrawal.strategies.length; ) {
                address underlyingToken = _getUnderlyingFromStrategy(
                    withdrawal.strategies[j],
                    delegationManager
                );

                // track queued shares for the token in withdrawable shares
                queuedShares[underlyingToken] += currentShares[j];

                // track initial withdrawable shares of the token in queuedWithdrawal
                queuedWithdrawalTokenInfo[withdrawalRoots[i]][underlyingToken]
                    .initialWithdrawableShares = currentShares[j];
                unchecked {
                    ++j;
                }
            }
            // mark the withdrawal root as tracked to avoid double counting
            queuedWithdrawal[withdrawalRoots[i]] = true;
            unchecked {
                ++i;
            }
        }
    }

    function trackQueuedWithdrawals(
        IDelegationManager.Withdrawal[] calldata withdrawals,
        IERC20[] calldata tokens,
        IDelegationManager delegationManager,
        mapping(bytes32 => bool) storage queuedWithdrawal,
        mapping(address => uint256) storage queuedShares,
        mapping(bytes32 => mapping(address => IOperatorDelegator.QueuedWithdrawal))
            storage queuedWithdrawalTokenInfo
    ) external {
        // verify array lengths
        if (tokens.length != withdrawals.length) revert MismatchedArrayLengths();
        for (uint256 i = 0; i < withdrawals.length; ) {
            _checkZeroAddress(address(tokens[i]));

            // check if withdrawal staker is OperatorDelegator
            if (withdrawals[i].staker != address(this)) revert InvalidStakerAddress();

            // calculate withdrawalRoot
            bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawals[i]);

            // verify withdrawal is not tracked
            if (queuedWithdrawal[withdrawalRoot]) revert WithdrawalAlreadyTracked();

            // verify withdrawal is pending and protocol not double counting
            if (!delegationManager.pendingWithdrawals(withdrawalRoot))
                revert WithdrawalAlreadyCompleted();

            // verify LST token is not provided if beaconChainETHStrategy in Withdraw Request
            if (
                address(tokens[i]) != IS_NATIVE &&
                withdrawals[i].strategies[0] == delegationManager.beaconChainETHStrategy()
            ) revert IncorrectStrategy();

            // get current shares of queuedWithdrawal from EigenLayer DelegationManager
            (, uint256[] memory currentShares) = delegationManager.getQueuedWithdrawal(
                withdrawalRoot
            );
            // track queued shares for the token in withdrawable shares
            queuedShares[address(tokens[i])] += currentShares[0];

            // track initial withdrawable shares of the token in queuedWithdrawal
            queuedWithdrawalTokenInfo[withdrawalRoot][address(tokens[i])]
                .initialWithdrawableShares = currentShares[0];

            // mark the withdrawal root as tracked to avoid double counting
            queuedWithdrawal[withdrawalRoot] = true;

            unchecked {
                ++i;
            }
        }
    }

    // complete queuedWithdrawals
    function completeQueuedWithdrawal(
        IDelegationManager.Withdrawal calldata withdrawal,
        IERC20[] calldata tokens,
        IDelegationManager delegationManager
    ) external {
        // complete the queued withdrawal from EigenLayer with receiveAsToken set to true
        delegationManager.completeQueuedWithdrawal(withdrawal, tokens, true);
    }

    // complete queuedWithdrawals
    function completeQueuedWithdrawals(
        IDelegationManager.Withdrawal[] calldata withdrawals,
        IERC20[][] calldata tokens,
        bool[] calldata receiveAsTokens,
        IDelegationManager delegationManager
    ) external {
        // complete the queued withdrawal from EigenLayer
        delegationManager.completeQueuedWithdrawals(withdrawals, tokens, receiveAsTokens);
    }

    /**
     * @notice  Reduces queued shares for collateral assets in a completed withdrawal request
     * @dev     This function updates the TVL tracking by deducting shares from queuedShares when a withdrawal is completed.
     *          It also handles slashing adjustments by reducing the totalTokenQueuedSharesSlashedDelta if any slashing occurred.
     *          Reverts if an invalid collateral asset is provided in the withdrawal request (e.g., LST token with beaconChainETHStrategy).
     *          The withdrawal root is calculated from the withdrawal struct and used to look up tracked withdrawal information.
     * @param   withdrawal  The EigenLayer withdrawal struct containing strategies, shares, staker, and other withdrawal details
     * @param   tokens  Array of token addresses in the withdrawal request (use IS_NATIVE constant for native ETH)
     * @param   delegationManager  The EigenLayer DelegationManager contract instance used to calculate withdrawal root
     * @param   queuedShares  Storage mapping tracking total queued shares per token address for TVL calculation
     * @param   queuedWithdrawalTokenInfo  Storage mapping tracking initial withdrawable shares and slashing delta per withdrawal root and token
     * @param   totalTokenQueuedSharesSlashedDelta  Storage mapping tracking cumulative slashing delta across all queued withdrawals per token
     */
    function reduceQueuedShares(
        IDelegationManager.Withdrawal calldata withdrawal,
        IERC20[] memory tokens,
        IDelegationManager delegationManager,
        mapping(address => uint256) storage queuedShares,
        mapping(bytes32 => mapping(address => IOperatorDelegator.QueuedWithdrawal))
            storage queuedWithdrawalTokenInfo,
        mapping(address => uint256) storage totalTokenQueuedSharesSlashedDelta
    ) external {
        for (uint256 i; i < tokens.length; ) {
            _checkZeroAddress(address(tokens[i]));
            if (
                address(tokens[i]) != IS_NATIVE &&
                withdrawal.strategies[i] == delegationManager.beaconChainETHStrategy()
            ) revert IncorrectStrategy();

            // Calculate withdrawal root for the given withdrawal
            bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawal);

            // deduct queued shares with the initial withdrawable shares queued for tracking TVL
            queuedShares[address(tokens[i])] -= queuedWithdrawalTokenInfo[withdrawalRoot][
                address(tokens[i])
            ].initialWithdrawableShares;
            if (
                queuedWithdrawalTokenInfo[withdrawalRoot][address(tokens[i])].sharesSlashedDelta > 0
            ) {
                // reduce total slashed delta with queuedWithdrawalTokenInfo.sharesSharedDelta
                totalTokenQueuedSharesSlashedDelta[address(tokens[i])] -= queuedWithdrawalTokenInfo[
                    withdrawalRoot
                ][address(tokens[i])].sharesSlashedDelta;

                // delete queuedWithdrawalTokenInfo for the withdrawal root
                delete queuedWithdrawalTokenInfo[withdrawalRoot][address(tokens[i])];
            }

            unchecked {
                ++i;
            }
        }
    }

    function _checkZeroAddress(address _potentialAddress) internal pure {
        if (_potentialAddress == address(0)) revert InvalidZeroInput();
    }

    function _getUnderlyingFromStrategy(
        IStrategy strategy,
        IDelegationManager delegationManager
    ) internal view returns (address) {
        if (strategy == delegationManager.beaconChainETHStrategy()) {
            return IS_NATIVE;
        } else {
            return address(strategy.underlyingToken());
        }
    }

    function _getQueuedWithdrawalParams(
        IERC20 token,
        uint256 tokenAmount,
        IDelegationManager delegationManager,
        IEigenPodManager eigenPodManager,
        mapping(IERC20 => IStrategy) storage tokenStrategyMapping
    )
        internal
        view
        returns (IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams, uint256)
    {
        // length 1 array for queued withdrawal params struct
        queuedWithdrawalParams = new IDelegationManager.QueuedWithdrawalParams[](1);
        queuedWithdrawalParams[0].strategies = new IStrategy[](1);
        queuedWithdrawalParams[0].depositShares = new uint256[](1);

        // length 1 array for strategies and withdrawableShares
        uint256[] memory withdrawableShares = new uint256[](1);

        if (address(token) == IS_NATIVE) {
            // set beaconChainEthStrategy for ETH
            queuedWithdrawalParams[0].strategies[0] = eigenPodManager.beaconChainETHStrategy();

            // set withdrawable shares for ETH
            withdrawableShares[0] = tokenAmount;
        } else {
            _checkZeroAddress(address(tokenStrategyMapping[token]));

            // set the strategy of the token
            queuedWithdrawalParams[0].strategies[0] = tokenStrategyMapping[token];

            // set the withdrawable shares of the token
            withdrawableShares[0] = tokenStrategyMapping[token].underlyingToSharesView(tokenAmount);
        }

        // set deposit shares for the token
        queuedWithdrawalParams[0].depositShares[0] = delegationManager.convertToDepositShares(
            address(this),
            queuedWithdrawalParams[0].strategies,
            withdrawableShares
        )[0];

        // set withdrawer as this contract address
        queuedWithdrawalParams[0].__deprecated_withdrawer = address(this);

        return (queuedWithdrawalParams, withdrawableShares[0]);
    }
}
