//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ClubTiers} from "../ClubTiers.sol";

interface IClubMemberNFTV3 {
    function mint(address account) external returns (uint256);
    function mint(address account, bytes32[] memory proof) external returns (uint256);
    function mint(address recipient, uint256 base, ClubTiers.Tier tier, bool active) external returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function remove(address account) external;
    function totalSupply() external view returns (uint256);
    function updateTimestamp(uint256 tokenId) external view returns (uint256);
    function nftCreditStatus(uint256 tokenId) external view returns (uint256, bool, uint256, ClubTiers.Tier, uint8);
    function setNftCreditStatus(
        address account,
        uint baseTrust,
        bool active,
        ClubTiers.Tier tier,
        uint8 invites
    ) external;
    function setBadDebt(address account, uint256 badDebt) external;
    function setBaseTrust(uint256 tokenId, uint256 baseTrust) external;
    function setTier(uint256 tokenId, ClubTiers.Tier tier) external;
    function setActive(uint256 tokenId, bool active) external;
    function addInvite(uint256 tokenId, uint8 count) external;
    function decInvite(uint256 tokenId, uint8 count) external;
    function useInviteCount(address account) external returns (bool);
    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256);
}
