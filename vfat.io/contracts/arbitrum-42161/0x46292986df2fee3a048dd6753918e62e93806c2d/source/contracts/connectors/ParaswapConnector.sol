// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/ILiquidityConnector.sol";

struct ParaswapExtraData {
    address target;
    bytes data;
}

contract ParaswapConnector is ILiquidityConnector {
    error ParaswapSwapFailed(bytes error);

    function addLiquidity(AddLiquidityData memory) external payable override {
        revert("Not implemented");
    }

    function removeLiquidity(RemoveLiquidityData memory)
        external
        pure
        override
    {
        revert("Not implemented");
    }

    function swapExactTokensForTokens(SwapData memory swapData)
        external
        payable
        override
    {
        ParaswapExtraData memory extraData =
            abi.decode(swapData.extraData, (ParaswapExtraData));
        (bool success, bytes memory error) =
            extraData.target.call(extraData.data);
        if (!success) {
            revert ParaswapSwapFailed(error);
        }
    }
}
