// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import { UFixed6 } from "@equilibria/root/number/types/UFixed6.sol";
import { UFixed18, UFixed18Lib } from "@equilibria/root/number/types/UFixed18.sol";
import { Token6 } from "@equilibria/root/token/types/Token6.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { IERC3156FlashLender6 } from "./interfaces/IERC3156FlashLender.sol";
import { ERC3156FlashBorrower6 } from "./libs/ERC3156FlashBorrower.sol";
import { IEmptysetMigrationReserve } from "./interfaces/IEmptysetMigrationReserve.sol";
import { IUniswapV3SwapRouter } from "./interfaces/IUniswapV3SwapRouter.sol";

contract Migrator is ERC3156FlashBorrower6 {
    error MigratorNonZeroBalanceError();

    Token6 public immutable usdc;
    Token6 public immutable usdcE;
    IUniswapV3SwapRouter public immutable uniswapV3Router;
    IERC3156FlashLender6 public immutable balanceProvider;
    IEmptysetMigrationReserve public immutable reserve;

    constructor(
        Token6 _usdc,
        Token6 _usdcE,
        IUniswapV3SwapRouter _uniswapV3Router,
        IERC3156FlashLender6 _balanceProvider,
        IEmptysetMigrationReserve _reserve
    ) {
        usdc = _usdc;
        usdcE = _usdcE;
        uniswapV3Router = _uniswapV3Router;
        balanceProvider = _balanceProvider;
        reserve = _reserve;

        _usdcE.approve(address(_uniswapV3Router));
        _usdc.approve(address(_reserve));
    }

    function migrate(UFixed6 amount, UFixed6 slippage) public {
        usdc.pull(msg.sender, slippage);
        balanceProvider.flashLoan(this, usdc, amount, "");
        usdc.push(msg.sender);

        if (!usdc.balanceOf().isZero()) revert MigratorNonZeroBalanceError();
        if (!usdcE.balanceOf().isZero()) revert MigratorNonZeroBalanceError();
    }

    function onFlashLoan(
        address,
        Token6 token,
        UFixed6 amount,
        UFixed6,
        bytes calldata
    ) external returns (bytes32) {
        require(msg.sender == address(balanceProvider));

        reserve.migrate(UFixed18Lib.from(amount));
        _swap(usdcE.balanceOf(), amount.sub(usdc.balanceOf()));

        token.approve(msg.sender, amount);
        return ERC3156_ONFLASHLOAN_HASH;
    }

    function _swap(UFixed6 amountIn, UFixed6 amountOutMin) private returns (UFixed6) {
        return UFixed6.wrap(uniswapV3Router.exactInputSingle(IUniswapV3SwapRouter.ExactInputSingleParams({
            tokenIn: Token6.unwrap(usdcE),
            tokenOut: Token6.unwrap(usdc),
            fee: 100,
            recipient: address(this),
            amountIn: UFixed6.unwrap(amountIn),
            amountOutMinimum: UFixed6.unwrap(amountOutMin),
            sqrtPriceLimitX96: 0
        })));
    }
}
