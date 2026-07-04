// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IGeneralError} from "../common/IGeneralError.sol";
import {IFheKeyRegistry} from "./IFheKeyRegistry.sol";

contract FheKeyRegistry is IFheKeyRegistry, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "FheKeyRegistry";

    mapping(bytes32 key => FheKeySet) public fheKeySets;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function addFheKeySet(FheKeySet memory newKeySet) external returns (bytes32 keyId) {
        newKeySet.issuer = _msgSender();
        keyId = keccak256(abi.encode(newKeySet));
        if (fheKeySets[keyId].issuer == address(0)) {
            fheKeySets[keyId] = newKeySet;
            emit FheKeySetAdded(keyId);
        }
    }
}
