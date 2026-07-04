// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IAccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/IAccessControlEnumerable.sol";

/**
 * @notice Central role registry for the Harmonix ecosystem.
 * @dev Extends IAccessControlEnumerable — consumers call hasRole(role, account)
 *       to verify permissions instead of maintaining their own role storage.
 */
interface IAccessManager is IAccessControlEnumerable {}
