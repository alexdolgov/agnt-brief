pragma solidity ^0.8.0;

import "./IPikaPerp.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import '@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol';
import '@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol';

contract VaultRouter {

    address public swapRouter;
    address public admin;
    address public pikaPerp;
    uint24 public poolFee;

    constructor(address _swapRouter, uint24 _poolFee, address _pikaPerp) {
        swapRouter = _swapRouter;
        poolFee = _poolFee;
        pikaPerp = _pikaPerp;
        admin = msg.sender;
    }

    function swap(address tokenIn, address tokenOut, uint256 amountIn, address recipient) public {
        TransferHelper.safeTransferFrom(tokenIn, msg.sender, address(this), amountIn);
        TransferHelper.safeApprove(tokenIn, swapRouter, amountIn);

        ISwapRouter.ExactInputParams memory params =
        ISwapRouter.ExactInputParams({
        path: abi.encodePacked(tokenIn, poolFee, tokenOut),
        recipient: recipient,
        deadline: block.timestamp,
        amountIn: amountIn,
        amountOutMinimum: 0
        });
        ISwapRouter(swapRouter).exactInput(params);
    }

    function swapAndStake(address tokenIn, address tokenOut, uint256 amountIn, address user) external {
        swap(tokenIn, tokenOut, amountIn, address(this));
        uint256 amountToStake = IERC20(tokenOut).balanceOf(address(this));
        IERC20(tokenOut).approve(pikaPerp, amountToStake);
        IPikaPerp(pikaPerp).stake(amountToStake * 100, user);
    }

    function setPoolFees(uint24 _poolFee) external onlyAdmin {
        poolFee = _poolFee;
    }

    function setAdmin(address _admin) external onlyAdmin {
        admin = _admin;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "!admin");
        _;
    }

}