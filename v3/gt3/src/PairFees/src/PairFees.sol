// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPairFees} from "src/interfaces/IPairFees.sol";

contract PairFees is IPairFees, Initializable {
    using SafeERC20 for IERC20;

    address public pair;
    address public token0;
    address public token1;

    constructor() {
        _disableInitializers();
    }

    function initialize(address pair_, address token0_, address token1_) public initializer {
        pair = pair_;
        token0 = token0_;
        token1 = token1_;
    }

    function claimFeesFor(address recipient_, uint256 amount0_, uint256 amount1_) external {
        if (msg.sender != pair) revert OnlyPair();
        if (amount0_ > 0) IERC20(token0).safeTransfer(recipient_, amount0_);
        if (amount1_ > 0) IERC20(token1).safeTransfer(recipient_, amount1_);
    }
}
