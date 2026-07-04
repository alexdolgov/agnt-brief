// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "@shared/lib-contracts-v0.8/contracts/Dependencies/TransferHelper.sol";

import "./Interfaces/ILRTConfig.sol";
import "./Interfaces/IRestakeStrategy.sol";
import "./Interfaces/EigenLayer/IDelegationManager.sol";
import "./Interfaces/EigenLayer/IStrategyManager.sol";
import "./Interfaces/EigenLayer/IStrategy.sol";
import "./Utils/LRTConstants.sol";
import "./Utils/LRTChecker.sol";

contract RestakeStrategy is
    IRestakeStrategy,
    LRTChecker,
    AccessControlUpgradeable
{
    using SafeERC20 for IERC20;
    using TransferHelper for address;

    address public operatorDepositPool;

    address public operator;

    mapping(address => uint256) public assetBalance;

    mapping(uint256 => IDelegationManager.Withdrawal) public withdrawals;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        address _lrtConfig,
        address _operatorDepositPool,
        address _operator
    ) public override initializer {
        __AccessControl_init();

        lrtConfig = ILRTConfig(_lrtConfig);
        operatorDepositPool = _operatorDepositPool;
        operator = _operator;

        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        _grantRole(LRTConstants.ADMIN_ROLE, _owner);
    }

    modifier onlyOperatorOrAdmin() {
        require(
            msg.sender == operator ||
                hasRole(LRTConstants.ADMIN_ROLE, msg.sender),
            "!auth"
        );
        _;
    }

    modifier onlyOperatorDepositPool() {
        require(msg.sender == operatorDepositPool, "!auth");
        _;
    }

    function depositAsset(
        address _asset,
        uint256 _amount
    ) external override onlySupportedAsset(_asset) onlyOperatorDepositPool {
        require(_amount > 0, "invalid _amount");

        _checkAssetLimit(_asset, _amount);

        IDelegationManager.Withdrawal memory withdrawal = withdrawals[0];
        require(withdrawal.staker == address(0), "withdrawal initiated");

        IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);

        assetBalance[_asset] += _amount;

        if (
            lrtConfig.getAssetSwitch(
                _asset,
                LRTConstants.SWITCH_DEPOSIT_ASSET_TO_STRATEGY
            )
        ) {
            _depositAssetIntoStrategy(_asset);
        }

        emit AssetDeposited(_asset, _amount);
    }

    function depositAssetIntoStrategy(
        address _asset
    ) external override onlySupportedAsset(_asset) onlyOperatorOrAdmin {
        require(
            lrtConfig.getAssetSwitch(
                _asset,
                LRTConstants.SWITCH_DEPOSIT_ASSET_TO_STRATEGY
            ),
            "deposit to strategy switch is off"
        );

        _depositAssetIntoStrategy(_asset);
    }

    function initiateUnstaking()
        external
        override
        onlyOperatorDepositPool
        returns (bytes32 withdrawalRoot)
    {
        IDelegationManager eigenlayerDelegationManager = IDelegationManager(
            lrtConfig.getContract(LRTConstants.EIGEN_DELEGATION_MANAGER)
        );
        uint256 nonce = eigenlayerDelegationManager.cumulativeWithdrawalsQueued(
            address(this)
        );
        require(nonce == 0, "withdrawal already initiated");

        IStrategyManager strategyManager = IStrategyManager(
            lrtConfig.getContract(LRTConstants.EIGEN_STRATEGY_MANAGER)
        );

        (
            IStrategy[] memory strategies,
            uint256[] memory shares
        ) = strategyManager.getDeposits(address(this));

        require(strategies.length > 0, "not deposited yet");

        IDelegationManager.QueuedWithdrawalParams[]
            memory queuedWithdrawalParams = new IDelegationManager.QueuedWithdrawalParams[](
                1
            );
        queuedWithdrawalParams[0] = IDelegationManager.QueuedWithdrawalParams({
            strategies: strategies,
            shares: shares,
            withdrawer: address(this)
        });
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
                shares: shares
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

    function completeUnstaking()
        external
        override
        onlyOperatorDepositPool
        returns (address[] memory, uint256[] memory)
    {
        IDelegationManager.Withdrawal memory withdrawal = withdrawals[0];
        if (withdrawal.staker == address(0)) {
            IStrategyManager strategyManager = IStrategyManager(
                lrtConfig.getContract(LRTConstants.EIGEN_STRATEGY_MANAGER)
            );

            (IStrategy[] memory strategies, ) = strategyManager.getDeposits(
                address(this)
            );

            require(strategies.length == 0, "initiate unstaking first");
        } else {
            IDelegationManager eigenlayerDelegationManager = IDelegationManager(
                lrtConfig.getContract(LRTConstants.EIGEN_DELEGATION_MANAGER)
            );
            require(
                eigenlayerDelegationManager.pendingWithdrawals(
                    _calculateWithdrawalRoot(withdrawal)
                ),
                "withdrawal is not pending"
            );

            IERC20[] memory assets = new IERC20[](withdrawal.strategies.length);
            for (uint256 i = 0; i < withdrawal.strategies.length; ) {
                assets[i] = IERC20(withdrawal.strategies[i].underlyingToken());
                unchecked {
                    ++i;
                }
            }

            // Finalize withdrawal with Eigenlayer Delegation Manager
            eigenlayerDelegationManager.completeQueuedWithdrawal(
                withdrawal,
                assets,
                true
            );
        }

        address[] memory supportedAssets = lrtConfig.getSupportedAssets();
        uint256[] memory amounts = new uint256[](supportedAssets.length);
        for (uint256 i = 0; i < supportedAssets.length; ) {
            address asset = supportedAssets[i];
            uint256 amount = asset.balanceOf(address(this));
            amounts[i] = amount;
            if (amount > 0) {
                require(amount >= assetBalance[asset], "invalid amount");
                asset.safeTransferToken(operator, amount);
                assetBalance[asset] = 0;
            }
            unchecked {
                i++;
            }
        }
        emit WithdrawalCompleted(withdrawal.nonce);

        emit Withdrawn(supportedAssets, amounts);

        return (supportedAssets, amounts);
    }

    function _depositAssetIntoStrategy(address _asset) internal {
        address strategy = lrtConfig.getStrategy(_asset);
        require(strategy != address(0), "strategy not set!");

        address strategyManager = lrtConfig.getContract(
            LRTConstants.EIGEN_STRATEGY_MANAGER
        );
        uint256 balance = IERC20(_asset).balanceOf(address(this));
        require(balance > 0, "balance is 0");

        _approveTokenIfNeeded(_asset, strategyManager, balance);
        IStrategyManager(strategyManager).depositIntoStrategy(
            strategy,
            _asset,
            balance
        );

        emit AssetDepositedToStrategy(_asset, strategy, balance);
    }

    function _checkAssetLimit(address _asset, uint256 _amount) internal view {
        uint256 globalLimit = lrtConfig.getGlobalDepositLimitByAsset(_asset);
        require(
            globalLimit == 0 || assetBalance[_asset] + _amount <= globalLimit,
            "global limit reached"
        );

        uint256 userLimit = lrtConfig.getUserDepositLimitByAsset(
            operator,
            _asset
        );
        require(
            userLimit == 0 || assetBalance[_asset] + _amount <= userLimit,
            "user limit reached"
        );
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
}
