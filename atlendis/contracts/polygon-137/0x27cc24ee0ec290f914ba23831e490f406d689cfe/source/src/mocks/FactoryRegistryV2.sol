// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol';
import '../FactoryRegistry.sol';

contract FactoryRegistryV2 is FactoryRegistry {
    function upgradeVersion() external onlyOwner {
        version++;
    }
}
