pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

import {DSMath} from "../../common/math.sol";
import {Basic} from "../../common/basic.sol";
import {ListInterface} from "./interface.sol";

abstract contract Helpers is DSMath, Basic {
    ListInterface internal constant listContract =
        ListInterface(0x58f4D59E4D4A97758d56487Dbbe5e083Af89cf9D);

    function checkAuthCount() internal view returns (uint256 count) {
        uint64 accountId = listContract.accountID(address(this));
        count = listContract.accountLink(accountId).count;
    }
}
