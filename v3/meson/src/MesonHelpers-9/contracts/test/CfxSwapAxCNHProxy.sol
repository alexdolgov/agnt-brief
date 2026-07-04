// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
}

interface UniswapV3SwapRouter {
    struct ExactInputParams {
        bytes   path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    function exactInput(ExactInputParams calldata params)
        external
        payable
        returns (uint256 amountOut);
}

contract CfxSwapAxCNHProxy {
    UniswapV3SwapRouter constant ROUTER = UniswapV3SwapRouter(0x3B02e356d09E758E2711bC64CF33e48f3E1239b8);

    bytes constant PATH = hex"fe97e85d13abd9c1c33384e796f10b73905637ce0001f470bfd7f7eadf9b9827541272589a6b2bb760ae2e";

    function depositWithBeneficiary(
        address token,
        uint256 amount,
        address beneficiary,
        uint64 data
    ) payable external returns (bool) {
        if (token == address(0)) {
            revert("ETH not supported");
        } else {
            IERC20(token).transferFrom(msg.sender, address(this), amount);
            IERC20(token).approve(address(ROUTER), amount);

            // Build params with constant path
            UniswapV3SwapRouter.ExactInputParams memory params = UniswapV3SwapRouter.ExactInputParams({
                path: PATH,
                recipient: beneficiary,
                deadline: block.timestamp + 10 minutes,
                amountIn: amount,
                amountOutMinimum: amount * (data >> 32) / 1e6 / 1e12
            });

            ROUTER.exactInput(params);
        }

        return true;
    }
}
