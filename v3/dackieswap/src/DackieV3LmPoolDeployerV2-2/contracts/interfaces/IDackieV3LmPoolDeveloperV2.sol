// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IDackieV3LmPoolDeveloperV2 {
    function parameters() external view returns (address pool, address masterChef, address firstLMPool, address secondLMPool);
}