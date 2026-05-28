// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { IERC20AaveLM } from "src/interfaces/external/aave/IERC20AaveLM.sol";
import { IERC4626StataToken } from "src/interfaces/external/aave/IERC4626StataToken.sol";

interface IStataTokenV2 is IERC4626, IERC4626StataToken, IERC20AaveLM {
    /**
     * @notice Checks if the passed actor is permissioned emergency admin.
     * @param actor The reward to claim
     * @return bool signaling if actor can pause the vault.
     */
    function canPause(
        address actor
    ) external view returns (bool);

    /**
     * @notice Pauses/unpauses all system's operations
     * @param paused boolean determining if the token should be paused or unpaused
     */
    function setPaused(
        bool paused
    ) external;
}
