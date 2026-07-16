// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IPoolInitializer_v4} from "v4-periphery/src/interfaces/IPoolInitializer_v4.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {Currency, CurrencyLibrary} from "v4-core/src/types/Currency.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {IERC20} from "v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Math} from "v4-core/lib/openzeppelin-contracts/contracts/utils/math/Math.sol";
import {Actions} from "v4-periphery/src/libraries/Actions.sol";
import {LiquidityAmounts} from "v4-periphery/src/libraries/LiquidityAmounts.sol";
import {PositionManager} from "v4-periphery/src/PositionManager.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {TickMath} from "v4-core/src/libraries/TickMath.sol";
import {StateLibrary} from "v4-core/src/libraries/StateLibrary.sol";
import {AutoTaxHook} from "./AutoTaxHook.sol";
import {ReentrancyGuard} from "v4-core/lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {PositionInfo, PositionInfoLibrary} from "v4-periphery/src/libraries/PositionInfoLibrary.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {Planner, Plan} from "v4-periphery/test/shared/Planner.sol";

contract PoolHelper is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using CurrencyLibrary for Currency;

    using StateLibrary for IPoolManager;

    int24 constant TICK_LOWER = -887272;
    int24 constant TICK_UPPER = 887272;

    IAllowanceTransfer immutable permit2;
    PositionManager immutable posm;
    IPoolManager immutable poolManager;

    address public immutable admin;

    constructor(
        address _permit2,
        address _positionManager,
        address _poolManager,
        address _admin
    ) {
        require(_permit2 != address(0), "Invalid permit2 address");
        require(
            _positionManager != address(0),
            "Invalid position manager address"
        );
        require(_poolManager != address(0), "Invalid pool manager address");
        require(_admin != address(0), "Invalid admin address");

        permit2 = IAllowanceTransfer(_permit2);
        posm = PositionManager(payable(_positionManager));
        poolManager = IPoolManager(_poolManager);
        admin = _admin;
    }

    function _calculateSqrtPriceX96(
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (uint160 sqrtPriceX96) {
        require(amount0 > 0, "Amount0 must be positive");

        uint256 ratioX128 = (amount1 << 128) / amount0;

        sqrtPriceX96 = uint160(Math.sqrt(ratioX128) << (96 - 64));
    }

    function createPool(
        address tokenA,
        address tokenB,
        address hook,
        address recipient,
        uint256 amountA,
        uint256 amountB
    ) external nonReentrant {
        require(msg.sender == admin, "Only admin can call this function");

        AutoTaxHook hookContract = AutoTaxHook(payable(hook));

        hookContract.setPaused(false);

        IERC20(tokenA).transferFrom(msg.sender, address(this), amountA);
        IERC20(tokenB).transferFrom(msg.sender, address(this), amountB);

        (address token0, address token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);

        (uint amount0, uint amount1) = tokenA < tokenB
            ? (amountA, amountB)
            : (amountB, amountA);

        bytes[] memory params = new bytes[](2);
        PoolKey memory pool = PoolKey({
            currency0: Currency.wrap(token0),
            currency1: Currency.wrap(token1),
            fee: 0,
            tickSpacing: 1,
            hooks: IHooks(hook)
        });

        uint160 startingPrice = _calculateSqrtPriceX96(amount0, amount1);

        params[0] = abi.encodeWithSelector(
            IPoolInitializer_v4.initializePool.selector,
            pool,
            startingPrice
        );

        bytes memory actions = abi.encodePacked(
            uint8(Actions.MINT_POSITION),
            uint8(Actions.SETTLE_PAIR)
        );

        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            startingPrice,
            TickMath.getSqrtPriceAtTick(TICK_LOWER),
            TickMath.getSqrtPriceAtTick(TICK_UPPER),
            amount0,
            amount1
        );

        bytes[] memory mintParams = new bytes[](2);
        mintParams[0] = abi.encode(
            pool,
            TICK_LOWER,
            TICK_UPPER,
            liquidity,
            amount0,
            amount1,
            recipient,
            ""
        );

        mintParams[1] = abi.encode(pool.currency0, pool.currency1);
        uint256 deadline = block.timestamp + 3600;
        params[1] = abi.encodeWithSelector(
            posm.modifyLiquidities.selector,
            abi.encode(actions, mintParams),
            deadline
        );

        IERC20(token0).approve(address(permit2), type(uint256).max);
        IERC20(token1).approve(address(permit2), type(uint256).max);

        permit2.approve(
            token0,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        permit2.approve(
            token1,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        posm.multicall(params);

        hookContract.transferOwnership(admin);
    }

    function mintPosition(
        address tokenA,
        address tokenB,
        address recipient,
        address hook,
        uint256 amountA,
        uint256 amountB
    ) public nonReentrant {
        uint256 balanceABefore = IERC20(tokenA).balanceOf(address(this));
        uint256 balanceBBefore = IERC20(tokenB).balanceOf(address(this));

        IERC20(tokenA).transferFrom(msg.sender, address(this), amountA);
        IERC20(tokenB).transferFrom(msg.sender, address(this), amountB);

        (address token0, address token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);

        (uint amount0, uint amount1) = tokenA < tokenB
            ? (amountA, amountB)
            : (amountB, amountA);


        PoolKey memory poolKey = PoolKey({
            currency0: Currency.wrap(token0),
            currency1: Currency.wrap(token1),
            fee: 0,
            tickSpacing: 1,
            hooks: IHooks(hook)
        });

        (uint160 sqrtPriceX96, , , ) = StateLibrary.getSlot0(
            poolManager,
            poolKey.toId()
        );

        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(TICK_LOWER),
            TickMath.getSqrtPriceAtTick(TICK_UPPER),
            amount0,
            amount1
        );

        Plan memory planner = Planner.init();
        planner.add(
            Actions.MINT_POSITION,
            abi.encode(
                poolKey,
                TICK_LOWER,
                TICK_UPPER,
                liquidity,
                amount0,
                amount1,
                recipient,
                ""
            )
        );

        bytes memory calls = planner.finalizeModifyLiquidityWithClose(poolKey);

        IERC20(token0).approve(address(permit2), type(uint256).max);
        IERC20(token1).approve(address(permit2), type(uint256).max);

        permit2.approve(
            token0,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        permit2.approve(
            token1,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        posm.modifyLiquidities(calls, block.timestamp + 3600);

        uint256 balanceAAfter = IERC20(tokenA).balanceOf(address(this));
        uint256 balanceBAfter = IERC20(tokenB).balanceOf(address(this));

        if (balanceAAfter > balanceABefore) {
            IERC20(tokenA).transfer(msg.sender, balanceAAfter - balanceABefore);
        }

        if (balanceBAfter > balanceBBefore) {
            IERC20(tokenB).transfer(msg.sender, balanceBAfter - balanceBBefore);
        }
    }

    function increaseLiquidity(
        uint256 tokenId,
        uint256 amount0,
        uint256 amount1
    ) external nonReentrant {
        (PoolKey memory poolKey, PositionInfo positionInfo) = posm
            .getPoolAndPositionInfo(tokenId);
        (Currency currency0, Currency currency1, , , ) = posm.poolKeys(
            positionInfo.poolId()
        );

        address token0 = Currency.unwrap(currency0);
        address token1 = Currency.unwrap(currency1);

        IERC20(token0).transferFrom(msg.sender, address(this), amount0);
        IERC20(token1).transferFrom(msg.sender, address(this), amount1);

        IERC20(token0).approve(address(permit2), type(uint256).max);
        IERC20(token1).approve(address(permit2), type(uint256).max);

        permit2.approve(
            token0,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        permit2.approve(
            token1,
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        (uint160 sqrtPriceX96, , , ) = StateLibrary.getSlot0(
            poolManager,
            poolKey.toId()
        );

        uint256 liquidityDelta = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(positionInfo.tickLower()),
            TickMath.getSqrtPriceAtTick(positionInfo.tickUpper()),
            amount0,
            amount1
        );

        Plan memory planner = Planner.init();
        planner.add(
            Actions.INCREASE_LIQUIDITY,
            abi.encode(tokenId, liquidityDelta, amount0, amount1, "")
        );

        bytes memory calls = planner.finalizeModifyLiquidityWithClose(poolKey);

        posm.modifyLiquidities(calls, block.timestamp + 3600);
    }

    function emergencyWithdrawERC20(address token) external nonReentrant {
        require(token != address(0), "Invalid token address");
        require(msg.sender == admin, "Only admin can call this function");

        IERC20(token).safeTransfer(
            admin,
            IERC20(token).balanceOf(address(this))
        );
    }
}
