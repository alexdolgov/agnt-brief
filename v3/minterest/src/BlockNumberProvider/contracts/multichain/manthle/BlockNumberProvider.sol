// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "./libraries/L1BlockProviderOriginal.sol";
import "./interfaces/iBVM_L1BlockNumber.sol";

contract BlockNumberProvider is iBVM_L1BlockNumber {
    function getL1BlockNumber() external view virtual returns (uint256) {
        return iBVM_L1BlockNumber(L1BlockProviderOriginal.iBVM_L1BlockNumber).getL1BlockNumber();
    }
}
