// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

interface IShieldDaoChef {
    function lpToken(uint256 pid) external view returns (IERC20);
    function deposit(uint256 pid, uint256 amount, address to) external;
}

contract AndyZapper is ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    ISwapRouter public uniswapV3Router;
    IUniswapV2Router02 public uniswapV2Router;
    IERC20 public constant ANDY =
        IERC20(0x01CA78a2B5F1a9152D8A3A625bd7dF5765eeE1D8);
    IERC20 public constant ANDYX =
        IERC20(0xBfe801aa35fBA4719E9379A4b4850afA5c09E668);
    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    uint24 public constant V3_POOL_FEE = 2500; // 0.3% fee tier

    IShieldDaoChef public ShieldDaoChef;

    function initialize(
        address _shieldDaoChef,
        address _v3Router,
        address _v2Router
    ) external initializer {
        __ReentrancyGuard_init_unchained();
        ShieldDaoChef = IShieldDaoChef(_shieldDaoChef);
        uniswapV3Router = ISwapRouter(_v3Router);
        uniswapV2Router = IUniswapV2Router02(_v2Router);
    }

    function zapETH(
        uint256 _poolId,
        uint256 minLpAmount,
        bool _transferResidual
    ) external payable nonReentrant returns (uint256 lpAmount) {
        require(msg.value > 0, "No BNB sent");

        // Step 1: Swap BNB to ANDY via V3
        _swapBNBToAndy(msg.value, 0);
        uint andyAmount = ANDY.balanceOf(address(this));

        // Step 2: Split ANDY into ANDY/ANDYX for LP
        uint256 andyForLiquidity = andyAmount / 2;
        _swapAndyToAndyX(andyAmount - andyForLiquidity);
        uint256 andyxAmount = ANDYX.balanceOf(address(this));

        // // Step 3: Add liquidity and give LP to user
        lpAmount = _addLiquidity(andyForLiquidity, andyxAmount, minLpAmount);

        address _lp = address(ShieldDaoChef.lpToken(_poolId));

        require(_lp != address(0), "Invalid LP");
        // // Deposit to farm
        approveToken(_lp, address(ShieldDaoChef), lpAmount);
        ShieldDaoChef.deposit(_poolId, lpAmount, msg.sender);

        // Return dust (if any)
        if (_transferResidual) {
            _returnDust();
        }
    }

    function _swapBNBToAndy(
        uint256 bnbAmount,
        uint256 minAndyAmount
    ) internal returns (uint256 andyAmount) {
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams({
                tokenIn: WBNB, // BNB
                tokenOut: address(ANDY),
                fee: V3_POOL_FEE,
                recipient: address(this),
                deadline: block.timestamp + 300,
                amountIn: bnbAmount,
                amountOutMinimum: minAndyAmount,
                sqrtPriceLimitX96: 0
            });

        andyAmount = uniswapV3Router.exactInputSingle{value: bnbAmount}(params);
    }

    function _swapAndyToAndyX(uint256 andyAmount) internal returns (uint256) {
        ANDY.approve(address(uniswapV2Router), andyAmount);

        address[] memory path = new address[](2);
        path[0] = address(ANDY);
        path[1] = address(ANDYX);

        uint[] memory amounts = uniswapV2Router.swapExactTokensForTokens(
            andyAmount,
            0, // Minimum amount out (enforced at zap level)
            path,
            address(this),
            block.timestamp + 300
        );

        return amounts[1];
    }

    function _addLiquidity(
        uint256 andyAmount,
        uint256 andyxAmount,
        uint256 minLpAmount
    ) internal returns (uint256) {
        ANDY.approve(address(uniswapV2Router), andyAmount);
        ANDYX.approve(address(uniswapV2Router), andyxAmount);

        (, , uint256 liquidity) = uniswapV2Router.addLiquidity(
            address(ANDY),
            address(ANDYX),
            andyAmount,
            andyxAmount,
            1, // Minimum ANDY (enforced at zap level)
            1, // Minimum ANDYX (enforced at zap level)
            address(this), 
            block.timestamp + 300
        );

        require(liquidity >= minLpAmount, "Insufficient LP output");
        return liquidity;
    }

    function _returnDust() internal {
        // Return leftover ANDY
        uint256 andyDust = ANDY.balanceOf(address(this));
        if (andyDust > 0) {
            ANDY.transfer(msg.sender, andyDust);
        }

        // Return leftover ANDYX
        uint256 andyxDust = ANDYX.balanceOf(address(this));
        if (andyxDust > 0) {
            ANDYX.transfer(msg.sender, andyxDust);
        }

        // Return leftover BNB (shouldn't happen)
        if (address(this).balance > 0) {
            payable(msg.sender).transfer(address(this).balance);
        }
    }

    function approveToken(
        address _token,
        address _spender,
        uint256 _amount
    ) public {
        IERC20(_token).safeApprove(_spender, 0);
        IERC20(_token).safeApprove(_spender, _amount);
    }

    receive() external payable {} // For BNB refunds
}
