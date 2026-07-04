// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IString} from "./IString.sol";
import {IGeneralError} from "../common/IGeneralError.sol";

contract StringStorage is IGeneralError, IString, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "StringStorage";

    mapping(bytes32 key => string) public strings;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function addString(string calldata newString) external returns (bytes32 id) {
        id = keccak256(bytes(newString));
        if (bytes(strings[id]).length == 0) {
            strings[id] = newString;
        }
    }

    function getUrls(URL[] calldata urls) external view returns (string[] memory result) {
        result = new string[](urls.length);
        for (uint256 i; i < urls.length; i++) {
            result[i] = string.concat(strings[urls[i].baseUrl], urls[i].path);
        }
    }
}
