// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.6;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IUniswapV3Pool} from "uniswap-v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import {TickMath} from "src/libraries/TickMath.sol";
import {LiquidityAmounts} from "src/libraries/uniswap/LiquidityAmounts.sol";
import {IWETH} from "src/interfaces/IWETH.sol";

contract UniswapV3FullRangePair is ERC20Upgradeable, UUPSUpgradeable, AccessManagedUpgradeable {
    using SafeERC20 for IERC20;

    address public immutable token0;
    address public immutable token1;

    address public immutable pool;

    int24 constant TICK_LOWER = -887200;
    int24 constant TICK_UPPER = 887200;

    IWETH immutable weth;

    uint24 immutable fee;

    uint160 immutable sqrtRatioAX96;
    uint160 immutable sqrtRatioBX96;

    constructor(address _pool, address _weth) {
        pool = _pool;
        weth = IWETH(_weth);
        fee = IUniswapV3Pool(_pool).fee();
        token0 = IUniswapV3Pool(_pool).token0();
        token1 = IUniswapV3Pool(_pool).token1();
        sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(TICK_LOWER);
        sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(TICK_UPPER);

        _disableInitializers();
    }

    function initialize(string memory name_, string memory symbol_, address _authority) external initializer {
        __ERC20_init(name_, symbol_);
        __AccessManaged_init(_authority);
        __UUPSUpgradeable_init();
    }

    // @dev intentionally using `restricted` for internal function
    function _authorizeUpgrade(address) internal override restricted {}


    /// @notice Add liquidity to an initialized pool
    function _addLiquidity(uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min)
        internal
        returns (uint128 liquidity, uint256 amount0, uint256 amount1)
    {
        // compute the liquidity amount
        {
            (uint160 sqrtPriceX96,,,,,,) = IUniswapV3Pool(pool).slot0();

            liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, amount0Desired, amount1Desired
            );
        }

        (amount0, amount1) = IUniswapV3Pool(pool).mint(
            address(this),
            TICK_LOWER,
            TICK_UPPER,
            liquidity,
            abi.encode(msg.sender)
        );

        require(amount0 >= amount0Min && amount1 >= amount1Min, "Price slippage check");
    }

    function _pay(address token, address payer, uint256 value) internal {
        if (token == address(weth) && address(this).balance >= value) {
            // pay with WETH9
            weth.deposit{value: value}(); // wrap only what is needed to pay
            weth.transfer(pool, value);
        } else if (payer == address(this)) {
            IERC20(token).safeTransfer(pool, value);
        } else {
            IERC20(token).safeTransferFrom(payer, pool, value);
        }
    }

    function _safeTransferETH(address to, uint256 value) internal {
        (bool success,) = to.call{value: value}(new bytes(0));
        require(success, "STE");
    }

    function uniswapV3MintCallback(uint256 amount0Owed, uint256 amount1Owed, bytes calldata data) external {
        require(msg.sender == pool);
        address payer = abi.decode(data, (address));
        if (amount0Owed > 0) _pay(token0, payer, amount0Owed);
        if (amount1Owed > 0) _pay(token1, payer, amount1Owed);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function mint(uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min, address to)
        external
        payable
        returns (uint128 liquidity)
    {
        (liquidity,,) = _addLiquidity(amount0Desired, amount1Desired, amount0Min, amount1Min);
        _mint(to, liquidity);
        if (address(this).balance > 0) _safeTransferETH(msg.sender, address(this).balance);
    }

    function position()
        external
        view
        returns (
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        )
    {
        return IUniswapV3Pool(pool).positions(_positionKey());
    }

    function collect(address to) external restricted returns (uint256 amount0, uint256 amount1) {
        IUniswapV3Pool(pool).burn(TICK_LOWER, TICK_UPPER, 0); // poke
        (amount0, amount1) =
            IUniswapV3Pool(pool).collect(to, TICK_LOWER, TICK_UPPER, type(uint128).max, type(uint128).max);
    }

    function burn(uint128 liquidity, uint256 amount0Min, uint256 amount1Min, address to)
        external
        returns (uint256 amount0, uint256 amount1)
    {
        (amount0, amount1) = IUniswapV3Pool(pool).burn(TICK_LOWER, TICK_UPPER, liquidity);
        require(amount0 >= amount0Min && amount1 >= amount1Min, "Price slippage check");
        _burn(msg.sender, liquidity);        
        IUniswapV3Pool(pool).collect(to, TICK_LOWER, TICK_UPPER, uint128(amount0), uint128(amount1));
    }

    function _positionKey() internal view returns (bytes32) {
        return keccak256(abi.encodePacked(address(this), TICK_LOWER, TICK_UPPER));
    }
}
