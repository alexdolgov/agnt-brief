// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ConnectorBase, IERC20Like} from "./ConnectorBase.sol";

interface IV2Router {
    function addLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function removeLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);
}

interface IV2PoolFactory {
    function getPool(address tokenA, address tokenB, bool stable) external view returns (address);
}

interface IVoterV2 {
    function gauges(address pool) external view returns (address);
}

/// @dev Solidly v2 gauge — stakes the v2 LP (the pool ERC20), NOT a CL NFT.
///      `deposit`/`withdraw` take an ERC20 amount; `getReward(account)` is callable
///      by the account and does NOT auto-run on withdraw.
interface IV2Gauge {
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function getReward(address account) external;
    function balanceOf(address account) external view returns (uint256);
}

/// @title ConnectorV2
/// @notice Solidly v2 (volatile + stable) liquidity lifecycle as ATOMIC primitives,
///         delegatecalled by a TopazAccount. Because a v2 LP is a fungible ERC20
///         (the pool itself), there is NO runtime handle — every op is a clean
///         standalone primitive with no fusion and no internal swap.
///
///         **No internal approve / swap / native-wrap.** add/remove/stake rely on
///         explicit prior `ConnectorToken.approve` (router or gauge) and
///         `ConnectorToken.wrapNative` legs. Single-token add and compound are
///         off-chain expander sequences (swapExactIn + add + stake), not connector
///         functions. Outputs stay in the account (working balance).
contract ConnectorV2 is ConnectorBase {
    address public immutable router;
    address public immutable poolFactory;
    address public immutable voter;

    struct AddParams {
        address tokenA;
        address tokenB;
        bool stable;
        uint256 amountA; // or USE_FULL_BALANCE
        uint256 amountB; // or USE_FULL_BALANCE
        uint256 amountAMin;
        uint256 amountBMin;
        uint256 deadline;
    }

    struct RemoveParams {
        address tokenA;
        address tokenB;
        bool stable;
        uint256 liquidity; // LP to burn, or USE_FULL_BALANCE (held LP)
        uint256 amountAMin;
        uint256 amountBMin;
        uint256 deadline;
    }

    struct StakeParams {
        address tokenA;
        address tokenB;
        bool stable;
        uint256 amount; // LP to (un)stake, or USE_FULL_BALANCE
    }

    struct ClaimParams {
        address tokenA;
        address tokenB;
        bool stable;
    }

    event V2LiquidityAdded(address indexed account, address indexed pool, uint256 liquidity);
    event V2LiquidityRemoved(address indexed account, address indexed pool, uint256 liquidity);
    event V2Staked(address indexed account, address indexed gauge, uint256 amount);
    event V2Unstaked(address indexed account, address indexed gauge, uint256 amount);
    event V2RewardClaimed(address indexed account, address indexed gauge);

    error PoolNotFound();
    error GaugeNotFound();
    error NothingToAdd();
    error NothingToRemove();
    error NothingToStake();

    constructor(address _wbnb, address _router, address _poolFactory, address _voter) ConnectorBase(_wbnb) {
        router = _router;
        poolFactory = _poolFactory;
        voter = _voter;
    }

    /// @dev V2_ADD_LIQUIDITY. Proportional add at the live reserve ratio; the router
    ///      pulls the optimal amounts (≤ approved), LP to the account. Relies on
    ///      prior approve(tokenA,router) + approve(tokenB,router) legs.
    function addLiquidity(AddParams calldata p)
        external
        payable
        returns (uint256 amountA, uint256 amountB, uint256 liquidity)
    {
        address pool = _pool(p.tokenA, p.tokenB, p.stable);
        uint256 amtA = _resolveAmount(p.tokenA, p.amountA);
        uint256 amtB = _resolveAmount(p.tokenB, p.amountB);
        if (amtA == 0 || amtB == 0) revert NothingToAdd();
        (amountA, amountB, liquidity) = IV2Router(router).addLiquidity(
            p.tokenA, p.tokenB, p.stable, amtA, amtB, p.amountAMin, p.amountBMin, address(this), p.deadline
        );
        emit V2LiquidityAdded(address(this), pool, liquidity);
    }

    /// @dev V2_REMOVE_LIQUIDITY. Burn held LP for both tokens (to the account).
    ///      Relies on a prior approve(pool,router) leg; unstake separately first.
    function removeLiquidity(RemoveParams calldata p)
        external
        payable
        returns (uint256 amountA, uint256 amountB)
    {
        address pool = _pool(p.tokenA, p.tokenB, p.stable);
        uint256 lpAmount = _resolveAmount(pool, p.liquidity);
        if (lpAmount == 0) revert NothingToRemove();
        (amountA, amountB) = IV2Router(router).removeLiquidity(
            p.tokenA, p.tokenB, p.stable, lpAmount, p.amountAMin, p.amountBMin, address(this), p.deadline
        );
        emit V2LiquidityRemoved(address(this), pool, lpAmount);
    }

    /// @dev V2_STAKE. Deposit held LP into the pool's gauge. Relies on a prior
    ///      approve(pool,gauge) leg.
    function stake(StakeParams calldata p) external payable {
        address pool = _pool(p.tokenA, p.tokenB, p.stable);
        address gauge = _gauge(pool);
        uint256 amount = _resolveAmount(pool, p.amount);
        if (amount == 0) revert NothingToStake();
        IV2Gauge(gauge).deposit(amount);
        emit V2Staked(address(this), gauge, amount);
    }

    /// @dev V2_UNSTAKE. Withdraw LP from the gauge to the account (no auto-claim;
    ///      claim separately). `amount` sentinel = the account's full staked balance.
    function unstake(StakeParams calldata p) external payable {
        address pool = _pool(p.tokenA, p.tokenB, p.stable);
        address gauge = _gauge(pool);
        uint256 staked = IV2Gauge(gauge).balanceOf(address(this));
        uint256 amount = (p.amount == USE_FULL_BALANCE || p.amount > staked) ? staked : p.amount;
        if (amount == 0) return;
        IV2Gauge(gauge).withdraw(amount);
        emit V2Unstaked(address(this), gauge, amount);
    }

    /// @dev V2_CLAIM. Claim gauge emissions into the account (working balance).
    function claim(ClaimParams calldata p) external payable {
        address pool = _pool(p.tokenA, p.tokenB, p.stable);
        address gauge = _gauge(pool);
        IV2Gauge(gauge).getReward(address(this));
        emit V2RewardClaimed(address(this), gauge);
    }

    function _pool(address tokenA, address tokenB, bool stable) private view returns (address pool) {
        pool = IV2PoolFactory(poolFactory).getPool(tokenA, tokenB, stable);
        if (pool == address(0)) revert PoolNotFound();
    }

    function _gauge(address pool) private view returns (address gauge) {
        gauge = IVoterV2(voter).gauges(pool);
        if (gauge == address(0)) revert GaugeNotFound();
    }
}
