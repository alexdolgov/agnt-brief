pragma solidity ^0.7.0;

import {DSMath} from "../../common/math.sol";
import {Basic} from "../../common/basic.sol";
import {TokenInterface} from "../../common/interfaces.sol";
import {IStaking} from "./interface.sol";

abstract contract Helpers is DSMath, Basic {
    /**
     * @dev Autofarm router
     */
    IStaking internal constant staking =
        IStaking(0xC3C7b66F9232176E5F7d4890719F1678ea880bFB);
    TokenInterface internal constant rewardToken =
        TokenInterface(0x9D58B8302D181f2f9FE72754E60f4ED435A236f3);
}
