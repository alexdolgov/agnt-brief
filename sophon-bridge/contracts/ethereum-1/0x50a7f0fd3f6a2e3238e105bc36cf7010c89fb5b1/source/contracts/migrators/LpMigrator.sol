// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IUniswapV2Pair} from "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import {IUniswapV2Factory} from "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import {IUniswapV2Router02} from "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

import {IGFMigrator} from "../interfaces/IGFMigrator.sol";

contract LpMigrator {
  using SafeERC20 for IERC20;

  IUniswapV2Router02 public immutable router;

  IERC20 public immutable gfToken;

  IERC20 public immutable zentryToken;

  IERC20 public immutable weth;

  IGFMigrator public immutable gfMigrator;

  IUniswapV2Pair public immutable gfPair;

  error ZentryPoolNotInitialized();

  /**
   * Note that we approve the gfMigrator to spend gfToken and the router to spend zentryToken, weth and gfPair
   * since this contract is not intended to hold any token except during migration
   */
  constructor(address _router, address _gfToken, address _zentryToken, address _gfMigrator) {
    router = IUniswapV2Router02(_router);
    gfToken = IERC20(_gfToken);
    zentryToken = IERC20(_zentryToken);
    weth = IERC20(router.WETH());
    gfMigrator = IGFMigrator(_gfMigrator);

    address factory_ = IUniswapV2Router02(_router).factory();
    gfPair = IUniswapV2Pair(IUniswapV2Factory(factory_).getPair(address(gfToken), address(weth)));
    if (IUniswapV2Factory(factory_).getPair(address(zentryToken), address(weth)) == address(0)) {
      revert ZentryPoolNotInitialized();
    }

    gfToken.approve(address(gfMigrator), type(uint256).max);
    zentryToken.approve(address(router), type(uint256).max);
    weth.approve(address(router), type(uint256).max);
    gfPair.approve(address(router), type(uint256).max);
  }

  /**
   * migrate liquidity from gf-eth LP to zentry-eth LP
   * @return amountZent The amount of Zentry sent to zentry-eth pool
   * @return amountETH The amount of ETH sent to zentry-eth pool
   * @return liquidity The amount of zentry-eth liquidity minted
   */
  function migrate(
    uint256 liquidityToMigrate,
    uint256 amountZentMin,
    uint256 amountETHMin,
    address to,
    uint256 deadline
  ) external returns (uint256 amountZent, uint256 amountETH, uint256 liquidity) {
    gfPair.transferFrom(msg.sender, address(this), liquidityToMigrate);
    (, uint256 amountETHDesired) =
      router.removeLiquidity(address(gfToken), address(weth), liquidityToMigrate, 1, 1, address(this), deadline);

    uint256 zentryBalBefore = zentryToken.balanceOf(address(this));
    gfMigrator.migrate();
    uint256 amountZentDesired = zentryToken.balanceOf(address(this)) - zentryBalBefore;

    (amountZent, amountETH, liquidity) = router.addLiquidity(
      address(zentryToken),
      address(weth),
      amountZentDesired,
      amountETHDesired,
      amountZentMin,
      amountETHMin,
      to,
      deadline
    );

    if (amountZentDesired > amountZent) {
      zentryToken.safeTransfer(msg.sender, amountZentDesired - amountZent);
    } else if (amountETHDesired > amountETH) {
      weth.safeTransfer(msg.sender, amountETHDesired - amountETH);
    }
  }
}
