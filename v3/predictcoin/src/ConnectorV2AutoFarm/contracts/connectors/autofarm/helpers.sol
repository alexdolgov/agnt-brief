pragma solidity ^0.7.0;

/**
 * @title Autofarm.
 * @dev Deposit, Withdraw and harvest lp tokens from Autofarm.
 */

import {IAutoFarm} from "./interface.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {DSMath} from "../../common/math.sol";
import {Basic} from "../../common/basic.sol";
import {Events} from "./events.sol";

abstract contract Helpers is DSMath, Basic {
    /**
     * @dev Autofarm router
     */
    IAutoFarm internal constant autoFarmV2 =
        IAutoFarm(0x0895196562C7868C5Be92459FaE7f877ED450452);
}
