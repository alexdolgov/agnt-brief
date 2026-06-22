// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;
import {PendleGeneralInfo} from "../strategies/PendleGeneral.sol";


interface IPendleGeneral {
    function mainInfo() external view returns(PendleGeneralInfo memory);
}
