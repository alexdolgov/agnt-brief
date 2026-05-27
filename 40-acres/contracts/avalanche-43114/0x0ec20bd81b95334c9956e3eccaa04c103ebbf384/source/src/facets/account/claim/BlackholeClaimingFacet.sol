// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {ClaimingFacet} from "./ClaimingFacet.sol";
import {IRewardsDistributor} from "../../../interfaces/IRewardsDistributor.sol";

/**
 * @title BlackholeClaimingFacet
 * @dev ClaimingFacet adapted for Blackhole's dual rewards distributors.
 *      Claims rebase from both the primary and secondary rewards distributors.
 */
contract BlackholeClaimingFacet is ClaimingFacet {
    IRewardsDistributor public constant PRIMARY_REWARDS_DISTRIBUTOR = IRewardsDistributor(0x88a49cFCee0Ed5B176073DDE12186C4c922A9cD0);
    IRewardsDistributor public constant SECONDARY_REWARDS_DISTRIBUTOR = IRewardsDistributor(0x7c7BD86BaF240dB3DbCc3f7a22B35c5bAa83bA28);

    constructor(
        address portfolioFactory,
        address votingEscrow,
        address voter,
        address loanConfig,
        address swapConfig,
        address vault
    )
        ClaimingFacet(portfolioFactory, votingEscrow, voter, address(PRIMARY_REWARDS_DISTRIBUTOR), loanConfig, swapConfig, vault)
    {}

    function claimRebase(uint256 tokenId) public override {
        _claimFromDistributor(PRIMARY_REWARDS_DISTRIBUTOR, tokenId);
        _claimFromDistributor(SECONDARY_REWARDS_DISTRIBUTOR, tokenId);
        _updateLockedCollateral(tokenId);
    }

    function _claimFromDistributor(IRewardsDistributor distributor, uint256 tokenId) internal {
        uint256 claimable = distributor.claimable(tokenId);
        if (claimable > 0) {
            try distributor.claim(tokenId) {
                emit RebaseClaimed(tokenId, claimable);
            } catch {}
        }
    }
}
