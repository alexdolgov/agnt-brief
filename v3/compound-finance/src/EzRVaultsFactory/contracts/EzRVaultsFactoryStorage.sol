// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "./EigenLayer/interfaces/IStrategyManager.sol";
import "./EzRVault/IEzRVault.sol";
import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";

abstract contract EzRVaultsFactoryStorageV1 {
    IBeacon beacon;

    mapping(bytes32 => IEzRVault) public vaults;
}
