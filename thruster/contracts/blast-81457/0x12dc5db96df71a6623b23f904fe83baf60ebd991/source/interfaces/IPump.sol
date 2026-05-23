// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";

interface IPump is IERC20, IERC20Metadata, IERC20Errors {
    function setIsAllowed(address account, bool allowed) external;

    function setEnableTransfers(bool enabled) external;

    function burn(uint256 amount) external;
}