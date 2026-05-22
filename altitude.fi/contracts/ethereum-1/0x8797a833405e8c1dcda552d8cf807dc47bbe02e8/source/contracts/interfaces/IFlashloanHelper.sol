// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "../libraries/Structs.sol";

interface IFlashloanHelper {
    function flashLoan(FlashLoanStruct.Info calldata info) external;
}
