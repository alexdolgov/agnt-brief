//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SlippageCalculator is Ownable {
    event ERC20Recovered(uint256 amount, address to);
    event BNBRecovered(uint256 amount, address to);

    error Slippage(uint256);

    receive() external payable {}


    /**
     * @notice Calculates slippage in basis points
     * @param path Swap path
     * @param router Router contract
     * @return slippage Slippage in basis points
     * @dev Swap path should end with WBNB address
     * @dev function should be called with callStatic and non-zero msg.value
     */
    function calculateSlippage(
        address[] calldata path,
        IRouter router
    ) public payable returns(uint256 slippage) {
        address[] memory revertedPath = new address[](path.length);

        for (uint i = 0; i < path.length; i++) {
            revertedPath[i] = path[path.length - 1 - i];
        }

        uint256 amountIn = address(this).balance;
        require(amountIn > 0, "msg.value == 0");

        router.swapExactETHForTokensSupportingFeeOnTransferTokens{value: amountIn}(
            0,
            revertedPath,
            address(this),
            block.timestamp + 1200
        );

        amountIn = IERC20(path[0]).balanceOf(address(this));
        require(amountIn > 0, "No tokenIn");

        uint256[] memory amounts = router.getAmountsOut(amountIn, path);
        uint256 expectedIncome = amounts[amounts.length - 1];

        IERC20(path[0]).approve(address(router), amountIn);
        router.swapExactTokensForETHSupportingFeeOnTransferTokens(
            amountIn,
            0,
            path,
            address(this),
            block.timestamp + 1200
        );
        uint256 actualIncome = address(this).balance;

        slippage = 10000 * actualIncome / expectedIncome;
        payable(msg.sender).call{value: actualIncome}("");
    }


    /**
     * @notice Calculates slippage in basis points
     * @param path Swap path
     * @param router Router contract
     * @dev Swap path should end with WBNB address
     * @dev Function reverts with slippage value
     */
    function calculateSlippageWithRevert(
        address[] calldata path,
        IRouter router
    ) external payable {
        uint256 _slippage = calculateSlippage(path, router);
        revert Slippage(_slippage);
    }


    /**
     * @notice Recovers stuck ERC20 tokens
     * @param token Token address
     * @param to Tokens receiver
     * @dev Only Owner
     */
    function recoverERC20(
        IERC20 token,
        address to
    ) external onlyOwner {
        uint256 amount = token.balanceOf(address(this));
        token.transfer(to, amount);

        emit ERC20Recovered(amount,to);
    }


    /**
     * @notice Recovers stuck BNB
     * @param to BNB receiver
     * @dev Only Owner
     */
    function recoverBNB(
        address to
    ) external onlyOwner {
        uint256 amount = address(this).balance;
        (bool success,) = payable(to).call{value: amount}("");
        require(success);

        emit BNBRecovered(amount,to);
    }
}

interface IRouter {
    function WETH() external returns(address);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function getAmountsOut(uint256 amountIn, address[] calldata path)
    external
    view
    returns (uint256[] memory amounts);
}
