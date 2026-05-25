// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "@shared/lib-contracts-v0.8/contracts/Dependencies/TransferHelper.sol";

import "./Interfaces/ILRTConfig.sol";
import "./Interfaces/EigenLayer/IEigenPodManager.sol";
import "./Interfaces/EigenLayer/IEigenPod.sol";
import "./Interfaces/EigenLayer/IStrategyManager.sol";
import "./Interfaces/EigenLayer/IStrategy.sol";
import "./Interfaces/EigenLayer/IDelegationManager.sol";
import "./Interfaces/Swell/ICumulativeMerkleDrop.sol";
import "./Utils/LRTConstants.sol";
import "./Utils/LRTChecker.sol";
import "./Interfaces/ILRTProxy.sol";
import "./Interfaces/ILRTUnstakingVault.sol";

contract LRTProxy is ILRTProxy, LRTChecker, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    /// @dev The EigenPod is created and owned by this contract
    IEigenPod public eigenPod;
    /// @dev Tracks the balance staked to validators and has yet to have the credentials verified with EigenLayer.
    /// call verifyWithdrawalCredentials to verify the validator credentials on EigenLayer
    uint256 public stakedButNotVerifiedEth;

    mapping(uint256 => IDelegationManager.Withdrawal) public withdrawals;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _lrtConfig) public initializer {
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(LRTConstants.ADMIN_ROLE, msg.sender);

        lrtConfig = ILRTConfig(_lrtConfig);
    }

    function createEigenPod() external onlyRole(LRTConstants.ADMIN_ROLE) {
        require(address(eigenPod) == address(0), "eigenPod already exists");
        IEigenPodManager eigenPodManager = IEigenPodManager(
            lrtConfig.getContract(LRTConstants.EIGEN_POD_MANAGER)
        );
        eigenPodManager.createPod();
        eigenPod = eigenPodManager.ownerToPod(address(this));

        emit EigenPodCreated(address(eigenPod), address(this));
    }

    function delegateTo(
        address _operator,
        IDelegationManager.SignatureWithExpiry
            memory _approverSignatureAndExpiry,
        bytes32 _approverSalt
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        IDelegationManager(
            lrtConfig.getContract(LRTConstants.EIGEN_DELEGATION_MANAGER)
        ).delegateTo(_operator, _approverSignatureAndExpiry, _approverSalt);
        emit Delegated(_operator);
    }

    function depositAssetIntoStrategy(
        address _asset
    ) external onlySupportedAsset(_asset) onlyRole(LRTConstants.ADMIN_ROLE) {
        address strategy = lrtConfig.getStrategy(_asset);
        require(strategy != address(0), "strategy not set!");

        address strategyManager = lrtConfig.getContract(
            LRTConstants.EIGEN_STRATEGY_MANAGER
        );
        uint256 balance = IERC20(_asset).balanceOf(address(this));

        _approveTokenIfNeeded(_asset, strategyManager, balance);
        IStrategyManager(strategyManager).depositIntoStrategy(
            strategy,
            _asset,
            balance
        );

        emit AssetDeposited(_asset, strategy, balance);
    }

    function stakeEth(
        bytes calldata _pubkey,
        bytes calldata _signature,
        bytes32 _depositDataRoot
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        // Call the stake function in the EigenPodManager
        IEigenPodManager eigenPodManager = IEigenPodManager(
            lrtConfig.getContract(LRTConstants.EIGEN_POD_MANAGER)
        );
        eigenPodManager.stake{value: 32 ether}(
            _pubkey,
            _signature,
            _depositDataRoot
        );

        // Increment the staked but not verified ETH
        stakedButNotVerifiedEth += 32 ether;

        emit ETHStaked(_pubkey, 32 ether);
    }

    function verifyWithdrawalCredentials(
        uint64 _oracleBlockNumber,
        uint40 _validatorIndex,
        BeaconChainProofs.ValidatorFieldsAndBalanceProofs memory _proofs,
        bytes32[] calldata _validatorFields
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        eigenPod.verifyWithdrawalCredentialsAndBalance(
            _oracleBlockNumber,
            _validatorIndex,
            _proofs,
            _validatorFields
        );

        // Decrement the staked but not verified ETH
        uint64 validatorCurrentBalanceGwei = BeaconChainProofs
            .getBalanceFromBalanceRoot(_validatorIndex, _proofs.balanceRoot);

        stakedButNotVerifiedEth -= (validatorCurrentBalanceGwei * 1e9);
    }

    function initiateUnstaking(
        address[] memory _assets,
        uint256[] memory _shares
    )
        external
        onlyRole(LRTConstants.ADMIN_ROLE)
        returns (bytes32 withdrawalRoot)
    {
        require(
            _assets.length == _shares.length,
            "assets and shares length mismatch"
        );

        address beaconChainETHStrategy = lrtConfig.getContract(
            LRTConstants.BEACON_CHAIN_ETH_STRATEGY
        );

        ILRTUnstakingVault lrtUnstakingVault = ILRTUnstakingVault(
            lrtConfig.getContract(LRTConstants.LRT_UNSTAKING_VAULT)
        );

        IStrategy[] memory strategies = new IStrategy[](_assets.length);
        for (uint256 i = 0; i < _assets.length; ) {
            address asset = _assets[i];
            if (AddressLib.isPlatformToken(asset)) {
                strategies[i] = IStrategy(beaconChainETHStrategy);
            } else {
                address strategy = lrtConfig.getStrategy(asset);
                if (strategy == address(0)) {
                    revert StrategyIsNotSetForAsset();
                }
                if (address(beaconChainETHStrategy) == strategy) {
                    revert StrategyMustNotBeBeaconChain();
                }

                strategies[i] = IStrategy(strategy);
            }

            lrtUnstakingVault.addSharesUnstaking(asset, _shares[i]);
            unchecked {
                ++i;
            }
        }

        IDelegationManager eigenlayerDelegationManager = IDelegationManager(
            lrtConfig.getContract(LRTConstants.EIGEN_DELEGATION_MANAGER)
        );

        IDelegationManager.QueuedWithdrawalParams[]
            memory queuedWithdrawalParams = new IDelegationManager.QueuedWithdrawalParams[](
                1
            );
        queuedWithdrawalParams[0] = IDelegationManager.QueuedWithdrawalParams({
            strategies: strategies,
            shares: _shares,
            withdrawer: address(this)
        });
        uint256 nonce = eigenlayerDelegationManager.cumulativeWithdrawalsQueued(
            address(this)
        );
        bytes32[] memory withdrawalRoots = eigenlayerDelegationManager
            .queueWithdrawals(queuedWithdrawalParams);
        withdrawalRoot = withdrawalRoots[0];

        IDelegationManager.Withdrawal memory withdrawal = IDelegationManager
            .Withdrawal({
                staker: address(this),
                delegatedTo: eigenlayerDelegationManager.delegatedTo(
                    address(this)
                ),
                withdrawer: address(this),
                nonce: nonce,
                startBlock: uint32(block.number),
                strategies: strategies,
                shares: _shares
            });

        require(
            eigenlayerDelegationManager.pendingWithdrawals(
                _calculateWithdrawalRoot(withdrawal)
            ),
            "withdrawl is not pending"
        );

        withdrawals[nonce] = withdrawal;

        emit WithdrawalQueued(nonce, withdrawalRoot);
    }

    function completeUnstaking(
        uint256 _nonce
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        IDelegationManager eigenlayerDelegationManager = IDelegationManager(
            lrtConfig.getContract(LRTConstants.EIGEN_DELEGATION_MANAGER)
        );
        IDelegationManager.Withdrawal memory withdrawal = withdrawals[_nonce];
        require(
            eigenlayerDelegationManager.pendingWithdrawals(
                _calculateWithdrawalRoot(withdrawal)
            ),
            "withdrawal is not pending"
        );

        address beaconChainETHStrategy = lrtConfig.getContract(
            LRTConstants.BEACON_CHAIN_ETH_STRATEGY
        );

        IERC20[] memory assets = new IERC20[](withdrawal.strategies.length);
        for (uint256 i = 0; i < withdrawal.strategies.length; ) {
            if (address(withdrawal.strategies[i]) == beaconChainETHStrategy) {
                assets[i] = IERC20(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);
            } else {
                assets[i] = IERC20(withdrawal.strategies[i].underlyingToken());
            }
            unchecked {
                ++i;
            }
        }

        // Finalize withdrawal with Eigenlayer Delegation Manager
        eigenlayerDelegationManager.completeQueuedWithdrawal(
            withdrawal,
            assets,
            0,
            true
        );
        ILRTUnstakingVault lrtUnstakingVault = ILRTUnstakingVault(
            lrtConfig.getContract(LRTConstants.LRT_UNSTAKING_VAULT)
        );
        for (uint256 i = 0; i < assets.length; ) {
            if (address(withdrawal.strategies[i]) == beaconChainETHStrategy) {
                lrtUnstakingVault.reduceSharesUnstaking(
                    AddressLib.PLATFORM_TOKEN_ADDRESS,
                    withdrawal.shares[i]
                );
                TransferHelper.safeTransferETH(
                    address(lrtUnstakingVault),
                    withdrawal.shares[i]
                );
            } else {
                lrtUnstakingVault.reduceSharesUnstaking(
                    address(assets[i]),
                    withdrawal.shares[i]
                );
                assets[i].safeTransfer(
                    address(lrtUnstakingVault),
                    withdrawal.strategies[i].sharesToUnderlyingView(
                        withdrawal.shares[i]
                    )
                );
            }
            unchecked {
                i++;
            }
        }
        emit WithdrawalCompleted(withdrawal.nonce);
    }

    /**
     * @notice  Starts a checkpoint on the eigenPod
     * @dev     permissioned call by NativeEthRestakeAdmin
     */
    function startCheckpoint() external onlyRole(LRTConstants.ADMIN_ROLE) {
        // start checkpoint
        eigenPod.startCheckpoint(true);
    }

    /**
     * @notice  Verify Checkpoint Proofs on EigenPod for currently active checkpoint and tracks exited validator balance
     * @dev     permissioned call by NativeEthRestakeAdmin
     * @param   _balanceContainerProof  proves the beacon's current balance container root against a checkpoint's `beaconBlockRoot`
     * @param   _proofs  Proofs for one or more validator current balances against the `balanceContainerRoot`
     */
    function verifyCheckpointProofs(
        BeaconChainProofs.BalanceContainerProof calldata _balanceContainerProof,
        BeaconChainProofs.BalanceProof[] calldata _proofs
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        eigenPod.verifyCheckpointProofs(_balanceContainerProof, _proofs);
    }

    function claimSwellAirdrop(
        address _to,
        uint256 _amount,
        bytes32[] memory _merkleProof
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        require(_to != address(0), "invalid _to");
        require(_amount > 0, "invalid _amount");
        ICumulativeMerkleDrop cumulativeMerkleDrop = ICumulativeMerkleDrop(
            lrtConfig.getContract(LRTConstants.SWELL_MERKLE_DROP)
        );
        cumulativeMerkleDrop.claimAndLock(_amount, 0, _merkleProof);
        IERC20(cumulativeMerkleDrop.token()).safeTransfer(_to, _amount);

        emit SwellAirdropClaimed(_to, _amount);
    }

    function getAssetBalance(
        address _asset
    ) external view onlySupportedAsset(_asset) returns (uint256) {
        if (AddressLib.isPlatformToken(_asset)) {
            // TODO: Once withdrawals are enabled, allow this to handle pending withdraws and a potential negative share
            // balance in the EigenPodManager ownershares
            uint256 ethStaked = stakedButNotVerifiedEth;
            if (address(eigenPod) != address(0)) {
                ethStaked += address(eigenPod).balance;
            }
            return ethStaked;
        } else {
            address strategy = lrtConfig.getStrategy(_asset);
            if (strategy == address(0)) {
                return 0;
            }

            return IStrategy(strategy).userUnderlyingView(address(this));
        }
    }

    /// @notice Returns the keccak256 hash of `withdrawal`.
    function _calculateWithdrawalRoot(
        IDelegationManager.Withdrawal memory withdrawal
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(withdrawal));
    }

    function _approveTokenIfNeeded(
        address _token,
        address _to,
        uint256 _amount
    ) internal {
        if (IERC20(_token).allowance(address(this), _to) < _amount) {
            IERC20(_token).safeApprove(_to, 0);
            IERC20(_token).safeApprove(_to, type(uint256).max);
        }
    }

    receive() external payable {
        if (
            msg.sender == lrtConfig.getContract(LRTConstants.LRT_DEPOSIT_POOL)
        ) {
            emit ETHReceivedFromDepositPool(msg.value);
        }
        emit ETHReceived(msg.value);
    }
}
