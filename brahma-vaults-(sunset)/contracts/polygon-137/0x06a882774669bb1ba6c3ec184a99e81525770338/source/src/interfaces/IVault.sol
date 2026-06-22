/// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {ERC20} from "solmate/tokens/ERC20.sol";

interface IVault {
    function keeper() external view returns (address);

    function governance() external view returns (address);

    function isEmergencyMode() external view;
}
