pragma solidity ^0.8.20;

import {LibRegistryStorage} from "src/router/modules/libraries/LibRegistryStorage.sol";
import {AccessManagedUpgradeable} from "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {IRegistryManager} from "src/router/modules/interfaces/IRegistryManager.sol";

contract RegistryManagerModule is AccessManagedUpgradeable, IRegistryManager {
    function setRegistry(address _registry) public restricted {
        if (_registry == address(0)) {
            revert EmptyAddress();
        }
        LibRegistryStorage.setRegistry(_registry);
    }

    function getRegistry() external view returns (address) {
        return LibRegistryStorage.getRegistry();
    }
}
