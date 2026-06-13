// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {IRewardRouterV2} from "src/interfaces/IRewardRouterV2.sol";
import {IStakedGmx} from "src/interfaces/gmx/IStakedGmx.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {
    TOKEN_GMX,
    TOKEN_sbfGMX,
    TOKEN_GLP,
    TOKEN_STAKED_GLP,
    TOKEN_STAKED_GMX,
    TOKEN_ESGMX,
    TOKEN_GMX_DAO,
    HUNDRED_PERCENT,
    SECONDS_IN_YEAR
} from "src/Constants.sol";

contract WithdrawalEscrow is Initializable {
    using SafeERC20 for IERC20;

    address public rewardRouter;
    address public vaultOwner;
    address public exitVault;

    error NotOwner();
    error NotExitVault();

    constructor() {
        _disableInitializers();
    }

    function initialize(address _gmxRewardRouter, address _vaultOwner) external initializer {
        rewardRouter = _gmxRewardRouter;
        vaultOwner = _vaultOwner;
        exitVault = msg.sender;
    }

    function acceptAccountTransfer(uint256 _ownerStakedGmx, uint256 _ownerGlp) external {
        if (msg.sender != exitVault) revert NotExitVault();
        IRewardRouterV2(rewardRouter).acceptTransfer(msg.sender);
        uint256 stakedGmxBalance = IStakedGmx(TOKEN_STAKED_GMX).depositBalances(address(this), TOKEN_GMX);
        uint256 glpBalance = IERC20(TOKEN_STAKED_GLP).balanceOf(address(this));

        if (stakedGmxBalance - _ownerStakedGmx > 0) {
            // stakedGMX that does not belong to the owner (Other users stakes).
            IRewardRouterV2(rewardRouter).unstakeGmx(stakedGmxBalance - _ownerStakedGmx); // Unstake them for transfer.
            IERC20(TOKEN_GMX).safeTransfer(msg.sender, stakedGmxBalance - _ownerStakedGmx); // Send them back to the vault.
        }

        if (glpBalance - _ownerGlp > 0) IERC20(TOKEN_STAKED_GLP).safeTransfer(msg.sender, glpBalance - _ownerGlp);
    }

    function signalTransfer(address _receiver) external {
        if (msg.sender != vaultOwner) revert NotOwner();
        IERC20(TOKEN_sbfGMX).approve(_receiver, IERC20(TOKEN_sbfGMX).balanceOf(address(this)));
        IERC20(TOKEN_GMX).approve(
            TOKEN_STAKED_GMX, IStakedGmx(TOKEN_STAKED_GMX).depositBalances(address(this), TOKEN_GMX)
        );
        IRewardRouterV2(rewardRouter).signalTransfer(_receiver);
    }
}
