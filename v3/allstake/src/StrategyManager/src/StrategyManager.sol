// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import "./interfaces/IStrategyManager.sol";
import "./Strategy.sol";
import "./utils/VersionedInitializable.sol";

contract StrategyManager is
    IStrategyManager,
    Ownable2StepUpgradeable,
    VersionedInitializable
{
    uint256 public constant REVISION = 1;
    /// max number of strategies we can create
    uint8 private constant MAX_STRATEGIES_LEN = 32;

    /// a list of supported strategies
    IStrategy[] public strategies;
    /// whether deposit is enabled for each strategy
    mapping(IStrategy => bool) public depositEnabled;
    /// whether withdraw is enabled for each strategy
    mapping(IStrategy => bool) public withdrawEnabled;
    /// minimal withdraw delay for all strategies in seconds
    uint256 public minWithdrawDelay;

    constructor() {
        disableInitializers();
    }

    // This function is marked virtual to allow test contracts to inherit from it.
    // In reality new versions should re-define the const REVISION above.
    function getRevision() internal pure virtual override returns (uint256) {
        return REVISION;
    }

    function initialize(
        uint256 _minWithdrawDelay,
        address _owner
    ) external versionedInitializer {
        _transferOwnership(_owner);
        minWithdrawDelay = _minWithdrawDelay;
    }

    /// @inheritdoc IStrategyManager
    function strategiesLen() public view returns (uint256) {
        return strategies.length;
    }

    /// @inheritdoc IStrategyManager
    function listStrategies(
        uint256 offset,
        uint256 limit
    ) external view returns (IStrategy[] memory) {
        IStrategy[] memory result = new IStrategy[](limit);
        uint256 i;
        for (i = 0; i < limit; i++) {
            result[i] = strategies[i + offset];
        }
        return result;
    }

    /// @inheritdoc IStrategyManager
    function createStrategy(
        IERC20 token,
        uint256 withdrawDelay,
        uint256 minDeposit,
        string calldata receiptTokenName,
        string calldata receiptTokenSymbol
    ) external onlyOwner returns (IStrategy) {
        require(
            strategiesLen() < MAX_STRATEGIES_LEN,
            "StrategyManager: Cannout create more strategies"
        );

        Strategy strategyImpl = new Strategy();
        TransparentUpgradeableProxy strategyProxy = new TransparentUpgradeableProxy(
                address(strategyImpl),
                owner(), // upgrade authority is set to the owner of strategy manager
                abi.encodeWithSelector(
                    Strategy.initialize.selector,
                    token,
                    withdrawDelay,
                    minDeposit,
                    receiptTokenName,
                    receiptTokenSymbol
                )
            );
        IStrategy strategy = IStrategy(address(strategyProxy));

        strategies.push(strategy);
        depositEnabled[strategy] = true;
        withdrawEnabled[strategy] = true;

        emit StrategyCreated(strategy, token, withdrawDelay, minDeposit);

        return strategy;
    }

    /// @inheritdoc IStrategyManager
    function depositIntoStrategy(
        IStrategy strategy,
        uint256 amount
    ) external returns (uint256) {
        require(
            depositEnabled[strategy],
            "StrategyManager: Deposit not enabled"
        );
        uint256 shares = strategy.deposit(amount, msg.sender);
        emit Deposit(strategy, msg.sender, amount, shares);
        return shares;
    }

    /// @inheritdoc IStrategyManager
    function queueWithdrawFromStrategy(
        IStrategy strategy,
        uint256 shares
    ) external returns (uint32) {
        require(
            withdrawEnabled[strategy],
            "StrategyManager: Withdraw not enabled"
        );
        uint32 id = strategy.queueWithdraw(shares, msg.sender);
        emit QueueWithdraw(strategy, msg.sender, shares, id);
        return id;
    }

    /// @inheritdoc IStrategyManager
    function completeWithdrawFromStrategy(
        IStrategy strategy,
        uint32[] calldata requestIds
    ) external returns (uint256) {
        require(
            withdrawEnabled[strategy],
            "StrategyManager: Withdraw not enabled"
        );
        uint256 amount = strategy.completeWithdraw(
            msg.sender,
            minWithdrawDelay,
            requestIds
        );
        emit CompleteWithdraw(strategy, msg.sender, amount, requestIds);
        return amount;
    }

    /// @inheritdoc IStrategyManager
    function setMinWithdrawDelay(uint256 delay) external onlyOwner {
        minWithdrawDelay = delay;
        emit MinWithdrawDelayUpdated(delay);
    }

    /// @inheritdoc IStrategyManager
    function setStrategyWithdrawDelay(
        IStrategy strategy,
        uint256 delay
    ) external onlyOwner {
        _assertStrategyValid(strategy);
        strategy.setWithdrawDelay(delay);
        emit StrategyWithdrawDelayUpdated(strategy, delay);
    }

    /// @inheritdoc IStrategyManager
    function setStrategyMinDeposit(
        IStrategy strategy,
        uint256 amount
    ) external onlyOwner {
        _assertStrategyValid(strategy);
        strategy.setMinDeposit(amount);
        emit StrategyMinDepositUpdated(strategy, amount);
    }

    /// @inheritdoc IStrategyManager
    function enableStrategy(
        IStrategy strategy,
        bool _depositEnabled,
        bool _withdrawEnabled
    ) external onlyOwner {
        _assertStrategyValid(strategy);

        depositEnabled[strategy] = _depositEnabled;
        withdrawEnabled[strategy] = _withdrawEnabled;

        emit StrategyEnabled(strategy, _depositEnabled, _withdrawEnabled);
    }

    // --
    // helper functions

    function _assertStrategyValid(IStrategy strategy) private view {
        uint8 i;
        bool valid = false;
        for (i = 0; i < strategiesLen(); i++) {
            if (strategies[i] == strategy) {
                valid = true;
                break;
            }
        }
        require(valid, "StrategyManager: Invalid strategy address");
    }
}
