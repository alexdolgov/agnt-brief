// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {
    IERC20Metadata,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {IStrategy, IStrategyWithQueue} from "@ft-common/interfaces/IStrategy.sol";
import {IftYieldWrapperV2} from "../interfaces/IftYieldWrapperV2.sol";
import {ProtectedContract} from "../cb/ProtectedContract.sol";
import {ICircuitBreakerV2} from "../cb/ICircuitBreakerV2.sol";

/// @title ftYieldWrapperV2
/// @notice Single-asset wrapper with CircuitBreakerV2 integration
/// @dev Replaces V1 CB integration with ProtectedContract mixin (fail-close pattern).
///      Fee-on-transfer (FOT) and rebasing tokens are NOT supported.
///
/// Key differences from V1:
/// - Uses ProtectedContract mixin for CB V2 integration
/// - Fail-close pattern: CB errors revert (no try/catch bypass)
/// - Deferred settlement: Large withdrawals may be queued in CB for later execution
/// - Withdrawals burn shares immediately; tokens go to user or CB (if queued)
contract ftYieldWrapperV2 is IftYieldWrapperV2, ERC20, ReentrancyGuardTransient, ProtectedContract {
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    uint256 public deployed; // default to 0

    address public immutable token;

    address public yieldClaimer;
    address public pendingYieldClaimer;
    address public strategyManager;
    address public pendingStrategyManager;
    address public treasury;
    address public pendingTreasury;
    address public subYieldClaimer;
    address public putManager;
    address public depositor;

    IStrategy[] public strategies;
    mapping(address strategy => uint256 deployed) public deployedToStrategy;

    // must be submitted by strategyManager
    address public pendingStrategy;
    uint256 public delayStrategy;
    /// @notice Timelock delay between setStrategy and confirmStrategy. Defaults to 0; set via setStrategyDelay.
    uint256 public strategyDelayConfig;
    /// @notice Minimum deposit amount. Defaults to 0 (no minimum). Set via setMinDepositAmount.
    uint256 public minDepositAmount;

    event Deployed(address strategy, uint256 allocation);
    event YieldClaimed(address yieldClaimer, address token, uint256 amount);
    event Deposit(address owner, uint256 amount);
    event Withdraw(address owner, uint256 amount);
    event WithdrawUnderlying(address owner, uint256 amount);
    event QueuedToWrapper(address strategyManager, address strategy, uint256 amount);
    event WithdrawToWrapper(address strategyManager, address strategy, uint256 amount);

    event PendingYieldClaimer(address yieldClaimer, address pendingYieldClaimer);
    event PendingStrategyManager(address strategyManager, address pendingStrategyManager);
    event PendingTreasury(address treasury, address pendingTreasuy);
    event PendingStrategy(address strategyManager, address pendingStrategy);

    event UpdateYieldClaimer(address newYieldClaimer);
    event UpdateStrategyManager(address newStrategyManager);
    event UpdateTreasury(address newTreasury);
    event UpdateSubYieldClaimer(address yieldClaimer, address subYieldClaimer);
    event UpdatePutManager(address newPutManager);
    event UpdateDepositor(address newDepositor);
    event UpdateStrategyDelayConfig(uint256 newDelay);
    event UpdateMinDepositAmount(uint256 newMinDepositAmount);

    event AddedStrategy(address strategyManager, address strategy);
    event RemovedStrategy(address strategyManager, address strategy);
    event StrategiesReordered(address[] newOrder);
    event YieldSwept(address caller, address token, uint256 amount);

    /// @notice Emitted when a withdrawal is queued due to circuit breaker rate limiting
    /// @param caller The address that initiated the withdrawal
    /// @param recipient The address that will receive tokens after settlement
    /// @param amount The amount queued
    /// @param queueId The CB queue entry ID for claiming after settlement
    event WithdrawQueued(
        address indexed caller, address indexed recipient, uint256 amount, uint256 queueId
    );

    error ftYieldWrapperInsufficientLiquidity();
    error ftYieldWrapperNotYieldClaimer();
    error ftYieldWrapperNotYieldClaimers();
    error ftYieldWrapperDelayNotExpired();
    error ftYieldWrapperNotStrategyManager();
    error ftYieldWrapperZeroAddress();
    error ftYieldWrapperNotSetter();
    error ftYieldWrapperNotConfirmer();
    error ftYieldWrapperNotYieldClaimConfirmer();
    error ftYieldWrapperSettingUnchanged();
    error ftYieldWrapperNotStrategy();
    error ftYieldWrapperNoYield();
    error ftYieldWrapperInvalidStrategyIndex();
    error ftYieldWrapperInvalidStrategiesOrder();
    error ftYieldWrapperNotPutManagerOrDepositor();
    error ftYieldWrapperFeeOnTransferUnsupported();
    error ftYieldWrapperBelowMinDeposit(uint256 amount, uint256 minimum);

    modifier onlyYieldClaimer() {
        if (msg.sender != yieldClaimer) revert ftYieldWrapperNotYieldClaimer();
        _;
    }

    modifier onlyStrategyManager() {
        if (msg.sender != strategyManager) {
            revert ftYieldWrapperNotStrategyManager();
        }
        _;
    }

    modifier onlyYieldClaimers() {
        if (msg.sender != yieldClaimer && msg.sender != subYieldClaimer) {
            revert ftYieldWrapperNotYieldClaimers();
        }
        _;
    }

    modifier onlyPutManagerOrDepositor() {
        if (msg.sender != putManager && msg.sender != depositor) {
            revert ftYieldWrapperNotPutManagerOrDepositor();
        }
        _;
    }

    /// @notice Creates a new yield wrapper for the given token
    /// @dev Name and symbol default to "Flying Tulip {token.name()}" / "ft{token.symbol()}"
    ///      if empty strings are passed. Use custom names for engine-specific wrappers,
    ///      e.g., "FT_PmintUSDT" for PermissionedMint's USDT wrapper.
    /// @param _token The underlying token address
    /// @param _yieldClaimer Address that can claim yield and execute strategy calls
    /// @param _strategyManager Address that can add/remove strategies and configure depositor
    /// @param _treasury Address that receives claimed yield
    /// @param _name Custom ERC20 name (empty string = auto-generate)
    /// @param _symbol Custom ERC20 symbol (empty string = auto-generate)
    constructor(
        address _token,
        address _yieldClaimer,
        address _strategyManager,
        address _treasury,
        string memory _name,
        string memory _symbol
    )
        ERC20(
            bytes(_name).length > 0
                ? _name
                : string.concat("Flying Tulip ", IERC20Metadata(_token).name()),
            bytes(_symbol).length > 0
                ? _symbol
                : string.concat("ft", IERC20Metadata(_token).symbol())
        )
    {
        if (_token == address(0x0)) revert ftYieldWrapperZeroAddress();
        if (_yieldClaimer == address(0x0)) revert ftYieldWrapperZeroAddress();
        if (_strategyManager == address(0x0)) {
            revert ftYieldWrapperZeroAddress();
        }
        if (_treasury == address(0x0)) revert ftYieldWrapperZeroAddress();

        token = _token;
        yieldClaimer = _yieldClaimer;
        strategyManager = _strategyManager;
        treasury = _treasury;
        // putManager defaults to 0x0
        // depositor defaults to 0x0

        emit Transfer(address(0x0), address(this), 0);
    }

    // ===== ProtectedContract Overrides =====

    function circuitBreaker()
        public
        view
        override(IftYieldWrapperV2, ProtectedContract)
        returns (address)
    {
        return _getCircuitBreaker();
    }

    /// @dev Returns the wrapper's TVL normalized to underlying decimals for CB rate limiting.
    ///      Assumes each strategy reports `valueOfCapital()` in its `positionToken()` units.
    ///      Converts each strategy leg from position-token decimals to underlying-token decimals
    ///      so CB preTvl and outflow accounting share a consistent unit basis.
    ///      For AaveStrategy this conversion is a no-op because token/aToken decimals are equal.
    function _getTvl(address) internal view override returns (uint256 tvl) {
        tvl = IERC20(token).balanceOf(address(this));
        uint8 underlyingDec = IERC20Metadata(token).decimals();
        uint256 len = strategies.length;
        for (uint256 i = 0; i < len; i++) {
            uint256 v = strategies[i].valueOfCapital();
            uint8 posDec = IERC20Metadata(strategies[i].positionToken()).decimals();
            if (posDec != underlyingDec) {
                v = (v * 10 ** underlyingDec) / (10 ** posDec);
            }
            tvl += v;
        }
    }

    // ===== Circuit Breaker Configuration =====

    /// @notice Set or disable the circuit breaker (V2)
    /// @dev Only callable by strategy manager. Set to address(0) to disable.
    /// @param _circuitBreaker Address of circuit breaker V2, or address(0) to disable
    function setCircuitBreaker(address _circuitBreaker) external onlyStrategyManager {
        _setCircuitBreaker(_circuitBreaker);
    }

    // ===== Admin Functions =====

    function setYieldClaimer(address _yieldClaimer) external onlyYieldClaimer {
        if (_yieldClaimer == address(0x0)) revert ftYieldWrapperZeroAddress();
        pendingYieldClaimer = _yieldClaimer;
        emit PendingYieldClaimer(yieldClaimer, pendingYieldClaimer);
    }

    function setSubYieldClaimer(address _subYieldClaimer) external onlyYieldClaimer {
        if (_subYieldClaimer == address(0x0)) {
            revert ftYieldWrapperZeroAddress();
        }
        subYieldClaimer = _subYieldClaimer;
        emit UpdateSubYieldClaimer(yieldClaimer, subYieldClaimer);
    }

    function confirmYieldClaimer() external {
        if (msg.sender != treasury && msg.sender != strategyManager) {
            revert ftYieldWrapperNotYieldClaimConfirmer();
        }
        if (pendingYieldClaimer == address(0x0)) {
            revert ftYieldWrapperZeroAddress();
        }
        if (yieldClaimer == pendingYieldClaimer) {
            revert ftYieldWrapperSettingUnchanged();
        }
        yieldClaimer = pendingYieldClaimer;
        pendingYieldClaimer = address(0x0);
        emit UpdateYieldClaimer(yieldClaimer);
    }

    function setStrategyManager(address _strategyManager) external onlyStrategyManager {
        if (_strategyManager == address(0x0)) {
            revert ftYieldWrapperZeroAddress();
        }
        pendingStrategyManager = _strategyManager;
        emit PendingStrategyManager(strategyManager, pendingStrategyManager);
    }

    function confirmStrategyManager() external {
        if (msg.sender != treasury && msg.sender != yieldClaimer) {
            revert ftYieldWrapperNotConfirmer();
        }
        if (pendingStrategyManager == address(0x0)) {
            revert ftYieldWrapperZeroAddress();
        }
        if (strategyManager == pendingStrategyManager) {
            revert ftYieldWrapperSettingUnchanged();
        }
        strategyManager = pendingStrategyManager;
        pendingStrategyManager = address(0x0);
        emit UpdateStrategyManager(strategyManager);
    }

    function setTreasury(address _treasury) external {
        if (msg.sender != treasury) revert ftYieldWrapperNotSetter();
        if (_treasury == address(0x0)) revert ftYieldWrapperZeroAddress();
        pendingTreasury = _treasury;
        emit PendingTreasury(treasury, pendingTreasury);
    }

    function confirmTreasury() external {
        if (msg.sender != strategyManager && msg.sender != yieldClaimer) {
            revert ftYieldWrapperNotConfirmer();
        }
        if (pendingTreasury == address(0x0)) revert ftYieldWrapperZeroAddress();
        if (treasury == pendingTreasury) {
            revert ftYieldWrapperSettingUnchanged();
        }
        treasury = pendingTreasury;
        pendingTreasury = address(0x0);
        emit UpdateTreasury(treasury);
    }

    function setPutManager(address _putManager) external onlyStrategyManager {
        if (_putManager == address(0x0)) revert ftYieldWrapperZeroAddress();
        putManager = _putManager;
        emit UpdatePutManager(_putManager);
    }

    function setDepositor(address _depositor) external onlyStrategyManager {
        if (_depositor == address(0x0)) revert ftYieldWrapperZeroAddress();
        depositor = _depositor;
        emit UpdateDepositor(_depositor);
    }

    /// @notice Sets the minimum deposit amount. Use 0 to allow any amount.
    /// @param _minDepositAmount The new minimum deposit amount in underlying token units
    function setMinDepositAmount(uint256 _minDepositAmount) external onlyStrategyManager {
        minDepositAmount = _minDepositAmount;
        emit UpdateMinDepositAmount(_minDepositAmount);
    }

    function setStrategyDelay(uint256 _delay) external {
        if (msg.sender != treasury) revert ftYieldWrapperNotConfirmer();
        strategyDelayConfig = _delay;
        emit UpdateStrategyDelayConfig(_delay);
    }

    // ===== Strategy Management =====

    function setStrategy(address _strategy) external onlyStrategyManager {
        if (_strategy == address(0x0)) revert ftYieldWrapperZeroAddress();
        if (isStrategy(_strategy) || IStrategy(_strategy).token() != token) {
            revert ftYieldWrapperNotStrategy();
        }
        uint256 effectiveTime = block.timestamp + strategyDelayConfig;
        pendingStrategy = _strategy;
        delayStrategy = effectiveTime;
        emit PendingStrategy(strategyManager, pendingStrategy);
    }

    function confirmStrategy() external {
        if (msg.sender != treasury) revert ftYieldWrapperNotConfirmer();
        if (pendingStrategy == address(0x0)) revert ftYieldWrapperZeroAddress();
        if (delayStrategy > block.timestamp) revert ftYieldWrapperDelayNotExpired();
        strategies.push(IStrategy(pendingStrategy));
        emit AddedStrategy(strategyManager, pendingStrategy);
        // Ensure strategy wrapper pointer is set (no-op if already this wrapper)
        try IStrategy(pendingStrategy).setftYieldWrapper(address(this)) {}
            catch {
            // strategies are expected to support this; ignore to avoid bricking
        }
        pendingStrategy = address(0x0);
        delayStrategy = 0;
        emit PendingStrategy(strategyManager, pendingStrategy);
    }

    /// @notice Remove a strategy whose wrapper share balance is zero.
    function removeStrategy(uint256 index) external onlyStrategyManager {
        uint256 len = strategies.length;
        if (index >= len) {
            revert ftYieldWrapperInvalidStrategyIndex();
        }

        IStrategy s = strategies[index];
        if (deployedToStrategy[address(s)] != 0) {
            revert ftYieldWrapperNotStrategy();
        }

        address removed = address(s);
        // swap & pop
        if (index != len - 1) {
            strategies[index] = strategies[len - 1];
        }
        strategies.pop();
        emit RemovedStrategy(msg.sender, removed);
    }

    function isStrategy(address _strategy) public view returns (bool) {
        uint256 strategiesLength = strategies.length;
        for (uint256 i = 0; i < strategiesLength; i++) {
            if (address(strategies[i]) == _strategy) return true;
        }
        return false;
    }

    function setStrategiesOrder(address[] calldata _newOrder) external onlyStrategyManager {
        uint256 currentLength = strategies.length;

        if (_newOrder.length != currentLength) {
            revert ftYieldWrapperInvalidStrategiesOrder();
        }

        for (uint256 i = 0; i < currentLength; i++) {
            if (!isStrategy(_newOrder[i])) {
                revert ftYieldWrapperInvalidStrategiesOrder();
            }
            for (uint256 j = i + 1; j < currentLength; j++) {
                if (_newOrder[i] == _newOrder[j]) {
                    revert ftYieldWrapperInvalidStrategiesOrder();
                }
            }
        }

        for (uint256 i = 0; i < currentLength; i++) {
            strategies[i] = IStrategy(_newOrder[i]);
        }

        emit StrategiesReordered(_newOrder);
    }

    // ===== Yield Management =====

    function claimYield(address _strategy) external onlyYieldClaimers returns (uint256 _yield) {
        if (!isStrategy(_strategy)) revert ftYieldWrapperNotStrategy();
        _yield = IStrategy(_strategy).claimYield(treasury);
        if (_yield == 0) revert ftYieldWrapperNoYield();
        emit YieldClaimed(msg.sender, address(token), _yield);
    }

    function claimYields() external onlyYieldClaimers returns (uint256 _yield) {
        uint256 strategiesLength = strategies.length;
        address _treasury = treasury;
        for (uint256 i = 0; i < strategiesLength; i++) {
            _yield += IStrategy(strategies[i]).claimYield(_treasury);
        }
        if (_yield == 0) revert ftYieldWrapperNoYield();
        emit YieldClaimed(msg.sender, address(token), _yield);
    }

    function sweepIdleYield() external nonReentrant onlyYieldClaimers returns (uint256 amount) {
        uint256 idleBalance = IERC20(token).balanceOf(address(this));
        uint256 liabilities = totalSupply();
        if (idleBalance <= liabilities) revert ftYieldWrapperNoYield();
        amount = idleBalance - liabilities;
        IERC20(token).safeTransfer(treasury, amount);
        emit YieldSwept(msg.sender, address(token), amount);
    }

    function execute(
        address _strategy,
        address to,
        uint256 value,
        bytes calldata data
    )
        external
        onlyYieldClaimers
        returns (bool success, bytes memory result)
    {
        if (!isStrategy(_strategy)) revert ftYieldWrapperNotStrategy();
        return IStrategy(_strategy).execute(to, value, data);
    }

    // ===== View Functions =====

    function numberOfStrategies() external view returns (uint256) {
        return strategies.length;
    }

    function capital() external view returns (uint256) {
        return totalSupply();
    }

    function valueOfCapital() public view returns (uint256 _capital) {
        _capital = IERC20(token).balanceOf(address(this));
        uint256 strategiesLength = strategies.length;
        for (uint256 i = 0; i < strategiesLength; i++) {
            _capital += strategies[i].valueOfCapital();
        }
    }

    function yield() public view returns (uint256) {
        uint256 _capital = valueOfCapital();
        uint256 _totalSupply = totalSupply();
        return (_capital > _totalSupply) ? (_capital - _totalSupply) : 0;
    }

    function availableToWithdraw(address strategy) public view returns (uint256 liquidity) {
        if (!isStrategy(strategy)) return 0;
        uint256 shares;
        try IStrategy(strategy).balanceOf(address(this)) returns (uint256 sb) {
            shares = sb;
        } catch {
            return 0;
        }
        try IStrategy(strategy).maxAbleToWithdraw(shares) returns (uint256 m) {
            liquidity = m;
        } catch {
            return 0;
        }
    }

    function availableToWithdraw() public view returns (uint256 liquidity) {
        liquidity = IERC20(token).balanceOf(address(this));
        uint256 strategiesLength = strategies.length;
        for (uint256 i = 0; i < strategiesLength; i++) {
            uint256 shares;
            try strategies[i].balanceOf(address(this)) returns (uint256 sb) {
                shares = sb;
            } catch {
                shares = 0;
            }
            if (shares != 0) {
                try strategies[i].maxAbleToWithdraw(shares) returns (uint256 m) {
                    liquidity += m;
                } catch {
                    // treat as zero
                }
            }
        }
    }

    function canWithdraw(uint256 amount) external view returns (bool) {
        return (availableToWithdraw() >= amount);
    }

    function maxAbleToWithdraw(uint256 amount) external view returns (uint256) {
        uint256 _liquidity = availableToWithdraw();
        return _liquidity > amount ? amount : _liquidity;
    }

    function availableToDeposit() external view returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    // ===== Core Deposit/Withdraw Functions =====

    /// @notice Deposit underlying tokens into the wrapper and receive wrapper tokens
    /// @dev Records inflow with circuit breaker (fail-close pattern).
    ///      Fee-on-transfer tokens are NOT supported and will revert.
    /// @param amount The amount of underlying tokens to deposit
    function deposit(uint256 amount) external nonReentrant onlyPutManagerOrDepositor {
        if (amount == 0) revert ftYieldWrapperInsufficientLiquidity();
        uint256 _minDeposit = minDepositAmount;
        if (_minDeposit != 0 && amount < _minDeposit) {
            revert ftYieldWrapperBelowMinDeposit(amount, _minDeposit);
        }

        // Record inflow with circuit breaker (fail-close: will revert if CB errors)
        // preTvl normalized to underlying decimals for consistent CB accounting
        uint256 preTvl = _getTvl(token);

        uint256 balBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        if (IERC20(token).balanceOf(address(this)) != balBefore + amount) {
            revert ftYieldWrapperFeeOnTransferUnsupported();
        }

        // Record inflow after successful transfer
        _recordInflow(token, amount, preTvl);

        _mint(msg.sender, amount);
        emit Deposit(msg.sender, amount);
    }

    /// @notice Withdraw underlying tokens from the wrapper
    /// @dev Uses protected transfer (fail-close pattern). Large withdrawals may be queued
    ///      in the circuit breaker for later settlement. Shares are burned immediately.
    ///
    ///      If withdrawal is queued:
    ///      - Shares are burned immediately
    ///      - Tokens are transferred to circuit breaker
    ///      - User must call CB.executeQueued(queueId) after settlement delay
    ///
    /// @param amount The amount of underlying tokens to withdraw
    /// @param to The recipient address (receives tokens immediately or after CB settlement)
    /// @return queueId The CB queue entry ID if the withdrawal was queued, 0 if immediate
    function withdraw(
        uint256 amount,
        address to
    )
        external
        nonReentrant
        onlyPutManagerOrDepositor
        returns (uint256 queueId)
    {
        return _withdrawReturningQueueId(amount, to);
    }

    function _withdrawReturningQueueId(
        uint256 amount,
        address to
    )
        internal
        returns (uint256 queueId)
    {
        if (to == address(0)) revert ftYieldWrapperZeroAddress();
        if (amount == 0) revert ftYieldWrapperInsufficientLiquidity();

        uint256 initialTarget = amount;
        uint256 remaining = amount;

        // 1) Use idle underlying on the wrapper first
        uint256 idle = IERC20(token).balanceOf(address(this));
        if (idle != 0) {
            uint256 toTake = idle > remaining ? remaining : idle;
            remaining -= toTake;
        }

        // 2) Drain strategies in order
        uint256 _strategiesLength = strategies.length;
        for (uint256 i = 0; i < _strategiesLength && remaining != 0; i++) {
            uint256 shareBal;
            try strategies[i].balanceOf(address(this)) returns (uint256 sb) {
                shareBal = sb;
            } catch {
                continue;
            }
            if (shareBal == 0) {
                continue;
            }

            uint256 avail;
            try strategies[i].maxAbleToWithdraw(shareBal) returns (uint256 m) {
                avail = m;
            } catch {
                continue;
            }
            if (avail == 0) {
                continue;
            }

            uint256 toRequest = avail > remaining ? remaining : avail;
            try strategies[i].withdraw(toRequest) returns (uint256 received) {
                if (received != 0) {
                    uint256 currentDeployed = deployedToStrategy[address(strategies[i])];
                    uint256 toReduce = received > currentDeployed ? currentDeployed : received;

                    deployedToStrategy[address(strategies[i])] -= toReduce;
                    if (toReduce > deployed) {
                        deployed = 0;
                    } else {
                        deployed -= toReduce;
                    }
                    if (received > remaining) {
                        remaining = 0;
                    } else {
                        remaining -= received;
                    }
                }
            } catch {
                // Skip failing strategies and continue
            }
        }

        uint256 totalDelivered = initialTarget - remaining;
        if (remaining != 0) {
            revert ftYieldWrapperInsufficientLiquidity();
        }

        // Burn shares immediately (before transfer)
        if (totalDelivered != 0) {
            _burn(msg.sender, totalDelivered);
        }

        // Protected transfer: may be immediate or queued
        // If CB not set: immediate transfer to `to`
        // If CB set, within limit: immediate transfer to `to`
        // If CB set, exceeds limit: transfer to CB, user claims later
        queueId = _protectedTransfer(token, to, totalDelivered);

        if (queueId > 0) {
            emit WithdrawQueued(msg.sender, to, totalDelivered, queueId);
        } else {
            emit Withdraw(msg.sender, totalDelivered);
        }
    }

    /// @dev Circuit breaker rate limits all position-token outflows against a single aggregate
    ///      bucket keyed by the wrapper's underlying `token`, preventing bypass via multiple
    ///      strategies. Large withdrawals may be queued in the CB for later settlement.
    ///
    ///      Assumes position tokens have an approximately 1:1 economic relationship with the
    ///      underlying token. The limiter consumes `limiterAmount` in underlying decimals, while
    ///      queue settlement transfers `got` in position-token decimals.
    ///
    ///      Strategy integration invariant:
    ///      - `valueOfCapital()` MUST be returned in `positionToken()` units.
    ///      - `withdrawUnderlying()` MUST return the actual `positionToken()` amount transferred.
    ///
    ///      Flow: Pull position tokens to wrapper -> protectedTransferWithLimiter to user/CB
    ///
    ///      Use case: When strategies cannot liquidate to underlying (e.g., paused).
    ///
    /// @param amount The amount (in underlying/share terms) to withdraw
    /// @param to The recipient address for position tokens
    /// @return queueIds Compact array of CB queue entry IDs for withdrawals that were queued.
    ///         Only contains non-zero IDs; empty if all transfers were immediate.
    function withdrawUnderlying(
        uint256 amount,
        address to
    )
        external
        nonReentrant
        onlyPutManagerOrDepositor
        returns (uint256[] memory queueIds)
    {
        if (to == address(0)) revert ftYieldWrapperZeroAddress();
        if (amount == 0) revert ftYieldWrapperInsufficientLiquidity();

        // Capture preTvl BEFORE pulling position tokens from strategies.
        // Normalized to underlying decimals for consistent CB rate-limit accounting.
        uint256 preTvl = _getTvl(token);

        uint256 initialTarget = amount;
        uint256 remaining = amount;
        uint256 _strategiesLength = strategies.length;
        queueIds = new uint256[](_strategiesLength);
        uint256 n; // write pointer for compact queueIds

        for (uint256 i = 0; i < _strategiesLength && remaining != 0; ++i) {
            uint256 shareBal = strategies[i].balanceOf(address(this));
            if (shareBal == 0) continue;

            // Track "asked" amount, not "got" - these are share/yield tokens
            uint256 toExit = shareBal > remaining ? remaining : shareBal;

            try strategies[i].withdrawUnderlying(toExit) returns (uint256 got) {
                if (got != 0) {
                    // Update deployed tracking based on asked amount (share accounting)
                    uint256 currentDeployed = deployedToStrategy[address(strategies[i])];
                    uint256 toReduce = toExit > currentDeployed ? currentDeployed : toExit;

                    deployedToStrategy[address(strategies[i])] -= toReduce;
                    if (toReduce > deployed) {
                        deployed = 0;
                    } else {
                        deployed -= toReduce;
                    }
                    remaining -= toExit;

                    // Position tokens now in wrapper - send via protectedTransferWithTvl
                    // Use preTvl captured before internal token movements
                    address positionToken = strategies[i].positionToken();

                    // Normalize got to underlying decimals for rate-limit accounting.
                    // The actual transfer uses got (position-token decimals).
                    uint256 limiterAmount = got;
                    uint8 posDecimals = IERC20Metadata(positionToken).decimals();
                    uint8 underlyingDecimals = IERC20Metadata(token).decimals();
                    if (posDecimals != underlyingDecimals) {
                        limiterAmount = (got * 10 ** underlyingDecimals) / (10 ** posDecimals);
                    }

                    uint256 queueId = _protectedTransferWithTvlAndLimiter(
                        positionToken, to, got, preTvl, token, limiterAmount
                    );

                    if (queueId > 0) {
                        queueIds[n++] = queueId;
                        emit WithdrawQueued(msg.sender, to, got, queueId);
                    }
                }
            } catch {
                // strategy doesn't support exit-in-position-token or failed; skip
            }
        }

        // Truncate queueIds to only the `n` non-zero entries that were written.
        // Memory arrays have fixed length; this overwrites the length slot in-place
        // so the ABI encoder only returns the filled entries (empty array if n == 0).
        assembly { mstore(queueIds, n) }

        uint256 totalDelivered = initialTarget - remaining;
        if (remaining != 0) {
            revert ftYieldWrapperInsufficientLiquidity();
        }

        if (totalDelivered != 0) {
            _burn(msg.sender, totalDelivered);
        }

        emit WithdrawUnderlying(msg.sender, totalDelivered);
    }

    // ===== Strategy Capital Management =====

    function deploy(address strategy, uint256 amount) external nonReentrant onlyYieldClaimer {
        if (!isStrategy(strategy)) revert ftYieldWrapperNotStrategy();
        if (IERC20(token).balanceOf(address(this)) < amount) {
            revert ftYieldWrapperInsufficientLiquidity();
        }
        IERC20(token).forceApprove(address(strategy), amount);
        IStrategy(strategy).deposit(amount);
        deployedToStrategy[strategy] += amount;
        deployed += amount;
        emit Deployed(strategy, amount);
    }

    function forceWithdrawToWrapper(
        address strategy,
        uint256 amount
    )
        external
        nonReentrant
        onlyYieldClaimer
    {
        if (!isStrategy(strategy)) revert ftYieldWrapperNotStrategy();

        uint256 _withdrawn = IStrategy(strategy).withdraw(amount);

        uint256 currentDeployed = deployedToStrategy[strategy];
        uint256 toReduce = _withdrawn > currentDeployed ? currentDeployed : _withdrawn;

        deployedToStrategy[strategy] -= toReduce;
        if (toReduce > deployed) {
            deployed = 0;
        } else {
            deployed -= toReduce;
        }

        emit WithdrawToWrapper(msg.sender, strategy, _withdrawn);
    }

    function withdrawQueued(
        address strategy,
        uint256 amount
    )
        external
        nonReentrant
        onlyYieldClaimer
        returns (uint256 id)
    {
        if (!isStrategy(strategy)) revert ftYieldWrapperNotStrategy();

        id = IStrategyWithQueue(strategy).withdrawQueued(amount);
        emit QueuedToWrapper(msg.sender, strategy, amount);
    }

    function claimQueued(
        address strategy,
        uint256 id
    )
        external
        nonReentrant
        onlyYieldClaimer
        returns (uint256 received)
    {
        if (!isStrategy(strategy)) revert ftYieldWrapperNotStrategy();

        received = IStrategyWithQueue(strategy).claimQueued(id);

        uint256 currentDeployed = deployedToStrategy[strategy];
        uint256 toReduce = received > currentDeployed ? currentDeployed : received;

        deployedToStrategy[strategy] -= toReduce;
        if (toReduce > deployed) {
            deployed = 0;
        } else {
            deployed -= toReduce;
        }

        emit WithdrawToWrapper(msg.sender, strategy, received);
    }

    function decimals() public view override(ERC20, IERC20Metadata) returns (uint8) {
        return IERC20Metadata(token).decimals();
    }
}
