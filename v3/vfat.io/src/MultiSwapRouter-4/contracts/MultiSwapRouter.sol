// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import {
    IAllowanceTransfer
} from "contracts/interfaces/external/IAllowanceTransfer.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";
import { IUniswapV2Router01 } from
    "contracts/interfaces/external/uniswap/IUniswapV2Router02.sol";
import { IUniversalRouter } from "contracts/interfaces/external/uniswap/v4/IUniversalRouter.sol";
import { TickMath } from "contracts/interfaces/external/uniswap/v3/libraries/TickMath.sol";
import { IWETH9 as IWETH } from "contracts/interfaces/external/IWETH.sol";
import { IUniswapV3Factory } from "contracts/interfaces/external/uniswap/IUniswapV3Factory.sol";
import { IRouter as IAerodromeRouter } from "contracts/interfaces/external/aerodrome/IRouter.sol";
import { IAlgebraFactory } from "contracts/interfaces/external/algebra/IAlgebraFactory.sol";
import { Actions } from "contracts/interfaces/external/uniswap/v4/libraries/Actions.sol";
import { IV4Router } from "contracts/interfaces/external/uniswap/v4/IV4Router.sol";
import { PoolKey } from "contracts/interfaces/external/uniswap/v4/types/PoolKey.sol";
import { IHooks } from "contracts/interfaces/external/uniswap/v4/IHooks.sol";
import { Currency } from "contracts/interfaces/external/uniswap/v4/types/Currency.sol";
import { IUniswapV3Pool, IUniswapV3PoolImmutables } from "contracts/interfaces/external/uniswap/IUniswapV3Pool.sol";
import { ISwapRouter, ISwapRouter02 } from "contracts/interfaces/external/uniswap/ISwapRouter.sol";
import { ICamelotV2Router } from "contracts/interfaces/external/camelot/ICamelotInterfaces.sol";
import { ISolidlyRouter } from "contracts/interfaces/external/ISolidlyRouter.sol";
import { IAlgebraSwapRouter } from "contracts/interfaces/external/algebra/IAlgebraSwapRouter.sol";
import { IAlgebraIntegralSwapRouter } from "contracts/interfaces/external/algebra/IAlgebraIntegralSwapRouter.sol";
import { ISlipstreamSwapRouter } from "contracts/interfaces/external/aerodrome/ISlipstreamSwapRouter.sol";
import { IBlackholeRouter } from "contracts/interfaces/external/blackhole/IRouter.sol";
import { ISlipstreamFactory } from "contracts/interfaces/external/aerodrome/ISlipstreamFactory.sol";

/// @title MultiSwapRouter
/// @notice A router that executes multi-hop swaps across different DEXs
/// @dev Called via AggregatorConnector like Paraswap/Odos
contract MultiSwapRouter {
    // ══════════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ══════════════════════════════════════════════════════════════════════════════

    address public constant PERMIT2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;

    /// @notice Maximum fee in basis points (1%)
    uint256 public constant MAX_FEE_BPS = 100;

    /// @notice Basis points denominator
    uint256 public constant BPS_DENOMINATOR = 10_000;

    // V4 UniversalRouter command
    uint8 internal constant V4_SWAP = 0x10;

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

    /// @notice ETH balance before the current call, used to isolate
    ///         pre-existing ETH from the current operation in _wrapWETH
    uint256 private _preCallEthBalance;

    // ══════════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ══════════════════════════════════════════════════════════════════════════════

    error UnknownDexType();
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
    error InsufficientEthBalance();
    error InvalidWrappedNative();
    error PartialFill();
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

    // ══════════════════════════════════════════════════════════════════════════════
    // ENUMS
    // ══════════════════════════════════════════════════════════════════════════════

    enum DexType {
        UniswapV2,
        UniswapV3Router02,
        Solidly,
        Algebra,
        UniswapV4,
        VelodromeUniversalRouter,
        UniswapV3Router, // Original SwapRouter with deadline (selector 0x414bf389)
        AerodromeRouter, // Aerodrome Router with Route(from,to,stable,factory)
        AlgebraPool,     // Direct pool swap for Algebra pools (bypasses router)
        SlipstreamRouter, // Aerodrome Slipstream CL router (selector 0xa026383e)
        BlackholeV2Router, // Blackhole V2 on Avalanche with extended Route struct
        UniswapV3Pool,   // Direct Uniswap V3/Slipstream pool swap
        WrapWETH,        // Wrap native ETH into WETH
        UnwrapWETH,      // Unwrap WETH into native ETH
        CamelotV2Router  // Camelot V2 router (fee-on-transfer, referrer param)
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ══════════════════════════════════════════════════════════════════════════════

    struct SwapStep {
        DexType dexType;
        address router;
        address tokenIn;
        address tokenOut;
        bytes dexData;
    }

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
        if (wrappedNative_ == address(0)) revert InvalidWrappedNative();
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
        return _swap(steps, amountIn, minAmountOut, recipient, deadline);
    }

    function _swap(
        SwapStep[] calldata steps,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) internal returns (uint256 amountOut) {
        if (block.timestamp > deadline) revert Expired();
        if (steps.length == 0) revert InvalidStepsLength();

        _preCallEthBalance = address(this).balance - msg.value;

        // Execute all steps — use actual received amount (may differ for FOT tokens)
        uint256 currentAmount = _pullInput(steps[0].tokenIn, amountIn);
        for (uint256 i; i < steps.length; i++) {
            if (i > 0 && steps[i].tokenIn != steps[i - 1].tokenOut) {
                revert InvalidTokenPath();
            }
            currentAmount = _executeStep(steps[i], currentAmount, 0);
        }

        // Apply fee and transfer output
        address tokenOut = steps[steps.length - 1].tokenOut;
        uint256 fee;
        (amountOut, fee) = _applyFeeAndTransfer(tokenOut, currentAmount, minAmountOut, recipient);

        emit MultiSwap(msg.sender, steps[0].tokenIn, tokenOut, amountIn, minAmountOut, amountOut, fee);
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
        if (routes.length == 0 || routes.length != amounts.length) revert InvalidSplitLength();

        _preCallEthBalance = address(this).balance - msg.value;

        // All routes must have same input and output token
        address tokenIn = routes[0][0].tokenIn;
        address tokenOut = routes[0][routes[0].length - 1].tokenOut;

        // Calculate total input and validate routes
        uint256 totalAmountIn = _validateAndSumAmounts(routes, amounts, tokenIn, tokenOut);

        uint256 actualReceived = _pullInput(tokenIn, totalAmountIn);
        if (actualReceived != totalAmountIn) revert FeeOnTransferNotSupported();

        // Execute all routes and sum outputs
        uint256 totalOutput = _executeRoutes(routes, amounts);

        // Apply fee and transfer
        uint256 fee;
        (amountOut, fee) = _applyFeeAndTransfer(tokenOut, totalOutput, minAmountOut, recipient);

        emit MultiSwap(msg.sender, tokenIn, tokenOut, totalAmountIn, minAmountOut, amountOut, fee);
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
            if (routes[i][routes[i].length - 1].tokenOut != tokenOut) revert InvalidStepsLength();
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
            currentAmount = _executeStep(steps[s], currentAmount, 0);
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
    function sweep(address token) external {
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
    function setAdmin(address newAdmin) external {
        if (msg.sender != admin) revert NotAdmin();
        if (newAdmin == address(0)) revert InvalidAddress();
        emit AdminUpdated(admin, newAdmin);
        admin = newAdmin;
    }

    /// @notice Set the swap fee
    /// @param newFeeBps New fee in basis points
    function setFee(uint256 newFeeBps) external {
        if (msg.sender != admin) revert NotAdmin();
        if (newFeeBps > MAX_FEE_BPS) revert FeeTooHigh();
        uint256 oldFeeBps = feeBps;
        feeBps = newFeeBps;
        emit FeeUpdated(oldFeeBps, newFeeBps);
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ══════════════════════════════════════════════════════════════════════════════

    function _pullInput(address tokenIn, uint256 amountIn) internal returns (uint256) {
        if (msg.value > 0) {
            if (amountIn != msg.value) revert InvalidEthInput();
            if (tokenIn != address(0)) revert InvalidEthInput();
            return amountIn;
        } else {
            if (tokenIn == address(0)) revert InvalidEthInput();
            uint256 balanceBefore = IERC20(tokenIn).balanceOf(address(this));
            SafeTransferLib.safeTransferFrom(tokenIn, msg.sender, address(this), amountIn);
            return IERC20(tokenIn).balanceOf(address(this)) - balanceBefore;
        }
    }

    function _executeStep(
        SwapStep calldata step,
        uint256 amountIn,
        uint256 minAmountOut
    ) internal returns (uint256) {
        // Router allowlist check (all except direct pool swaps and wrap/unwrap)
        if (step.dexType != DexType.UniswapV3Pool
            && step.dexType != DexType.AlgebraPool
            && step.dexType != DexType.WrapWETH
            && step.dexType != DexType.UnwrapWETH
        ) {
            allowlist.requireAllowed(step.router);
        }

        // All swap types except WrapWETH, UnwrapWETH, and UniswapV4 require
        // ERC20 tokenIn (not native ETH)
        if (step.dexType != DexType.WrapWETH
            && step.dexType != DexType.UnwrapWETH
            && step.dexType != DexType.UniswapV4
        ) {
            if (step.tokenIn == address(0)) revert InvalidAddress();
        }

        // Router-based swaps
        if (step.dexType == DexType.UniswapV2) {
            return _swapUniswapV2(step, amountIn);
        } else if (step.dexType == DexType.UniswapV3Router02) {
            return _swapUniswapV3Router02(step, amountIn);
        } else if (step.dexType == DexType.UniswapV3Router) {
            return _swapUniswapV3Router(step, amountIn);
        } else if (step.dexType == DexType.Solidly) {
            return _swapSolidly(step, amountIn);
        } else if (step.dexType == DexType.AerodromeRouter) {
            return _swapAerodromeRouter(step, amountIn);
        } else if (step.dexType == DexType.Algebra) {
            return _swapAlgebra(step, amountIn);
        } else if (step.dexType == DexType.SlipstreamRouter) {
            return _swapSlipstreamRouter(step, amountIn);
        } else if (step.dexType == DexType.BlackholeV2Router) {
            return _swapBlackholeV2(step, amountIn);
        } else if (step.dexType == DexType.CamelotV2Router) {
            return _swapCamelotV2Router(step, amountIn);
        } else if (step.dexType == DexType.VelodromeUniversalRouter) {
            return _swapVelodromeUniversalRouter(step, amountIn);
        // Direct pool swaps
        } else if (step.dexType == DexType.AlgebraPool) {
            return _swapAlgebraPool(step, amountIn);
        } else if (step.dexType == DexType.UniswapV3Pool) {
            return _swapUniswapV3Pool(step, amountIn);
        // V4
        } else if (step.dexType == DexType.UniswapV4) {
            return _swapUniswapV4(step, amountIn);
        // Wrap/Unwrap
        } else if (step.dexType == DexType.WrapWETH) {
            return _wrapWETH(step, amountIn);
        } else if (step.dexType == DexType.UnwrapWETH) {
            return _unwrapWETH(step, amountIn);
        }
        revert UnknownDexType();
    }

    function _swapViaRouter(
        SwapStep calldata step,
        uint256 amountIn,
        bytes memory data
    ) internal returns (uint256) {
        uint256 balanceBefore = _balanceOf(step.tokenOut);
        _callRouterWithApproval(step.tokenIn, step.router, amountIn, data, 0);
        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    function _swapUniswapV2(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = step.tokenIn;
        path[1] = step.tokenOut;
        return _swapViaRouter(step, amountIn, _encodeSwapExactTokensForTokens(amountIn, path));
    }

    /// @dev SwapRouter02 / PancakeV3 interface (no deadline in struct)
    function _swapUniswapV3Router02(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        uint24 fee = abi.decode(step.dexData, (uint24));
        return _swapViaRouter(step, amountIn, _encodeExactInputSingleRouter02(step.tokenIn, step.tokenOut, fee, amountIn));
    }

    /// @dev Original SwapRouter interface (with deadline in struct)
    /// @notice Used on chains like Monad that don't have SwapRouter02
    function _swapUniswapV3Router(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        uint24 fee = abi.decode(step.dexData, (uint24));
        return _swapViaRouter(step, amountIn, _encodeExactInputSingleRouter(step.tokenIn, step.tokenOut, fee, amountIn));
    }

    /// @dev Velodrome/Aerodrome UniversalRouter - handles both V2 and CL pools
    /// @param step.dexData encodes (bool isCL, int24 poolParam)
    ///        - CL: (true, tickSpacing)
    ///        - V2: (false, stable ? 1 : 0)
    function _swapVelodromeUniversalRouter(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        (bool isCL, int24 poolParam) = abi.decode(step.dexData, (bool, int24));

        uint256 balanceBefore = _balanceOf(step.tokenOut);

        // Build path and command based on pool type
        bytes memory path;
        uint8 command;

        if (isCL) {
            // CL/Slipstream: V3_SWAP_EXACT_IN (0x00)
            command = 0x00;
            path = abi.encodePacked(
                step.tokenIn,
                poolParam, // int24 tickSpacing (3 bytes)
                step.tokenOut
            );
        } else {
            // V2: V2_SWAP_EXACT_IN (0x08)
            // Path: tokenIn(20) + stable(1) + tokenOut(20)
            command = 0x08;
            path = abi.encodePacked(
                step.tokenIn,
                poolParam == 1 ? bytes1(0x01) : bytes1(0x00), // stable flag
                step.tokenOut
            );
        }

        bytes memory commands;
        bytes[] memory inputs;

        commands = abi.encodePacked(command);
        inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this), // recipient
            amountIn,
            0, // amountOutMin (we check after)
            path,
            false, // payerIsUser = false (tokens already in router)
            false  // isUni = false (use Velodrome/Aerodrome factory)
        );
        // UniversalRouter expects tokens to be in the router when payerIsUser=false
        SafeTransferLib.safeTransfer(step.tokenIn, step.router, amountIn);

        _callRouter(step.router, _encodeUniversalRouterExecute(commands, inputs), 0);

        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    /// @dev Legacy Solidly router - Thena, Ramses, Pharaoh, Shadow, Equalizer
    /// @param step.dexData encodes (bool stable)
    function _swapSolidly(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        bool stable = abi.decode(step.dexData, (bool));
        ISolidlyRouter.Route[] memory routes = new ISolidlyRouter.Route[](1);
        routes[0] = ISolidlyRouter.Route({
            from: step.tokenIn,
            to: step.tokenOut,
            stable: stable
        });
        return _swapViaRouter(step, amountIn, _encodeSolidlySwap(routes, amountIn));
    }

    /// @dev Aerodrome Router on Base - uses Route(from,to,stable,factory) struct
    /// @param step.dexData encodes (bool stable, address factory)
    function _swapAerodromeRouter(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        (bool stable, address factory) = abi.decode(step.dexData, (bool, address));
        IAerodromeRouter.Route[] memory routes = new IAerodromeRouter.Route[](1);
        routes[0] = IAerodromeRouter.Route({
            from: step.tokenIn,
            to: step.tokenOut,
            stable: stable,
            factory: factory
        });
        return _swapViaRouter(step, amountIn, _encodeAerodromeSwap(routes, amountIn));
    }

    /// @dev Algebra swap - supports both classic (QuickSwap V3) and Algebra Integral
    /// @notice For Algebra Integral, dexData must be exactly 32 bytes encoding (address deployer)
    /// @notice For classic Algebra (QuickSwap V3), dexData should be empty (any length != 32 takes the classic path)
    function _swapAlgebra(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        bytes memory data;
        if (step.dexData.length == 32) {
            // Algebra Integral: 8-param version with deployer
            address deployer = abi.decode(step.dexData, (address));
            data = _encodeAlgebraIntegralSwap(step, deployer, amountIn);
        } else {
            // Classic Algebra (QuickSwap V3): struct-based interface
            data = _encodeAlgebraSwap(step, amountIn);
        }
        return _swapViaRouter(step, amountIn, data);
    }

    function _swapUniswapV4(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        uint256 balanceBefore = _balanceOf(step.tokenOut);

        PoolKey memory poolKey = abi.decode(step.dexData, (PoolKey));
        if (poolKey.hooks != IHooks(address(0))) {
            allowlist.requireAllowedHook(address(poolKey.hooks));
        }

        if (step.tokenIn != address(0)) {
            // For V4, we need Permit2 approval
            _approve(step.tokenIn, PERMIT2, amountIn);
            IAllowanceTransfer(PERMIT2).approve(
                step.tokenIn,
                step.router,
                // forge-lint: disable-next-line(unsafe-typecast)
                uint160(amountIn),
                uint48(block.timestamp)
            );
        }

        // Build and execute V4 swap
        {
            bytes memory input = _buildV4Input(step, poolKey, amountIn);
            bytes[] memory inputs = new bytes[](1);
            inputs[0] = input;

            _callRouter(
                step.router,
                _encodeUniversalRouterExecute(abi.encodePacked(V4_SWAP), inputs),
                step.tokenIn == address(0) ? amountIn : 0
            );
        }

        // Revoke Permit2 approval
        if (step.tokenIn != address(0)) {
            _approve(step.tokenIn, PERMIT2, 0);
            IAllowanceTransfer(PERMIT2).approve(step.tokenIn, step.router, 0, 0);
        }

        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    /// @notice Direct Algebra pool swap - bypasses the router for custom pools
    /// @dev dexData encodes (address pool, address customDeployer) for custom pools,
    ///      or just (address pool) for standard pools. Custom deployers are validated
    ///      via factory.customPoolByPair.
    function _swapAlgebraPool(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        address pool = _decodePoolAddress(step);
        address customDeployer;
        if (step.dexData.length >= 64) {
            (, customDeployer) = abi.decode(step.dexData, (address, address));
        }

        bool zeroForOne = _validateAlgebraPoolAndDirection(
            pool,
            step.tokenIn,
            step.tokenOut,
            customDeployer
        );

        uint256 balanceBefore = _balanceOf(step.tokenOut);

        // Encode callback data: tokenIn, payer (this contract), customDeployer
        bytes memory callbackData = abi.encode(step.tokenIn, address(this), customDeployer);

        // Execute swap - the pool will call algebraSwapCallback
        (int256 amount0, int256 amount1) = IUniswapV3Pool(pool).swap(
            address(this),           // recipient
            zeroForOne,              // zeroForOne
            // forge-lint: disable-next-line(unsafe-typecast)
            int256(amountIn),        // amountSpecified (positive = exactInput)
            zeroForOne ? TickMath.MIN_SQRT_RATIO + 1 : TickMath.MAX_SQRT_RATIO - 1, // sqrtPriceLimitX96
            callbackData
        );

        // Revert on partial fills — if the pool hit the price limit before
        // consuming all input, the unconsumed tokens would strand in the router.
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 amountConsumed = zeroForOne ? uint256(amount0) : uint256(amount1);
        if (amountConsumed != amountIn) revert PartialFill();

        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    /// @dev Slipstream SwapRouter (Aerodrome CL on Base)
    /// @notice Uses exactInputSingle with tickSpacing instead of fee
    /// @param step.dexData encodes (int24 tickSpacing)
    function _swapSlipstreamRouter(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        int24 tickSpacing = abi.decode(step.dexData, (int24));
        return _swapViaRouter(step, amountIn, _encodeSlipstreamSwap(step, tickSpacing, amountIn));
    }

    /// @dev Route struct for Blackhole V2 Router on Avalanche
    /// Uses extended route struct: (pair, from, to, stable, concentrated, receiver)
    struct BlackholeRoute {
        address pair;
        address from;
        address to;
        bool stable;
        bool concentrated; // false for V2 pools
        address receiver;  // receiver for this hop (used in multi-hop)
    }

    /// @dev Blackhole V2 Router on Avalanche
    /// @notice Uses extended Route struct with pair address and concentrated flag
    /// @param step.dexData encodes (address pair, bool stable)
    function _swapBlackholeV2(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        (address pair, bool stable) = abi.decode(step.dexData, (address, bool));
        BlackholeRoute[] memory routes = new BlackholeRoute[](1);
        routes[0] = BlackholeRoute({
            pair: pair,
            from: step.tokenIn,
            to: step.tokenOut,
            stable: stable,
            concentrated: false, // V2 pools are not concentrated
            receiver: address(this) // MSR receives then sends to recipient
        });
        return _swapViaRouter(step, amountIn, _encodeBlackholeSwap(routes, amountIn));
    }

    function _wrapWETH(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        if (step.tokenOut != wrappedNative || step.tokenIn != address(0)) {
            revert InvalidWrappedNative();
        }
        if (address(this).balance - _preCallEthBalance < amountIn) {
            revert InsufficientEthBalance();
        }
        IWETH(wrappedNative).deposit{ value: amountIn }();
        return amountIn;
    }

    function _unwrapWETH(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        if (step.tokenIn != wrappedNative || step.tokenOut != address(0)) {
            revert InvalidWrappedNative();
        }
        IWETH(wrappedNative).withdraw(amountIn);
        return amountIn;
    }

    function _swapCamelotV2Router(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = step.tokenIn;
        path[1] = step.tokenOut;

        address referrer = step.dexData.length >= 32
            ? abi.decode(step.dexData, (address))
            : address(0);

        return _swapViaRouter(
            step,
            amountIn,
            abi.encodeCall(
                ICamelotV2Router.swapExactTokensForTokensSupportingFeeOnTransferTokens,
                (amountIn, 0, path, address(this), referrer, block.timestamp)
            )
        );
    }

    function _swapUniswapV3Pool(
        SwapStep calldata step,
        uint256 amountIn
    ) internal returns (uint256) {
        address pool = _decodePoolAddress(step);
        if (pool == address(0)) revert InvalidAddress();

        bool zeroForOne = _validateV3PoolAndDirection(pool, step.tokenIn, step.tokenOut);

        uint256 balanceBefore = _balanceOf(step.tokenOut);

        (int256 amount0, int256 amount1) = IUniswapV3Pool(pool).swap(
            address(this),
            zeroForOne,
            // forge-lint: disable-next-line(unsafe-typecast)
            int256(amountIn),
            zeroForOne ? TickMath.MIN_SQRT_RATIO + 1 : TickMath.MAX_SQRT_RATIO - 1,
            abi.encode(address(this))
        );

        // Revert on partial fills — if the pool hit the price limit before
        // consuming all input, the unconsumed tokens would strand in the router.
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 amountConsumed = zeroForOne ? uint256(amount0) : uint256(amount1);
        if (amountConsumed != amountIn) revert PartialFill();

        return _balanceDelta(step.tokenOut, balanceBefore);
    }

    function _decodePoolAddress(SwapStep calldata step) internal pure returns (address pool) {
        if (step.dexData.length >= 32) {
            pool = abi.decode(step.dexData, (address));
        } else {
            pool = step.router;
        }
    }

    function _buildV4Input(
        SwapStep calldata step,
        PoolKey memory poolKey,
        uint256 amountIn
    ) internal pure returns (bytes memory) {
        // Sort currencies for PoolKey (V4 requires currency0 < currency1)
        (address currency0, address currency1) = step.tokenIn < step.tokenOut
            ? (step.tokenIn, step.tokenOut)
            : (step.tokenOut, step.tokenIn);

        bool zeroForOne = step.tokenIn == currency0;

        // Actions: SWAP_EXACT_IN_SINGLE, SETTLE_ALL, TAKE_ALL
        bytes memory actions = abi.encodePacked(
            uint8(Actions.SWAP_EXACT_IN_SINGLE),
            uint8(Actions.SETTLE_ALL),
            uint8(Actions.TAKE_ALL)
        );

        bytes[] memory params = new bytes[](3);

        // ExactInputSingleParams: ABI encode struct (dynamic due to hookData)
        IV4Router.ExactInputSingleParams memory swapParams = IV4Router.ExactInputSingleParams({
            poolKey: PoolKey({
                currency0: Currency.wrap(currency0),
                currency1: Currency.wrap(currency1),
                fee: poolKey.fee,
                hooks: poolKey.hooks,
                tickSpacing: poolKey.tickSpacing
            }),
            zeroForOne: zeroForOne,
            // forge-lint: disable-next-line(unsafe-typecast)
            amountIn: uint128(amountIn),
            amountOutMinimum: 0,
            hookData: new bytes(0)
        });
        params[0] = abi.encode(swapParams);

        // SETTLE_ALL params: (currency, maxAmount)
        params[1] = abi.encode(step.tokenIn, amountIn);

        // TAKE_ALL params: (currency, minAmount)
        params[2] = abi.encode(step.tokenOut, 0);

        return abi.encode(actions, params);
    }

    function _balanceOf(address token) internal view returns (uint256) {
        if (token == address(0)) {
            return address(this).balance;
        }
        return IERC20(token).balanceOf(address(this));
    }

    function _balanceDelta(address token, uint256 balanceBefore) internal view returns (uint256) {
        return _balanceOf(token) - balanceBefore;
    }

    function _callRouter(
        address router,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        (bool success, bytes memory result) = router.call{ value: value }(data);
        if (!success) revert SwapFailed(result);
        return result;
    }

    function _callRouterWithApproval(
        address token,
        address router,
        uint256 amount,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        _approve(token, router, amount);
        bytes memory result = _callRouter(router, data, value);
        _revokeApproval(token, router);
        return result;
    }

    function _encodeSwapExactTokensForTokens(
        uint256 amountIn,
        address[] memory path
    ) internal view returns (bytes memory) {
        return abi.encodeCall(
            IUniswapV2Router01.swapExactTokensForTokens,
            (
                amountIn,
                0,
                path,
                address(this),
                block.timestamp
            )
        );
    }

    function _encodeExactInputSingleRouter02(
        address tokenIn,
        address tokenOut,
        uint24 fee,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            ISwapRouter02.exactInputSingle.selector,
            tokenIn,
            tokenOut,
            fee,
            address(this),
            amountIn,
            0,
            0
        );
    }

    function _encodeExactInputSingleRouter(
        address tokenIn,
        address tokenOut,
        uint24 fee,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            ISwapRouter.exactInputSingle.selector,
            tokenIn,
            tokenOut,
            fee,
            address(this),
            block.timestamp,
            amountIn,
            0,
            0
        );
    }

    function _encodeUniversalRouterExecute(
        bytes memory commands,
        bytes[] memory inputs
    ) internal view returns (bytes memory) {
        return abi.encodeCall(
            IUniversalRouter.execute,
            (commands, inputs, block.timestamp)
        );
    }

    function _encodeSolidlySwap(
        ISolidlyRouter.Route[] memory routes,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            ISolidlyRouter.swapExactTokensForTokens.selector,
            amountIn,
            0,
            routes,
            address(this),
            block.timestamp
        );
    }

    function _encodeAerodromeSwap(
        IAerodromeRouter.Route[] memory routes,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeCall(
            IAerodromeRouter.swapExactTokensForTokens,
            (
                amountIn,
                0,
                routes,
                address(this),
                block.timestamp
            )
        );
    }

    function _encodeAlgebraIntegralSwap(
        SwapStep calldata step,
        address deployer,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            IAlgebraIntegralSwapRouter.exactInputSingle.selector,
            step.tokenIn,
            step.tokenOut,
            deployer,
            address(this),
            block.timestamp,
            amountIn,
            0,
            0
        );
    }

    function _encodeAlgebraSwap(
        SwapStep calldata step,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            IAlgebraSwapRouter.exactInputSingle.selector,
            step.tokenIn,
            step.tokenOut,
            address(this),
            block.timestamp,
            amountIn,
            0,
            0
        );
    }

    function _encodeSlipstreamSwap(
        SwapStep calldata step,
        int24 tickSpacing,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            ISlipstreamSwapRouter.exactInputSingle.selector,
            step.tokenIn,
            step.tokenOut,
            tickSpacing,
            address(this),
            block.timestamp,
            amountIn,
            0,
            0
        );
    }

    function _encodeBlackholeSwap(
        BlackholeRoute[] memory routes,
        uint256 amountIn
    ) internal view returns (bytes memory) {
        return abi.encodeWithSelector(
            IBlackholeRouter.swapExactTokensForTokens.selector,
            amountIn,
            0,
            routes,
            address(this),
            block.timestamp
        );
    }

    function _approve(address token, address spender, uint256 amount) internal {
        SafeTransferLib.safeApprove(token, spender, 0);
        SafeTransferLib.safeApprove(token, spender, amount);
    }

    function _revokeApproval(address token, address spender) internal {
        SafeTransferLib.safeApprove(token, spender, 0);
    }

    function _validateV3PoolAndDirection(
        address pool,
        address tokenIn,
        address tokenOut
    ) internal view returns (bool zeroForOne) {
        IUniswapV3Pool v3pool = IUniswapV3Pool(pool);
        address token0 = v3pool.token0();
        address token1 = v3pool.token1();
        address factory = v3pool.factory();

        allowlist.requireAllowedFactory(factory);
        (uint24 fee, int24 tickSpacing) = _readFeeAndTickSpacing(pool);
        if (!_isPoolFromFactory(factory, token0, token1, fee, tickSpacing, pool)) {
            revert InvalidPool();
        }

        if (tokenIn == token0 && tokenOut == token1) {
            return true;
        }
        if (tokenIn == token1 && tokenOut == token0) {
            return false;
        }
        revert InvalidTokenIn();
    }

    function _readFeeAndTickSpacing(address pool) internal view returns (uint24 fee, int24 tickSpacing) {
        (bool ok, bytes memory data) = pool.staticcall(
            abi.encodeWithSelector(IUniswapV3PoolImmutables.fee.selector)
        );
        if (ok && data.length >= 32) {
            fee = abi.decode(data, (uint24));
        }

        (ok, data) = pool.staticcall(
            abi.encodeWithSelector(IUniswapV3PoolImmutables.tickSpacing.selector)
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
        (bool ok, address expected) = _tryGetV3Pool(factory, token0, token1, fee);
        if (ok && expected == pool) return true;

        (ok, expected) = _tryGetSlipstreamPool(factory, token0, token1, tickSpacing);
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
            abi.encodeWithSelector(IUniswapV3Factory.getPool.selector, token0, token1, fee)
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
            abi.encodeWithSelector(ISlipstreamFactory.getPool.selector, token0, token1, tickSpacing)
        );
        if (!success || data.length < 32) {
            return (false, address(0));
        }
        return (true, abi.decode(data, (address)));
    }

    function _validateAlgebraPoolAndDirection(
        address pool,
        address tokenIn,
        address tokenOut,
        address customDeployer
    ) internal view returns (bool zeroForOne) {
        (address token0, address token1, address factory) =
            _readAlgebraPoolTokensAndFactory(pool);

        allowlist.requireAllowedFactory(factory);
        if (!_isAlgebraPoolFromFactory(factory, token0, token1, pool, customDeployer)) {
            revert InvalidPool();
        }

        if (tokenIn == token0 && tokenOut == token1) {
            return true;
        }
        if (tokenIn == token1 && tokenOut == token0) {
            return false;
        }
        revert InvalidTokenIn();
    }

    function _validateAlgebraPoolTokenIn(
        address pool,
        address tokenIn,
        address customDeployer
    ) internal view {
        (address token0, address token1, address factory) =
            _readAlgebraPoolTokensAndFactory(pool);

        allowlist.requireAllowedFactory(factory);
        if (!_isAlgebraPoolFromFactory(factory, token0, token1, pool, customDeployer)) {
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
        (bool ok, address expected) = _tryGetAlgebraPoolByPair(factory, token0, token1);
        if (ok) {
            if (expected == pool) return true;
            if (expected != address(0) && customDeployer == address(0)) return false;
        }

        if (customDeployer != address(0)) {
            allowlist.requireAllowedCustomDeployer(factory, customDeployer);
            (ok, expected) = _tryGetAlgebraCustomPoolByPair(factory, customDeployer, token0, token1);
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
            abi.encodeWithSelector(IAlgebraFactory.poolByPair.selector, token0, token1)
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
        if (!_isPoolFromFactory(factory, token0, token1, fee, tickSpacing, msg.sender)) {
            revert InvalidPool();
        }

        address payer = abi.decode(data, (address));
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 amountToPay = amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);
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
        uint256 amountToPay = amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);

        // Transfer tokens to the pool
        if (payer == address(this)) {
            SafeTransferLib.safeTransfer(tokenIn, msg.sender, amountToPay);
        }
    }

    receive() external payable {}
}
