// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/ISwapRouter.sol";

import './interfaces/IRouter01.sol';


contract stakingNFTConverterRouter {

    using SafeERC20 for IERC20;

    address public algebraRouter;
    address public thenaV1Router;
    address public stakingNftConverter;
    address public owner;

    mapping(address => bytes) public tokenToSwapData;

    constructor() {
        owner = msg.sender;
        stakingNftConverter = address(0x14cBeee51410c4e3B8269B534933404AEE416A96);
        algebraRouter = address(0x327Dd3208f0bCF590A66110aCB6e5e6941A4EfA0);
        thenaV1Router = address(0x20a304a7d126758dfe6B243D0fc515F83bCA8431);
    }


    /// @notice Swap a given amount. Called from stakingNFTConverter
    /// @param amountIn amount to trade
    /// @param routes   routes with token info
    /// @param deadline max timestamp
    function swapExactTokensForTokens(uint amountIn,uint /*amountOutMin*/, IRouter01.route[] calldata routes,address /*to*/,uint deadline) external returns (uint[] memory amounts){
        require(msg.sender == stakingNftConverter || msg.sender == owner);

        address tokenIn = routes[0].from;
        IERC20(tokenIn).safeTransferFrom(stakingNftConverter,address(this), amountIn);
        IERC20(tokenIn).safeApprove(algebraRouter, 0);
        IERC20(tokenIn).safeApprove(algebraRouter, amountIn);
        

        // If there's a path go for v3, else vAMM
        ISwapRouter.ExactInputParams memory params;
        if(tokenToSwapData[tokenIn].length > 0){
            params.path = tokenToSwapData[tokenIn];
            params.recipient = stakingNftConverter;
            params.deadline = deadline;
            params.amountIn = amountIn;
            params.amountOutMinimum = 0;
            ISwapRouter(algebraRouter).exactInput(params);
        } else {
            IRouter01(thenaV1Router).swapExactTokensForTokens(amountIn, 1, routes, stakingNftConverter,deadline);
        }

        amounts = new uint[](2);

    }

    function setalgebraRouter(address _algebraRouter) external {
        require(owner == msg.sender);
        algebraRouter = _algebraRouter;
    }


    function setstakingNftConverter(address _stakingNftConverter) external {
        require(owner == msg.sender);
        stakingNftConverter = _stakingNftConverter;
    }

    function setTokenToSwapData(address token, bytes memory path) external {
        require(owner == msg.sender);
        tokenToSwapData[token] = path;
    }

    function setNewOwner(address _owner) external {
        require(owner == msg.sender);
        owner = _owner;
    }

}