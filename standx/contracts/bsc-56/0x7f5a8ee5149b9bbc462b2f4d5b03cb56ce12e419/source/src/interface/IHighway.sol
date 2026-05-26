// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "./IERC20.sol";
import {HighwayLib} from "../highway/HighwayLib.sol";

interface IHighway {
    function reqRemoteCall(
        HighwayLib.Message memory message,
        HighwayLib.MessageSignature calldata sig
    ) external;
    function ackRemoteCall(
        HighwayLib.MessageAckParams[] memory ackParams
    ) external;
}
