// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
import { IBeraPawForge } from "src/core/interfaces/IBeraPawForge.sol";
import { Constants } from "src/Constants.sol";
import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

contract LbgtHelper {

    IBeraPawForge public constant beraPawForge = IBeraPawForge(payable(Constants.BERAPAW_FORGE));

    constructor() {}

    function previewLbgtMint(
        address account,
        address rewardVault
    ) external view returns (uint256) {
        uint256 earned = IRewardVault(rewardVault).earned(account);
        (, uint256 bribeBack) = IBeraPawForge(Constants.BERAPAW_FORGE).bribeBack(address(rewardVault));
        if (bribeBack > 0) {
            earned -= Math.mulDiv(earned, bribeBack, 1e18);
        }
        return earned;
    }
}