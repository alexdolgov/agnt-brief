// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../interfaces/IOneInchSwap.sol";

library OneInchSwapProcess {
    event SwapSuccess(IOneInchSwap.SwapParams params, uint256 returnAmount);

    function swap(IOneInchSwap.SwapParams calldata params) external returns (uint256 returnAmount) {
        if (params.token != address(0)) {
            IERC20(params.token).approve(params.router, params.tokenAmount);
        }

        (bool success, bytes memory returnData) = params.router.call{ value: msg.value }(params.data);

        require(success, "1inch swap failed");

        returnAmount = abi.decode(returnData, (uint256));

        emit SwapSuccess(params, returnAmount);
    }
}
