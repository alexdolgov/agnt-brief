// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ISwapRouter, IQuoterV2} from "../interfaces/external/velodrome/ISlipstream.sol";
import {Path} from "../dependencies/velodrome-finance/slipstream/contracts/periphery/libraries/Path.sol";
import {Adapter} from "./Adapter.sol";

contract VelodromeSlipstreamAdapter is Adapter {
    using Path for bytes;

    ISwapRouter immutable swapRouter;
    IQuoterV2 internal immutable quoterV2;

    constructor(ISwapRouter swapRouter_, IQuoterV2 quoterV2_) {
        swapRouter = swapRouter_;
        quoterV2 = quoterV2_;
    }

    function swapExactInput(bytes calldata path_) external {
        (address _tokenInAddress,,) = path_.decodeFirstPool();
        IERC20 _tokenIn = IERC20(_tokenInAddress);
        uint256 _amountIn = _tokenIn.balanceOf(address(this));
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: path_,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: _amountIn,
            amountOutMinimum: 0
        });
        _approveIfNeeded(IERC20(_tokenIn), address(swapRouter), _amountIn);
        swapRouter.exactInput(params);
    }
}
