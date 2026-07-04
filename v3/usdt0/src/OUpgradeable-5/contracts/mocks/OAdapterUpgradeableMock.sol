// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { OAdapterUpgradeable } from "../OAdapterUpgradeable.sol";

// @dev WARNING: This is for testing purposes only
contract OAdapterUpgradeableMock is OAdapterUpgradeable {
    constructor(address _token, address _lzEndpoint) OAdapterUpgradeable(_token, _lzEndpoint) {}
}
