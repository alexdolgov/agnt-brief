// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { wstETHOFTUpgradeable } from "../wstETHOFTUpgradeable.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTUpgradeableMock is wstETHOFTUpgradeable {
    constructor(address _lzEndpoint) wstETHOFTUpgradeable(_lzEndpoint) {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }

    function debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) public virtual whenResumed returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        return _debit(_from, _amountLD, _minAmountLD, _dstEid);
    }
}
