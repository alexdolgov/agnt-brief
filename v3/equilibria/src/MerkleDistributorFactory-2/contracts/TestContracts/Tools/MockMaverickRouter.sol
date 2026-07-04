// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import "../../Interfaces/Maverick/IMaverickRouter.sol";
import "../../Interfaces/Maverick/IPool.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";

contract MockMaverickRouter is IMaverickRouter {
    uint256 private constant ADDR_SIZE = 20;
    uint256 private constant NEXT_OFFSET = ADDR_SIZE + ADDR_SIZE;

    using SafeERC20 for IERC20;

    function exactInput(
        ExactInputParams calldata params
    ) external payable override returns (uint256 amountOut) {
        require(
            params.amountIn * 2 >= params.amountOutMinimum,
            "Too little received"
        );
        (IERC20 tokenIn, IERC20 tokenOut, ) = decodeFirstPool(params.path);
        tokenIn.safeTransferFrom(msg.sender, address(this), params.amountIn);
        amountOut = params.amountIn * 2;
        if (tokenOut.balanceOf(address(this)) >= amountOut) {
            tokenOut.safeTransfer(params.recipient, amountOut);
        } else {
            ERC20Mock(address(tokenOut)).mint(params.recipient, amountOut);
        }
        return amountOut;
    }

    function exactOutput(
        ExactOutputParams calldata params
    ) external payable override returns (uint256 amountIn) {}

    function decodeFirstPool(
        bytes memory path
    ) internal pure returns (IERC20 tokenIn, IERC20 tokenOut, IPool pool) {
        tokenIn = IERC20(toAddress(path, 0));
        pool = IPool(toAddress(path, ADDR_SIZE));
        tokenOut = IERC20(toAddress(path, NEXT_OFFSET));
    }

    function toAddress(
        bytes memory _bytes,
        uint256 _start
    ) internal pure returns (address) {
        require(_start + 20 >= _start, "toAddress_overflow");
        require(_bytes.length >= _start + 20, "toAddress_outOfBounds");
        address tempAddress;

        assembly {
            tempAddress := div(
                mload(add(add(_bytes, 0x20), _start)),
                0x1000000000000000000000000
            )
        }

        return tempAddress;
    }
}
