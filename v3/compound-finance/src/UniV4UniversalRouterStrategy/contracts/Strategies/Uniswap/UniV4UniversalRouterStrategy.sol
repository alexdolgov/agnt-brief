// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import { IUniversalRouter } from "./interfaces/IUniversalRouter.sol";
import { Commands } from "./libraries/Commands.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IV4Router } from "@uniswap/v4-periphery/src/interfaces/IV4Router.sol";
import { Actions } from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import { IPermit2 } from "permit2/src/interfaces/IPermit2.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDelegateStrategy.sol";
import "../../LEZyVault/ILEZyVault.sol";

/**
 * @author  Renzo Protocol
 * @title   UniV4UniversalRouterStrategy
 * @dev     This contract provides swap functionality on Uniswap V4 pools using the IV4Router
 * @notice  Allows swapping tokens through Uniswap V4's official Router with action-based encoding
 */
contract UniV4UniversalRouterStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    using StateLibrary for IPoolManager;

    IUniversalRouter public immutable router;
    IPoolManager public immutable poolManager;
    IPermit2 public immutable permit2;

    // PoolKey components stored as immutable
    Currency public immutable currency0;
    Currency public immutable currency1;
    uint24 public immutable fee;
    int24 public immutable tickSpacing;
    IHooks public immutable hooks;

    bool public immutable allowZeroForOne;
    bool public immutable allowOneForZero;

    constructor(
        address _router,
        address _poolManager,
        address _permit2,
        PoolKey memory _poolKey, // only allow configured
        bool _allowZeroForOne,
        bool _allowOneForZero
    ) {
        if (_router == address(0) || _poolManager == address(0) || _permit2 == address(0))
            revert InvalidZeroInput();

        router = IUniversalRouter(payable(_router));
        poolManager = IPoolManager(_poolManager);
        permit2 = IPermit2(_permit2);

        // Store PoolKey components
        currency0 = _poolKey.currency0;
        currency1 = _poolKey.currency1;
        fee = _poolKey.fee;
        tickSpacing = _poolKey.tickSpacing;
        hooks = _poolKey.hooks;

        allowZeroForOne = _allowZeroForOne;
        allowOneForZero = _allowOneForZero;
    }

    function underlyingValue(address) external pure returns (uint256) {
        return 0;
    }

    function swapExactInputSingle(
        address tokenIn,
        uint256 amountIn,
        uint128 minAmountOut,
        uint256 deadline,
        bytes memory hookData
    ) external returns (uint256 amountOut) {
        // verify input token and amountOut and amountIn
        if (tokenIn == address(0) || minAmountOut == 0 || amountIn == 0) revert InvalidZeroInput();

        // approve tokenIn through permit2
        IERC20(tokenIn).forceApprove(address(permit2), type(uint256).max);
        permit2.approve(tokenIn, address(router), uint160(amountIn), uint48(deadline));

        // Encode the Universal Router command
        bytes memory commands = abi.encodePacked(uint8(Commands.V4_SWAP));
        bytes[] memory inputs = new bytes[](1);

        // Encode V4Router actions
        bytes memory actions = abi.encodePacked(
            uint8(Actions.SWAP_EXACT_IN_SINGLE),
            uint8(Actions.SETTLE_ALL),
            uint8(Actions.TAKE_ALL)
        );

        bool zeroForOne;
        Currency tokenOut;
        if (tokenIn == Currency.unwrap(currency0) && allowZeroForOne) {
            zeroForOne = true;
            tokenOut = currency1;
        } else if (tokenIn == Currency.unwrap(currency1) && allowOneForZero) {
            zeroForOne = false;
            tokenOut = currency0;
        } else {
            revert SwapNotAllowed();
        }

        uint256 tokenOutBalance = tokenOut.balanceOf(address(this));

        // Prepare parameters for each action
        bytes[] memory params = new bytes[](3);
        params[0] = abi.encode(
            IV4Router.ExactInputSingleParams({
                poolKey: PoolKey({
                    currency0: currency0,
                    currency1: currency1,
                    fee: fee,
                    tickSpacing: tickSpacing,
                    hooks: hooks
                }),
                zeroForOne: zeroForOne,
                amountIn: uint128(amountIn),
                amountOutMinimum: minAmountOut,
                hookData: hookData
            })
        );

        if (zeroForOne) {
            params[1] = abi.encode(currency0, amountIn); // settle token in (currency0)
            params[2] = abi.encode(currency1, minAmountOut); // take token out (currency1)
        } else {
            params[1] = abi.encode(currency1, amountIn); // settle token in (currency1)
            params[2] = abi.encode(currency0, minAmountOut); // take token out (currency0)
        }

        // Combine actions and params into inputs
        inputs[0] = abi.encode(actions, params);

        // Execute the swap
        router.execute(commands, inputs, deadline);

        // Verify and return the output amount
        amountOut = tokenOut.balanceOf(address(this));
        if (amountOut - tokenOutBalance < minAmountOut)
            revert InsufficientOutputAmount(minAmountOut, amountOut);
        return (amountOut - tokenOutBalance);
    }
}
