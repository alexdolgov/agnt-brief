// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { wstETHOFTAdapterUpgradeable } from "../wstETHOFTAdapterUpgradeable.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTAdapterUpgradeableMock is wstETHOFTAdapterUpgradeable {
    constructor(address _token, address _lzEndpoint) wstETHOFTAdapterUpgradeable(_token, _lzEndpoint) {}

    function debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) public virtual whenResumed returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        return _debit(_from, _amountLD, _minAmountLD, _dstEid);
    }
}
