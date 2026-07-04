// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { IAccessControl } from "@openzeppelin-contracts-5.1.0/access/IAccessControl.sol";
import { IERC4626 } from "@openzeppelin-contracts-5.1.0/interfaces/IERC4626.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";

import { IBeraPawForge } from "../../core/interfaces/IBeraPawForge.sol";

interface IBeraPawRewardsReserve {
    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* EVENTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event RewardVaultSet(address indexed newRewardVault);
    event Harvested(uint256 lbgtAmount);
    event Recovered(address indexed tokenAddress, address indexed to, uint256 tokenAmount);
    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ERRORS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error ZeroAddress();
    error InvalidInput();

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* VIEWS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function lbgt() external view returns (IERC20);
    function berapawForge() external view returns (IBeraPawForge);
    function rewardVault() external view returns (IRewardVault);
    function rewardVaultEarned() external view returns (uint256);
    function rewardVaultLbgtEarned() external view returns (uint256);
    function bribeBack() external view returns (uint16);
    function bribeManager() external view returns (address);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/



    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function harvest() external returns (uint256);
}
