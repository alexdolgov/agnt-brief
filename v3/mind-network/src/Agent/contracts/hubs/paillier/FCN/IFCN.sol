// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../../common/IGeneralError.sol";
import {IFCNServiceSpecs} from "./IFCNServiceSpecs.sol";

interface IFCN is IGeneralError, IFCNServiceSpecs {
    event Setup(address gateway, uint256 quorumX10000, bytes32 csUrlPrefix);
    event Submission(uint256 requestId, address submitter, bool consensus);
    event TaskResultSubmitted(uint256 requestId, address submitter, bytes32 result);
}
