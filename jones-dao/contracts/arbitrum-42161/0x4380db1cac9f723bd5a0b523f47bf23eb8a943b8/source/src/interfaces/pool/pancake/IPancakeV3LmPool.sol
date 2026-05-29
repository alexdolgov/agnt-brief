// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import {IMasterChefV3} from "src/interfaces/pool/pancake/IMasterChefV3.sol";

interface IPancakeV3LmPool {
    function masterChef() external view returns (IMasterChefV3);
}
