// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {OperableStorage} from "../libraries/OperableStorage.sol";

abstract contract OperableUpgradeable is UUPSUpgradeable, OwnableUpgradeable {
    using OperableStorage for OperableStorage.Storage;

    error Unauthorized();

    constructor() {
        _disableInitializers();
    }

    modifier onlyUserOrOperator(address _user) {
        OperableStorage.Storage storage $ = OperableStorage.getStorage();

        if (_user != msg.sender && !($.isSystemOperator[msg.sender] || $.isAllowedOperator[_user][msg.sender])) {
            revert Unauthorized();
        }
        _;
    }

    function __Operable_init(address[] calldata _systemOperators) internal onlyInitializing {
        OperableStorage.Storage storage $ = OperableStorage.getStorage();

        for (uint256 i; i < _systemOperators.length; i++) {
            $.enableSystemOperator(_systemOperators[i], true);
        }
    }

    function enableSystemOperator(address _operator, bool _enable) external onlyOwner {
        OperableStorage.getStorage().enableSystemOperator(_operator, _enable);
    }

    function allowOperator(address _operator, bool _allow) external {
        OperableStorage.getStorage().allowOperator(msg.sender, _operator, _allow);
    }
}
