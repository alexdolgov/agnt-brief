//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from  "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IWETH9} from  "./interfaces/IWETH9.sol";
import {IRouter} from "./interfaces/IRouter.sol";

contract SwapRouter {
    IRouter public router;
    address public owner;
    uint24 public poolFee;
    address public weth;

    modifier onlyOwner() {
        require(msg.sender == (owner), "Not owner");
        _;
    }

    constructor(address _swapRouter, address _weth) {
        router = IRouter(_swapRouter);
        weth = _weth;
        poolFee = 500;
        owner = msg.sender;
    }

    receive() external payable {}

    function setOwner(address _owner) external onlyOwner {
        owner = _owner;
    }

    function setPoolFee(uint24 _poolFee) external onlyOwner {
        poolFee = _poolFee;
    }

    function swap(address assetToken) public payable returns(uint256 amountOut){
        require(msg.value > 0, "Must send ETH to swap");
        uint costToCall = msg.value;

        IWETH9(weth).deposit{value: costToCall}();

        uint256 wethBalance = IWETH9(weth).balanceOf(address(this));
        require(wethBalance >= costToCall, "Insufficient WETH balance after deposit");
        // Authorize the Uniswap routing contract to use WETH
        IWETH9(weth).approve(address(router), wethBalance);

        // Set swap parameters
        IRouter.ExactInputSingleParams memory params = IRouter.ExactInputSingleParams({
            tokenIn: weth, // Use WETH as input token
            tokenOut: assetToken,
            fee: poolFee,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: costToCall,
            amountOutMinimum: 0,
            sqrtPriceLimitX96: 0
        });

        amountOut = router.exactInputSingle(params);

        IERC20(assetToken).transfer(msg.sender, amountOut);
    }
}