// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";

contract PrivateStorage is AccessControlEnumerable {
    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

    event Write(bytes user, string value);

    mapping(bytes => string) private values;

    constructor(address admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(SETTER_ROLE, admin);
    }

    function read(bytes memory user) external view returns (string memory) {
        return values[user];
    }

    function write(
        bytes memory user,
        string memory value
    ) external onlyRole(SETTER_ROLE) {
        values[user] = value;
        emit Write(user, value);
    }
}
