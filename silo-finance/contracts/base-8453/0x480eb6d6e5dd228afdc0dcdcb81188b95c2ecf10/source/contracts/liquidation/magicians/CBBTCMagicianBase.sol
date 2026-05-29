// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IMagician.sol";
import "./interfaces/IAerodromeSwapRouterLike.sol";

contract CBBTCMagicianBase is IMagician {
    IAerodromeSwapRouterLike public constant ROUTER = 
        IAerodromeSwapRouterLike(0xBE6D8f0d05cC4be24d5167a3eF062215bE6D18a5);
    
    address public constant CBBTC = 0xcbB7C0000aB88B473b1f5aFd9ef808440eed33Bf;
    address public constant WETH = 0x4200000000000000000000000000000000000006;

    error InvalidAsset();

    /// @inheritdoc IMagician
    function towardsNative(address _asset, uint256 _amount) external returns (address asset, uint256 amount) {
        if (_asset != address(CBBTC)) revert InvalidAsset();

        IERC20(CBBTC).approve(address(ROUTER), _amount);

        IAerodromeSwapRouterLike.ExactInputSingleParams memory params;
        
        params = IAerodromeSwapRouterLike.ExactInputSingleParams({
            tokenIn: _asset,
            tokenOut: WETH,
            tickSpacing: 100,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: _amount,
            amountOutMinimum: 1,
            sqrtPriceLimitX96: 0
        });

        asset = WETH;
        amount = ROUTER.exactInputSingle(params);
    }

    /// @inheritdoc IMagician
    // solhint-disable-next-line named-return-values
    function towardsAsset(address _asset, uint256 _amount) external returns (address asset, uint256 amount) {
        if (_asset != address(CBBTC)) revert InvalidAsset();

        IERC20(WETH).approve(address(ROUTER), type(uint256).max);

        IAerodromeSwapRouterLike.ExactOutputSingleParams memory params;

        params = IAerodromeSwapRouterLike.ExactOutputSingleParams({
            tokenIn: WETH,
            tokenOut: _asset,
            tickSpacing: 100,
            recipient: address(this),
            deadline: block.timestamp,
            amountOut: _amount,
            amountInMaximum: type(uint256).max,
            sqrtPriceLimitX96: 0
        });

        asset = _asset;
        amount = ROUTER.exactOutputSingle(params);

        IERC20(WETH).approve(address(ROUTER), 0);
    }
}
