// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IInfraredCollateralVault} from "./IInfraredCollateralVault.sol";

interface IKodiakIslandVault is IInfraredCollateralVault {
    function initialize(IInfraredCollateralVault.InfraredInitParams calldata baseParams) external;
}