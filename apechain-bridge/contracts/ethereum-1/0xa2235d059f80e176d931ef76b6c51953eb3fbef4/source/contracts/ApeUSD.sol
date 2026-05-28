// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {OftERC4626} from "./OftERC4626.sol";

contract ApeUSD is OftERC4626 {
    constructor(address _lzEndpoint, address _delegate, uint32 _collateralEid)
        OftERC4626("Ape USD", "ApeUSD", _lzEndpoint, _delegate, _collateralEid, 1e18)
    {}
}
