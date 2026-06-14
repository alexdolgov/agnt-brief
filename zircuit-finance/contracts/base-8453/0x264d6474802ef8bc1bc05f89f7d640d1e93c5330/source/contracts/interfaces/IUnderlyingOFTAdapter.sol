// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { UnderlyingOFTAdapterParams } from "../common/Types.sol";

interface IUnderlyingOFTAdapter {
    function initialize(UnderlyingOFTAdapterParams calldata _params) external;
}
