// SPDX-License-Identifier: MIT
// This file just references TransparentUpgradeableProxy
pragma solidity 0.8.17;

import "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

contract SwapHelper {
    address public uniswapQuoter;

    constructor(address uniswapQuoter_) {
        uniswapQuoter = uniswapQuoter_;
    }

    function evaluateOutAmount(
        bytes[] memory paths,
        uint256 amountIn
    ) public returns (uint256 bestPathIndex, uint256 bestOutAmount) {
        require(address(uniswapQuoter) != address(0), "RewardController::UNISWAP_QUOTER_NOT_SET");
        for (uint256 i = 0; i < paths.length; i++) {
            uint256 outAmount = IQuoter(uniswapQuoter).quoteExactInput(paths[i], amountIn);
            if (outAmount > bestOutAmount) {
                bestPathIndex = i;
                bestOutAmount = outAmount;
            }
        }
    }
}
