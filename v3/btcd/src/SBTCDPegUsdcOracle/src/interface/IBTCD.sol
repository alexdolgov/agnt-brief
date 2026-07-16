// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface IBTCDStakingView is IERC4626 {
    function cooldownDuration() external view returns (uint24);
}
