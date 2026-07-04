// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";

import { Constants } from "../Constants.sol";
import { IPolVault } from "./interfaces/IPolVault.sol";
import { IHarvestModule } from "./interfaces/IHarvestModule.sol";

abstract contract HarvestModule is IHarvestModule {
    IERC20 public constant lbgt = IERC20(Constants.LBGT);
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;

    IPolVault public immutable polVault;
    IRewardVault public immutable rewardVault;

    modifier onlyPolVault() {
        if (msg.sender != address(polVault)) {
            revert NotPolVault();
        }
        _;
    }

    modifier onlyAdmin() {
        if (!polVault.hasRole(ROLE_ADMIN, msg.sender)) {
            revert NotAuthorized();
        }
        _;
    }

    constructor(address _polVault) {
        require(_polVault != address(0), ZeroAddress());
        polVault = IPolVault(_polVault);
        rewardVault = polVault.rewardVault();
    }

    function harvestCallback(uint256 amount) external virtual onlyPolVault { }

    function _lbgtBalance() internal view returns (uint256) {
        return lbgt.balanceOf(address(this));
    }
}
