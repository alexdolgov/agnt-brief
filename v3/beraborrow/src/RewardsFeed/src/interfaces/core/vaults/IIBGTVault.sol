// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IInfraredCollateralVault} from "./IInfraredCollateralVault.sol";
import {IInfraredVault} from "../../utils/integrations/IInfraredVault.sol";

interface IIBGTVault is IInfraredCollateralVault {
    struct IBGTVaultStorage {
        address keeper;
    }

    function initialize(IInfraredCollateralVault.InfraredInitParams calldata baseParams /*, InitParams calldata ibgtParams */) external;
    function setInfraredVault(address _infraredVault) external;
    function upgradeToAndCall(address newImplementation, bytes calldata data) external;
    function setKeeper(address _keeper) external;
    function previewHarvestRewards() external view returns (address[] memory tokens, uint[] memory amounts);
}