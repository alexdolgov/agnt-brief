// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract NFTRewardClaimer is AccessControl, ReentrancyGuard {
    error UserNotEligible(address user);
    error AlreadyClaimed(address user, uint256 id);
    error LengthMismatch();
    error UserAlreadyEligible(address user);

    event NftFunded(address token, uint256 tokenId);
    event NftClaimed(address user, address token, uint256 tokenId);

    struct UserReward {
        IERC721 nft;
        uint256 id;
        bool claimed;
    }

    mapping(address user => UserReward rewardDetail) public rewardDetails;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setEligibleUser(address user, IERC721 token, uint256 id) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (rewardDetails[user].nft != IERC721(address(0))) {
            revert UserAlreadyEligible(user);
        }
        rewardDetails[user] = UserReward(token, id, false);
    }

    function setEligibleUsersBatch(address[] calldata users, IERC721[] calldata tokens, uint256[] calldata ids)
        public
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (users.length != tokens.length || users.length != ids.length) {
            revert LengthMismatch();
        }

        for (uint256 i = 0; i < users.length; i++) {
            if (rewardDetails[users[i]].nft != IERC721(address(0))) {
                revert UserAlreadyEligible(users[i]);
            }
            rewardDetails[users[i]] = UserReward(tokens[i], ids[i], false);
        }
    }

    function fundNFTBatch(IERC721 token, uint256[] calldata tokenIds)
        public
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            token.safeTransferFrom(msg.sender, address(this), tokenIds[i]);
            emit NftFunded(address(token), tokenIds[i]);
        }
    }

    function claim() public nonReentrant {
        UserReward storage rewardDetail = rewardDetails[msg.sender];
        if (rewardDetail.nft == IERC721(address(0))) {
            revert UserNotEligible(msg.sender);
        }
        if (rewardDetail.id == 0) {
            revert UserNotEligible(msg.sender);
        }

        if (rewardDetail.claimed) {
            revert AlreadyClaimed(msg.sender, rewardDetail.id);
        }
        rewardDetail.nft.safeTransferFrom(address(this), msg.sender, rewardDetail.id);
        rewardDetail.claimed = true;
        emit NftClaimed(msg.sender, address(rewardDetail.nft), rewardDetail.id);
    }

    function recoverNFT(IERC721 token, uint256 tokenId) public onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeTransferFrom(address(this), msg.sender, tokenId);
    }

    function getUserData(address user) public view returns (IERC721, uint256, bool) {
        UserReward storage rewardDetail = rewardDetails[user];
        return (rewardDetail.nft, rewardDetail.id, rewardDetail.claimed);
    }
}
