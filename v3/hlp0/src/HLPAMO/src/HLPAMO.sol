// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IHLP0 is IERC20 {
    function amoRedeem(uint256 _requestId, uint256 _proftIn) external;
    function requestRedeem(uint256 _amountOfHLP) external;
    function NEW_REQUEST_ID() external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function previewDeposit(uint256 assets) external view returns (uint256);
    function ORACLE_PROVIDER() external view returns (address);
}

contract HLPAMO is Ownable {
    ISwapRouter public constant router = ISwapRouter(0xAA23611badAFB62D37E7295A682D21960ac85A90);
    IERC20 public constant USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    IHLP0 public constant HLP0 = IHLP0(0x3D75F2BB8aBcDBd1e27443cB5CBCE8A668046C81);

    constructor() Ownable(msg.sender) {
        HLP0.approve(address(router), type(uint256).max);
        USDC.approve(address(router), type(uint256).max);
        USDC.approve(address(HLP0), type(uint256).max);
    }

    function increaseBacking(uint256 _amountIn) external {
        require(msg.sender == HLP0.ORACLE_PROVIDER(), "NOT AUTHORIZED");
        uint256 amountOut = router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(USDC),
                tokenOut: address(HLP0),
                fee: 100,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: _amountIn,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );
        /// convert _amountIn USDC to equivalent HLP0 shares
        uint256 sharesToRedeem = HLP0.previewDeposit(_amountIn);
        /// initiate redeem request for exactly _amountIn worth
        HLP0.requestRedeem(sharesToRedeem);
        /// get the actual profit: redemption value minus what we paid
        uint256 usdcProfit = HLP0.previewRedeem(amountOut) - _amountIn;
        /// redeem the HLP0
        HLP0.amoRedeem(HLP0.NEW_REQUEST_ID() - 1, usdcProfit);
    }

    function rescue(address _token) external onlyOwner {
        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }
} 
