// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;
import {PendleGeneralInfo} from "../strategies/ezEth/PendleGeneralEzEth.sol";


interface IPendleGeneral {
    function mainInfo() external view returns(PendleGeneralInfo memory);
}
