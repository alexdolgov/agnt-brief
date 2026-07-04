// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../../common/IGeneralError.sol";
import {IFheKeySet} from "../../../storage/IFheKeySet.sol";
import {IFDNServiceSpecs} from "./IFDNServiceSpecs.sol";

interface IFDN is IGeneralError, IFheKeySet, IFDNServiceSpecs {
    event Setup(address fheKeyRegistry, address gateway);
    event Submission(uint256 requestId, address submitter, bool consensus);
}
