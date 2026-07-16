// SPDX-License-Identifier: MIT
pragma solidity =0.8.10;

import "../interfaces/IERC20.sol";
import "../interfaces/IAntfarmPosition.sol";

interface IAntfarming {
    function currentRewards(uint256 positionId)
        external
        view
        returns (uint256 amount);
}

contract AntfarmGuild {
    address public immutable antfarmPositions;
    address public immutable antfarming;

    constructor(address _antfarmPositions, address _antfarming) {
        require(_antfarmPositions != address(0));
        antfarmPositions = _antfarmPositions;
        antfarming = _antfarming;
    }

    function checkHoneyPotRole(address user) public view returns (uint256) {
        IAntfarmPosition ipos = IAntfarmPosition(antfarmPositions);
        uint256[] memory positionIds = ipos.getPositionsIds(user);
        IAntfarmPosition.PositionDetails[] memory posDetails = ipos
            .getPositionsDetails(positionIds);

        uint256 cumulatedAtf;
        for (uint256 i = 0; i < posDetails.length; i++) {
            cumulatedAtf +=
                posDetails[i].cumulatedDividend +
                posDetails[i].dividend;
        }

        uint256[] memory farmingPositionIds = ipos.getPositionsIds(antfarming);
        IAntfarmPosition.PositionDetails[] memory farmingPosDetails = ipos
            .getPositionsDetails(farmingPositionIds);

        for (uint256 i = 0; i < farmingPosDetails.length; i++) {
            if (
                farmingPosDetails[i].delegate == user &&
                farmingPosDetails[i].owner == antfarming
            ) {
                cumulatedAtf +=
                    farmingPosDetails[i].cumulatedDividend +
                    farmingPosDetails[i].dividend;
            }
        }

        return cumulatedAtf;
    }

    function checkAntfarmingRole(address user) public view returns (uint256) {
        IAntfarmPosition ipos = IAntfarmPosition(antfarmPositions);
        uint256[] memory farmingPositionIds = ipos.getPositionsIds(antfarming);
        IAntfarmPosition.PositionDetails[] memory farmingPosDetails = ipos
            .getPositionsDetails(farmingPositionIds);

        uint256 userHasFarming;
        for (uint256 i = 0; i < farmingPosDetails.length; i++) {
            if (
                farmingPosDetails[i].delegate == user &&
                farmingPosDetails[i].owner == antfarming
            ) {
                userHasFarming += 1;
            }
        }

        return userHasFarming;
    }
}
