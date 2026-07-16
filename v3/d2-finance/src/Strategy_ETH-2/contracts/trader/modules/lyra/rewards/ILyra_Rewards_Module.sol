// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title   DSquared Lyra Rewards Module Interface
 * @notice  Allows claiming rewards from Lyra MultiDistributor
 * @author  HessianX
 * @custom:developer    BowTiedPickle
 * @custom:developer    BowTiedOriole
 */
interface ILyra_Rewards_Module {
    struct SwapInput {
        address[] path;
        uint256 minOut;
    }

    function lyra_claimRewards(uint256[] memory _claimList) external;

    function lyra_claimAndDump(uint256[] memory _claimList, SwapInput[] memory _inputs) external;

    function lyra_dump(SwapInput[] memory _inputs) external;
}
