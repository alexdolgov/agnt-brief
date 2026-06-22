pragma solidity 0.7.5;
pragma abicoder v2;

import "../Utils.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IPlatypusPool {
    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 actualToAmount, uint256 haircut);
}

contract Platypus {
    function swapOnPlatypus(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        address exchange
    ) internal {
        Utils.approve(exchange, address(fromToken), fromAmount);
        IPlatypusPool(exchange).swap(
            address(fromToken),
            address(toToken),
            fromAmount,
            1,
            address(this),
            block.timestamp
        );
    }
}
