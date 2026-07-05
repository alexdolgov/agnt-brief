// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.28;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract BasicTradeFactory {
    using SafeERC20 for IERC20;

    address public immutable swapper;

    constructor(address _swapper) {
        swapper = _swapper;
    }

    function enable(address _from, address _to) external {}

    function pullToSwap(address _strategy, address _token) external {
        require(msg.sender == swapper, "!swapper");
        IERC20 swapToken = IERC20(_token);
        uint256 toSwap = swapToken.balanceOf(_strategy);
        if (toSwap > 0) {
            swapToken.safeTransferFrom(_strategy, swapper, toSwap);
        }
    }
}
