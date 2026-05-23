// SPDX-License-Identifier: MIT
pragma solidity =0.8.28;

import './interfaces/ITierStakingTokenUriBuilder.sol';
import '@openzeppelin/contracts/utils/Base64.sol';
import '@openzeppelin/contracts/utils/Strings.sol';

/**
 * @title TierStakingTokenUriBuilder
 * @notice Generates on-chain Base64-encoded JSON metadata for Tier-based
 *         staking receipt NFTs and returns collection-level metadata (ERC-7572).
 */
contract TierStakingTokenUriBuilder is ITierStakingTokenUriBuilder {
    /** @notice Reference to the Tier-based staking contract.**/
    ITierStaking public immutable nftTierStaking;

    /** @notice Base-64–encoded ERC-7572 collection-level metadata JSON.**/
    string public erc7572Data;

    /**
     * @param nftTierStaking_  Deployed `ITierStaking` contract.
     * @param erc7572Data_     Pre-encoded Base-64 JSON for collection metadata.
     */
    constructor(address nftTierStaking_, string memory erc7572Data_) {
        nftTierStaking = ITierStaking(nftTierStaking_);
        erc7572Data = erc7572Data_;
    }

    /**
     * @inheritdoc ITierStakingTokenUriBuilder
     */
    function buildERC7572() external view override returns (string memory) {
        return erc7572Data;
    }

    /**
     * @inheritdoc ITierStakingTokenUriBuilder
     */
    function build(
        uint256 tokenId_,
        address /**tokenOwner_**/,
        ITierStaking.NftData memory nftData_
    ) external view override returns (string memory) {
        (, , string memory imageUrl, string memory description) = nftTierStaking.tiers(nftData_.tier);
        return
            string.concat(
                'data:application/json;base64,',
                Base64.encode(
                    bytes(
                        string.concat(
                            '{"name":"Mansory Staking Receipt #',
                            Strings.toString(tokenId_),
                            '","image":"',
                            imageUrl,
                            '","description":"',
                            description,
                            '","external_link":"https://mansorytoken.io"}'
                        )
                    )
                )
            );
    }
}
