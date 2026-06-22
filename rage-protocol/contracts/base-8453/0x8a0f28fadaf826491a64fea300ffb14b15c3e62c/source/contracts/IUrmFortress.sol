// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {UrmStructs} from "./UrmStructs.sol";

interface IUrmFortress {
    function withdrawToken(address tokenAdr) external;
    function addTower(address towerAddr, uint8 slot) external;
    function removeTower(address towerAddr) external;
    function setConfigs(UrmStructs.FortressConfig calldata newConfig) external;
    function setTowersConfigs(UrmStructs.FortressTowerConfig[9] calldata configs) external;
    function setFortressFinal() external;
    function lockNft() external;
    function pegDefense(uint256 defenseSize) external;
    function payFortress(uint256 urmAmount) external;
    function getState() external view returns (UrmStructs.FortressState memory);
    function towersOverview() external view returns (UrmStructs.FortressTower[9] memory);
    function overview() external view returns (UrmStructs.FortressOverview memory);
    function pegDefenseOverview(uint256 defenseSize) external view returns (UrmStructs.FortressPegDefenseOverview memory);
}
