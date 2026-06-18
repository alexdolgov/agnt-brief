// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";

interface IPAccessManagerCore {
    event AllowedRoleSet(address indexed target, bytes4 indexed selector, bytes32 indexed role);

    function setAllowedRole(address target, bytes4 selector, bytes32 role) external;

    function canCall(address caller, address target, bytes4 selector) external view returns (bool);

    function canDirectCallMarketHub(address caller) external view returns (bool);
}

interface IPAccessManager is IAccessControl, IPAccessManagerCore {}
