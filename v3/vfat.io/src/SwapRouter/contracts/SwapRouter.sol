// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";
import {
    IUniswapV3Factory
} from "contracts/interfaces/external/uniswap/IUniswapV3Factory.sol";
import {
    IAlgebraFactory
} from "contracts/interfaces/external/algebra/IAlgebraFactory.sol";
import {
    IUniswapV3Pool,
    IUniswapV3PoolImmutables
} from "contracts/interfaces/external/uniswap/IUniswapV3Pool.sol";
import {
    ISlipstreamFactory
} from "contracts/interfaces/external/aerodrome/ISlipstreamFactory.sol";
import { IDexAdapter } from "contracts/dex/IDexAdapter.sol";
import { DexType, SwapStep } from "contracts/dex/SwapTypes.sol";

/// @title SwapRouter
/// @notice A router that executes multi-hop swaps across different DEXs
/// @dev Called via AggregatorConnector like Paraswap/Odos. Each
/// `DexType` is handled by a hot-swappable adapter registered via
/// `setDexAdapter`. SwapRouter owns custody of tokens and ETH; adapters
/// orchestrate via `adapterApprove` / `adapterCall` / `adapterPull`
/// while marked as `_activeAdapter`.
contract SwapRouter {
    // ══════════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ══════════════════════════════════════════════════════════════════════════════

    /// @notice Maximum fee in basis points (1%)
    uint256 public constant MAX_FEE_BPS = 100;

    /// @notice Basis points denominator
    uint256 public constant BPS_DENOMINATOR = 10_000;

    // ══════════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ══════════════════════════════════════════════════════════════════════════════

    /// @notice Router allowlist for security
    IRouterAllowlist public immutable allowlist;

    /// @notice Fee collector address
    address public immutable feeCollector;

    /// @notice Wrapped native token address (WETH/WAVAX/etc.)
    address public immutable wrappedNative;

    // ══════════════════════════════════════════════════════════════════════════════
    // STORAGE
    // ══════════════════════════════════════════════════════════════════════════════

    /// @notice Admin address for configuration
    address public admin;

    /// @notice Fee in basis points (default 1 bp = 0.01%)
    uint256 public feeBps = 1;

    /// @notice Per-`DexType` adapter address. `_executeStep` dispatches
    /// every swap through the registered adapter; an unset slot reverts
    /// with `AdapterNotSet`.
    /// @dev Keyed by `uint8` (not `DexType`) so future enum entries can
    /// be appended without breaking the public ABI on already-deployed
    /// instances.
    mapping(uint8 dexType => address adapter) public dexAdapter;

    /// @notice Adapter currently authorised to call `adapterApprove` /
    /// `adapterCall` / `adapterPull`. Set immediately before
    /// `IDexAdapter.swap` and cleared after it returns. Regular storage
    /// (not TSTORE/TLOAD) because not every chain in the deployment
    /// matrix is confirmed Cancun-capable; explicit clear gives the
    /// same single-call-scoping guarantee at a small gas cost.
    address private _activeAdapter;

    // ══════════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ══════════════════════════════════════════════════════════════════════════════

    error AdapterNotSet(DexType dexType);
    error AdapterNotContract();
    error NotAdapter();
    error SwapFailed(bytes error);
    error InsufficientOutputAmount(uint256 received, uint256 minRequired);
    error InvalidStepsLength();
    error InvalidSplitLength();
    error InvalidEthInput();
    error Expired();
    error NotAdmin();
    error InvalidAddress();
    error FeeTooHigh();
    error InvalidPool();
    error InvalidTokenIn();
    error InvalidTokenPath();
    error FeeOnTransferNotSupported();

    // ══════════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ══════════════════════════════════════════════════════════════════════════════

    event MultiSwap(
        address indexed sender,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 minAmountOut,
        uint256 amountOut,
        uint256 feeAmount
    );

    event Sweep(address indexed token, uint256 amount);

    event FeeUpdated(uint256 oldFeeBps, uint256 newFeeBps);

    event AdminUpdated(address oldAdmin, address newAdmin);

    event DexAdapterSet(
        uint8 indexed dexType, address oldAdapter, address newAdapter
    );

    // ══════════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ══════════════════════════════════════════════════════════════════════════════
    //
    // `DexType` and `SwapStep` are declared at file scope in
    // `contracts/dex/SwapTypes.sol` so per-DEX adapters can reference them
    // without depending on this concrete `SwapRouter` implementation.

    // ══════════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ══════════════════════════════════════════════════════════════════════════════

    /// @param allowlist_ Router allowlist contract
    /// @param admin_ Admin address for configuration
    /// @param feeCollector_ Address to receive fees
    constructor(
        address allowlist_,
        address admin_,
        address feeCollector_,
        address wrappedNative_
    ) {
        if (allowlist_ == address(0)) revert InvalidAddress();
        if (admin_ == address(0)) revert InvalidAddress();
        if (feeCollector_ == address(0)) revert InvalidAddress();
        if (wrappedNative_ == address(0)) revert InvalidAddress();
        allowlist = IRouterAllowlist(allowlist_);
        admin = admin_;
        feeCollector = feeCollector_;
        wrappedNative = wrappedNative_;
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // EXTERNAL FUNCTIONS
    // ══════════════════════════════════════════════════════════════════════════════

    /// @notice Execute a multi-step swap
    /// @param steps Array of swap steps to execute
    /// @param amountIn Amount of input token
    /// @param minAmountOut Minimum output amount
    /// @param recipient Address to receive output tokens
    /// @param deadline Transaction deadline
    /// @return amountOut Actual output amount
    function swap(
        SwapStep[] calldata steps,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) external payable returns (uint256 amountOut) {
        (amountOut,) = _swap(steps, amountIn, minAmountOut, recipient, deadline);
    }

    /// @notice Execute a multi-step swap and return both output and fee.
    /// @dev Used by `BridgeRouter` for exact bridge telemetry without inferring
    /// fees from fee-collector balance changes.
    function swapWithFee(
        SwapStep[] calldata steps,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) external payable returns (uint256 amountOut, uint256 fee) {
        return _swap(steps, amountIn, minAmountOut, recipient, deadline);
    }

    function _swap(
        SwapStep[] calldata steps,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) internal returns (uint256 amountOut, uint256 fee) {
        if (block.timestamp > deadline) revert Expired();
        if (steps.length == 0) revert InvalidStepsLength();

        // Execute all steps — use actual received amount (may differ for FOT
        // tokens)
        uint256 currentAmount = _pullInput(steps[0].tokenIn, amountIn);
        for (uint256 i; i < steps.length; i++) {
            if (i > 0 && steps[i].tokenIn != steps[i - 1].tokenOut) {
                revert InvalidTokenPath();
            }
            currentAmount = _executeStep(steps[i], currentAmount);
        }

        // Apply fee and transfer output
        address tokenOut = steps[steps.length - 1].tokenOut;
        (amountOut, fee) = _applyFeeAndTransfer(
            tokenOut, currentAmount, minAmountOut, recipient
        );

        emit MultiSwap(
            msg.sender,
            steps[0].tokenIn,
            tokenOut,
            amountIn,
            minAmountOut,
            amountOut,
            fee
        );
    }

    /// @notice Execute a split swap across multiple parallel routes
    /// @dev All routes must have the same input token and output token
    /// @param routes Array of routes, each route is an array of swap steps
    /// @param amounts Amount of input token for each route
    /// @param minAmountOut Minimum total output amount
    /// @param recipient Address to receive output tokens
    /// @param deadline Transaction deadline
    /// @return amountOut Total output amount after fees
    function swapSplit(
        SwapStep[][] calldata routes,
        uint256[] calldata amounts,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) external payable returns (uint256 amountOut) {
        if (block.timestamp > deadline) revert Expired();
        if (routes.length == 0 || routes.length != amounts.length) {
            revert InvalidSplitLength();
        }

        // All routes must have same input and output token
        address tokenIn = routes[0][0].tokenIn;
        address tokenOut = routes[0][routes[0].length - 1].tokenOut;

        // Calculate total input and validate routes
        uint256 totalAmountIn =
            _validateAndSumAmounts(routes, amounts, tokenIn, tokenOut);

        uint256 actualReceived = _pullInput(tokenIn, totalAmountIn);
        if (actualReceived != totalAmountIn) {
            revert FeeOnTransferNotSupported();
        }

        // Execute all routes and sum outputs
        uint256 totalOutput = _executeRoutes(routes, amounts);

        // Apply fee and transfer
        uint256 fee;
        (amountOut, fee) = _applyFeeAndTransfer(
            tokenOut, totalOutput, minAmountOut, recipient
        );

        emit MultiSwap(
            msg.sender,
            tokenIn,
            tokenOut,
            totalAmountIn,
            minAmountOut,
            amountOut,
            fee
        );
    }

    function _validateAndSumAmounts(
        SwapStep[][] calldata routes,
        uint256[] calldata amounts,
        address tokenIn,
        address tokenOut
    ) internal pure returns (uint256 total) {
        if (routes[0].length == 0) revert InvalidStepsLength();
        total = amounts[0];
        for (uint256 i = 1; i < amounts.length; i++) {
            total += amounts[i];
            if (routes[i].length == 0) revert InvalidStepsLength();
            if (routes[i][0].tokenIn != tokenIn) revert InvalidStepsLength();
            if (routes[i][routes[i].length - 1].tokenOut != tokenOut) {
                revert InvalidStepsLength();
            }
        }
    }

    function _executeRoutes(
        SwapStep[][] calldata routes,
        uint256[] calldata amounts
    ) internal returns (uint256 totalOutput) {
        for (uint256 r; r < routes.length; r++) {
            totalOutput += _executeSingleRoute(routes[r], amounts[r]);
        }
    }

    function _executeSingleRoute(
        SwapStep[] calldata steps,
        uint256 amountIn
    ) internal returns (uint256 currentAmount) {
        currentAmount = amountIn;
        for (uint256 s; s < steps.length; s++) {
            if (s > 0 && steps[s].tokenIn != steps[s - 1].tokenOut) {
                revert InvalidTokenPath();
            }
            currentAmount = _executeStep(steps[s], currentAmount);
        }
    }

    function _applyFeeAndTransfer(
        address tokenOut,
        uint256 totalOutput,
        uint256 minAmountOut,
        address recipient
    ) internal returns (uint256 amountAfterFee, uint256 fee) {
        fee = (totalOutput * feeBps) / BPS_DENOMINATOR;
        amountAfterFee = totalOutput - fee;

        if (amountAfterFee < minAmountOut) {
            revert InsufficientOutputAmount(amountAfterFee, minAmountOut);
        }

        if (fee > 0) {
            if (tokenOut == address(0)) {
                SafeTransferLib.safeTransferETH(feeCollector, fee);
            } else {
                SafeTransferLib.safeTransfer(tokenOut, feeCollector, fee);
            }
        }

        if (tokenOut == address(0)) {
            SafeTransferLib.safeTransferETH(recipient, amountAfterFee);
        } else {
            SafeTransferLib.safeTransfer(tokenOut, recipient, amountAfterFee);
        }
    }

    /// @notice Sweep stuck ERC20 tokens to fee collector
    /// @param token Token to sweep
    function sweep(
        address token
    ) external {
        if (msg.sender != admin) revert NotAdmin();
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance > 0) {
            SafeTransferLib.safeTransfer(token, feeCollector, balance);
            emit Sweep(token, balance);
        }
    }

    /// @notice Sweep stuck ETH to fee collector
    function sweepETH() external {
        if (msg.sender != admin) revert NotAdmin();
        uint256 balance = address(this).balance;
        if (balance > 0) {
            SafeTransferLib.safeTransferETH(feeCollector, balance);
            emit Sweep(address(0), balance);
        }
    }

    /// @notice Set a new admin
    /// @param newAdmin Address of the new admin
    function setAdmin(
        address newAdmin
    ) external {
        if (msg.sender != admin) revert NotAdmin();
        if (newAdmin == address(0)) revert InvalidAddress();
        emit AdminUpdated(admin, newAdmin);
        admin = newAdmin;
    }

    /// @notice Set the swap fee
    /// @param newFeeBps New fee in basis points
    function setFee(
        uint256 newFeeBps
    ) external {
        if (msg.sender != admin) revert NotAdmin();
        if (newFeeBps > MAX_FEE_BPS) revert FeeTooHigh();
        uint256 oldFeeBps = feeBps;
        feeBps = newFeeBps;
        emit FeeUpdated(oldFeeBps, newFeeBps);
    }

    /// @notice Register or replace the adapter handling `dexType`.
    /// Setting `adapter` to `address(0)` clears the slot, causing
    /// subsequent swaps for that `DexType` to revert with
    /// `AdapterNotSet`. Non-zero `adapter` must be a contract; this
    /// mirrors the EOA-rejection that `RouterAllowlist.setRouter`
    /// already does for external routers.
    function setDexAdapter(uint8 dexType, address adapter) external {
        if (msg.sender != admin) revert NotAdmin();
        if (adapter != address(0) && adapter.code.length == 0) {
            revert AdapterNotContract();
        }
        address oldAdapter = dexAdapter[dexType];
        if (oldAdapter == adapter) return;
        dexAdapter[dexType] = adapter;
        emit DexAdapterSet(dexType, oldAdapter, adapter);
    }

    /// @notice Clear the adapter for `dexType`. After this call any
    /// swap step with that type reverts with `AdapterNotSet`.
    function emergencyDisableAdapter(uint8 dexType) external {
        if (msg.sender != admin) revert NotAdmin();
        address oldAdapter = dexAdapter[dexType];
        if (oldAdapter == address(0)) return;
        dexAdapter[dexType] = address(0);
        emit DexAdapterSet(dexType, oldAdapter, address(0));
    }

    /// @notice Set an ERC20 approval from this contract to `spender` on
    /// behalf of the active adapter. Used by router-style adapters so
    /// the eventual `transferFrom` lifts tokens directly from
    /// `SwapRouter`, keeping the single-FOT-hit accounting (a re-pull
    /// into an adapter would tax the transfer twice).
    function adapterApprove(
        address token,
        address spender,
        uint256 amount
    ) external {
        if (msg.sender != _activeAdapter) revert NotAdapter();
        SafeTransferLib.safeApprove(token, spender, 0);
        if (amount > 0) {
            SafeTransferLib.safeApprove(token, spender, amount);
        }
    }

    /// @notice Execute an external call from this contract on behalf of
    /// the active adapter. Bubbles raw revert data so typed errors
    /// (e.g. `InvalidPool()` from `uniswapV3SwapCallback`) reach
    /// consumers unchanged.
    function adapterCall(
        address target,
        uint256 value,
        bytes calldata data
    ) external returns (bytes memory) {
        if (msg.sender != _activeAdapter) revert NotAdapter();
        (bool success, bytes memory result) =
            target.call{ value: value }(data);
        if (!success) {
            if (result.length == 0) revert SwapFailed(result);
            assembly {
                revert(add(result, 0x20), mload(result))
            }
        }
        return result;
    }

    /// @notice Transfer custody of `amount` of `token` from this
    /// contract to `to`. Adapters use this for the pre-deposit-style
    /// router pattern (Velodrome UniversalRouter with
    /// `payerIsUser = false`) and inside pool callbacks (where MSR
    /// itself is the payer but the active adapter scheduled the swap).
    function adapterPull(
        address token,
        uint256 amount,
        address to
    ) external {
        if (msg.sender != _activeAdapter) revert NotAdapter();
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ══════════════════════════════════════════════════════════════════════════════

    function _pullInput(
        address tokenIn,
        uint256 amountIn
    ) internal returns (uint256) {
        if (msg.value > 0) {
            if (amountIn != msg.value) revert InvalidEthInput();
            if (tokenIn != address(0)) revert InvalidEthInput();
            return amountIn;
        } else {
            if (tokenIn == address(0)) revert InvalidEthInput();
            uint256 balanceBefore = IERC20(tokenIn).balanceOf(address(this));
            SafeTransferLib.safeTransferFrom(
                tokenIn, msg.sender, address(this), amountIn
            );
            return IERC20(tokenIn).balanceOf(address(this)) - balanceBefore;
        }
    }

    function _executeStep(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        // Router allowlist check (all except direct pool swaps and wrap/unwrap)
        if (
            step.dexType != DexType.UniswapV3Pool
                && step.dexType != DexType.AlgebraPool
                && step.dexType != DexType.WrapWETH
                && step.dexType != DexType.UnwrapWETH
        ) {
            allowlist.requireAllowed(step.router);
        }

        // All swap types except WrapWETH, UnwrapWETH, and UniswapV4 require
        // ERC20 tokenIn (not native ETH)
        if (
            step.dexType != DexType.WrapWETH
                && step.dexType != DexType.UnwrapWETH
                && step.dexType != DexType.UniswapV4
                && step.dexType != DexType.PancakeInfinity
        ) {
            if (step.tokenIn == address(0)) revert InvalidAddress();
        }

        address adapter = dexAdapter[uint8(step.dexType)];
        if (adapter == address(0)) revert AdapterNotSet(step.dexType);
        return _dispatchAdapter(adapter, step, amountIn);
    }

    /// @dev Dispatch the step through a registered DEX adapter. Sets
    /// the active-adapter slot so the adapter can call back into
    /// `adapterApprove` / `adapterCall` / `adapterPull` for the
    /// duration of one swap, measures the `tokenOut` balance delta as
    /// the authoritative output amount, then clears the slot.
    function _dispatchAdapter(
        address adapter,
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        uint256 balanceBefore = _balanceOf(step.tokenOut);
        _activeAdapter = adapter;
        IDexAdapter(adapter).swap(step, amountIn);
        _activeAdapter = address(0);
        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    function _balanceOf(
        address token
    ) internal view returns (uint256) {
        if (token == address(0)) {
            return address(this).balance;
        }
        return IERC20(token).balanceOf(address(this));
    }

    function _balanceDelta(
        address token,
        uint256 balanceBefore
    ) internal view returns (uint256) {
        return _balanceOf(token) - balanceBefore;
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // POOL CALLBACK HELPERS
    //
    // Direct-pool adapters (`UniswapV3PoolAdapter`, `AlgebraPoolAdapter`)
    // invoke `pool.swap(...)` via `adapterCall`, so `SwapRouter` is the
    // caller and the pool dispatches its payment callback here. The
    // callback re-validates that `msg.sender` is a pool produced by an
    // allow-listed factory (independent of the adapter's pre-call
    // check) and then pays the requested amount from this contract's
    // balance.
    // ══════════════════════════════════════════════════════════════════════════════

    function _readFeeAndTickSpacing(
        address pool
    ) internal view returns (uint24 fee, int24 tickSpacing) {
        (bool ok, bytes memory data) = pool.staticcall(
            abi.encodeWithSelector(IUniswapV3PoolImmutables.fee.selector)
        );
        if (ok && data.length >= 32) {
            fee = abi.decode(data, (uint24));
        }

        (ok, data) = pool.staticcall(
            abi.encodeWithSelector(
                IUniswapV3PoolImmutables.tickSpacing.selector
            )
        );
        if (ok && data.length >= 32) {
            tickSpacing = abi.decode(data, (int24));
        }
    }

    function _isPoolFromFactory(
        address factory,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing,
        address pool
    ) internal view returns (bool) {
        (bool ok, address expected) =
            _tryGetV3Pool(factory, token0, token1, fee);
        if (ok && expected == pool) return true;

        (ok, expected) =
            _tryGetSlipstreamPool(factory, token0, token1, tickSpacing);
        if (ok && expected == pool) return true;

        return false;
    }

    function _tryGetV3Pool(
        address factory,
        address token0,
        address token1,
        uint24 fee
    ) internal view returns (bool, address) {
        (bool success, bytes memory data) = factory.staticcall(
            abi.encodeWithSelector(
                IUniswapV3Factory.getPool.selector, token0, token1, fee
            )
        );
        if (!success || data.length < 32) {
            return (false, address(0));
        }
        return (true, abi.decode(data, (address)));
    }

    function _tryGetSlipstreamPool(
        address factory,
        address token0,
        address token1,
        int24 tickSpacing
    ) internal view returns (bool, address) {
        (bool success, bytes memory data) = factory.staticcall(
            abi.encodeWithSelector(
                ISlipstreamFactory.getPool.selector, token0, token1, tickSpacing
            )
        );
        if (!success || data.length < 32) {
            return (false, address(0));
        }
        return (true, abi.decode(data, (address)));
    }

    function _validateAlgebraPoolTokenIn(
        address pool,
        address tokenIn,
        address customDeployer
    ) internal view {
        (address token0, address token1, address factory) =
            _readAlgebraPoolTokensAndFactory(pool);

        allowlist.requireAllowedFactory(factory);
        if (!_isAlgebraPoolFromFactory(
                factory, token0, token1, pool, customDeployer
            )) {
            revert InvalidPool();
        }

        if (tokenIn != token0 && tokenIn != token1) {
            revert InvalidTokenIn();
        }
    }

    function _readAlgebraPoolTokensAndFactory(
        address pool
    ) internal view returns (address token0, address token1, address factory) {
        IUniswapV3Pool algebraPool = IUniswapV3Pool(pool);
        token0 = algebraPool.token0();
        token1 = algebraPool.token1();
        factory = algebraPool.factory();
    }

    function _isAlgebraPoolFromFactory(
        address factory,
        address token0,
        address token1,
        address pool,
        address customDeployer
    ) internal view returns (bool) {
        (bool ok, address expected) =
            _tryGetAlgebraPoolByPair(factory, token0, token1);
        if (ok) {
            if (expected == pool) return true;
            if (expected != address(0) && customDeployer == address(0)) {
                return false;
            }
        }

        if (customDeployer != address(0)) {
            allowlist.requireAllowedCustomDeployer(factory, customDeployer);
            (ok, expected) = _tryGetAlgebraCustomPoolByPair(
                factory, customDeployer, token0, token1
            );
            if (ok && expected == pool) return true;
        }

        return false;
    }

    function _tryGetAlgebraPoolByPair(
        address factory,
        address token0,
        address token1
    ) internal view returns (bool, address) {
        (bool success, bytes memory data) = factory.staticcall(
            abi.encodeWithSelector(
                IAlgebraFactory.poolByPair.selector, token0, token1
            )
        );
        if (!success || data.length < 32) {
            return (false, address(0));
        }
        return (true, abi.decode(data, (address)));
    }

    function _tryGetAlgebraCustomPoolByPair(
        address factory,
        address deployer,
        address token0,
        address token1
    ) internal view returns (bool, address) {
        (bool success, bytes memory data) = factory.staticcall(
            abi.encodeWithSelector(
                IAlgebraFactory.customPoolByPair.selector,
                deployer,
                token0,
                token1
            )
        );
        if (!success || data.length < 32) {
            return (false, address(0));
        }
        return (true, abi.decode(data, (address)));
    }

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        if (amount0Delta <= 0 && amount1Delta <= 0) return;

        IUniswapV3Pool v3pool = IUniswapV3Pool(msg.sender);
        address token0 = v3pool.token0();
        address token1 = v3pool.token1();
        address factory = v3pool.factory();

        allowlist.requireAllowedFactory(factory);
        (uint24 fee, int24 tickSpacing) = _readFeeAndTickSpacing(msg.sender);
        if (!_isPoolFromFactory(
                factory, token0, token1, fee, tickSpacing, msg.sender
            )) {
            revert InvalidPool();
        }

        address payer = abi.decode(data, (address));
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 amountToPay =
            amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);
        address tokenToPay = amount0Delta > 0 ? token0 : token1;

        if (payer == address(this)) {
            SafeTransferLib.safeTransfer(tokenToPay, msg.sender, amountToPay);
        }
    }

    /// @notice Callback for Algebra pool swaps
    /// @dev Called by the pool during swap to request token payment
    function algebraSwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        // Decode callback data
        (address tokenIn, address payer, address customDeployer) =
            abi.decode(data, (address, address, address));
        _validateAlgebraPoolTokenIn(msg.sender, tokenIn, customDeployer);

        // Determine which token to pay (positive delta = tokens owed to pool)
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 amountToPay =
            amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);

        // Transfer tokens to the pool
        if (payer == address(this)) {
            SafeTransferLib.safeTransfer(tokenIn, msg.sender, amountToPay);
        }
    }

    receive() external payable { }
}
