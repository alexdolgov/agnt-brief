// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IUserInfo {
    struct UserProfilePack {
        address userAddress;
        uint256 userId;
        uint256 numberPoints;
        address nftAddress;
        uint256 tokenId;
        bool isActive;
    }

    struct UserCreditPack {
        uint256 userCredit;
    }
}
