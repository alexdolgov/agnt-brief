// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../interfaces/INativeFixedPriceLiquidityPool.sol";
import "../libraries/TransferHelper.sol";
import "./NativeLPToken.sol";
import "./NativeTreasury.sol";

/**
This contract implements a fixed-price liquidity pool for two tokens (X and Y) with a specified ratio.
Users can deposit and withdraw tokens (X and Y) and receive LP tokens in proportion to their deposits.
The contract also handles swap transactions between the two tokens, charging a fee which causes the LP token price to appreciate.

The fixed-price liquidity pool works under the following conditions:
- The price between token X and token Y is always fixed.
- There are balances available for both tokens in the pool.

When users deposit tokens, the contract calculates the LP token price to determine the LP token amount the depositor can get.
The LP token price is based on the total value of the underlying tokens, expressed in a common unit (e.g., the total value in USD).
When users withdraw tokens, the contract calculates the proportional value of the user's LP token balance to the total supply
to determine how much of the underlying tokens can be withdrawn. The withdrawal options include:
- Withdraw only token X
- Withdraw only token Y (if the balance is sufficient)
- Withdraw a mix of token X and token Y (based on the fixed price ratio and available balances)

When traders perform swaps between token X and token Y, transaction fees accumulate in the contract, causing the LP token price to appreciate.
This means that when users withdraw their tokens, they will receive more underlying tokens, while new depositors will receive fewer LP tokens
when depositing the same amount of tokens.
 */

contract NativeFixedPriceLiquidityPool is
    INativeFixedPriceLiquidityPool,
    NativeTreasury,
    NativeLPToken,
    ReentrancyGuard
{
    uint128 public immutable token0Price;
    uint128 public immutable token1Price;

    constructor(
        string memory name,
        string memory symbol,
        address _token0,
        address _token1,
        uint128 _token0Price,
        uint128 _token1Price
    ) NativeTreasury(_token0, _token1) NativeLPToken(name, symbol) {
        require(
            _token0 != address(0) && _token1 != address(0),
            "zero address input for token0 or token1"
        );
        require(_token0 != _token1, "token0 and token1 should be different address");
        require(_token0Price > 0 && _token0Price > 0, "price must be > 0");
        token0Price = _token0Price;
        token1Price = _token1Price;
    }

    /** modifier */
    modifier ensure(uint deadline) {
        require(deadline >= block.timestamp, "NativeFixedPriceLiquidityPool: EXPIRED");
        _;
    }

    /** external functions */
    function addLiquidity(
        uint amountA,
        uint amountB,
        address to,
        uint deadline
    ) external override ensure(deadline) nonReentrant returns (uint liquidity) {
        TransferHelper.safeTransferFrom(token0, msg.sender, address(this), amountA);
        TransferHelper.safeTransferFrom(token1, msg.sender, address(this), amountB);
        liquidity = mint(to);
    }

    // amountB will be derived from liquidity and amountA
    function removeLiquidity(
        uint liquidity,
        uint amountA,
        address to,
        uint deadline
    ) external override ensure(deadline) nonReentrant {
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));

        if (amountA > balance0) {
            revert InsufficientBalanceToWithdraw(token0, amountA, balance0);
        }

        require(totalSupply() > 0, "cannot withdraw when totalSupply = 0");

        // Lp_token_price = (reserve0 * token0Price + reserve1 * token1Price) / totalSupply()
        uint withdrawValue = (liquidity * (reserve0 * token0Price + reserve1 * token1Price)) /
            totalSupply();
        require(
            withdrawValue >= amountA * token0Price,
            "input amountA exceeds total value of LP token provided"
        );

        uint amountB = (withdrawValue - amountA * token0Price) / token1Price;

        if (amountB > balance1) {
            revert InsufficientBalanceToWithdraw(token1, amountB, balance1);
        }

        _burn(msg.sender, liquidity);
        emit LPTokenBurned(msg.sender, amountA, amountB, to);

        if (amountA > 0) {
            TransferHelper.safeTransfer(token0, to, amountA);
        }
        if (amountB > 0) {
            TransferHelper.safeTransfer(token1, to, amountB);
        }

        balance0 = IERC20(token0).balanceOf(address(this));
        balance1 = IERC20(token1).balanceOf(address(this));
        _update(balance0, balance1);
    }

    // the LP token is priced by token1 (each LP token is worth how many token1s)
    function getCurrentLpTokenPrice() public view returns (uint256) {
        if (totalSupply() == 0) {
            return 1;
        }
        return (reserve0 * token0Price + reserve1 * token1Price) / totalSupply();
    }

    /** internal functions */
    function mint(address to) internal returns (uint liquidity) {
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));
        uint amount0 = balance0 - reserve0;
        uint amount1 = balance1 - reserve1;

        uint depositValue = amount0 * token0Price + amount1 * token1Price;
        if (totalSupply() == 0) {
            liquidity = depositValue;
        } else {
            // Lp_token_price = (reserve0 * token0Price + reserve1 * token1Price) / totalSupply()
            // liquidity = depositValue / Lp_token_price. Redorder the formula to avoid rounding issue
            liquidity =
                (depositValue * totalSupply()) /
                (reserve0 * token0Price + reserve1 * token1Price);
        }

        _mint(to, liquidity);
        _update(balance0, balance1);
        emit LPTokenMinted(msg.sender, amount0, amount1, liquidity);
    }

    /** view functions */
    function getLiqByAmountAB(uint amountA, uint amountB) public view returns (uint liquidity) {
        uint depositValue = amountA * token0Price + amountB * token1Price;
        if (totalSupply() == 0) {
            liquidity = depositValue;
        } else {
            liquidity =
                (depositValue * totalSupply()) /
                (reserve0 * token0Price + reserve1 * token1Price);
        }
    }

    function getAmountAByLiqAndAmountB(
        uint liquidity,
        uint amountB
    ) public view returns (uint amountA) {
        uint withdrawValue = (liquidity * (reserve0 * token0Price + reserve1 * token1Price)) /
            totalSupply();
        uint amountBValue = amountB * token1Price;
        require(withdrawValue >= amountBValue, "value of amountB exceeds the liquidity value");
        uint amountAValue = withdrawValue - amountBValue;
        amountA = amountAValue / token0Price;
    }

    function getAmountBByLiqAndAmountA(
        uint liquidity,
        uint amountA
    ) public view returns (uint amountB) {
        uint withdrawValue = (liquidity * (reserve0 * token0Price + reserve1 * token1Price)) /
            totalSupply();
        uint amountAValue = amountA * token0Price;
        require(withdrawValue >= amountAValue, "value of amountA exceeds the liquidity value");
        uint amountBValue = withdrawValue - amountAValue;
        amountB = amountBValue / token1Price;
    }
}
