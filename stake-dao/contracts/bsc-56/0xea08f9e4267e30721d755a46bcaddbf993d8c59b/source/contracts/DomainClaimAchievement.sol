// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {PancakeProfile} from "./PancakeProfile.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

/**
 * @title DomainClaimAchievement.
 * @notice It is a contract to distribute points for domain claim.
 */
contract DomainClaimAchievement is Ownable {
    PancakeProfile public immutable pancakeProfile;

    uint256 public campaignId;
    uint256 public numberPoints;
    uint256 public endTimestamp;

    address public immutable domainNftAddress;

    // Map if address has already claimed a NFT
    mapping(address => bool) public hasClaimed;

    // Map if tokenId has already claimed a NFT
    mapping(uint256 => bool) public hasUsed;

    event NewCampaignId(uint256 campaignId);
    event NewNumberPoints(uint256 numberPoints);
    event NewEndTimestamp(uint256 endTimestamp);
    event DomainPointsClaimed(address indexed to, uint256 tokenId, uint256 numberPoints);

    /**
     * @notice Constructor
     * @param _pancakeProfile: Pancake Profile
     * @param _numberPoints: number of points to give
     * @param _campaignId: campaign id
     * @param _endTimestamp: end timestamp for claiming
     * @param _domainNftAddress: domain NFT contract address
     */
    constructor(
        address _pancakeProfile,
        uint256 _numberPoints,
        uint256 _campaignId,
        uint256 _endTimestamp,
        address _domainNftAddress
    ) public {
        pancakeProfile = PancakeProfile(_pancakeProfile);
        numberPoints = _numberPoints;
        campaignId = _campaignId;
        endTimestamp = _endTimestamp;
        domainNftAddress = _domainNftAddress;
    }

    /**
     * @notice Get Cake Domain Achievement
     * @dev Users can claim these once.
     * @param _name the NFT's name
     */
    function claimDomainPoints(string memory _name) external {
        require(canClaim(msg.sender, _name), "Claim: Cannot claim");

        uint256 tokenId = _getTokenIdFromName(_name);

        hasClaimed[msg.sender] = true;
        hasUsed[tokenId] = true;

        pancakeProfile.increaseUserPoints(msg.sender, numberPoints, campaignId);

        emit DomainPointsClaimed(msg.sender, tokenId, numberPoints);
    }

    /**
     * @notice Change campaignId
     * @dev Only callable by owner.
     * @param _campaignId: campaign id
     */
    function changeCampaignId(uint256 _campaignId) external onlyOwner {
        campaignId = _campaignId;

        emit NewCampaignId(_campaignId);
    }

    /**
     * @notice Change numberPoints
     * @dev Only callable by owner.
     * @param _numberPoints: number of points
     */
    function changeNumberPoints(uint256 _numberPoints) external onlyOwner {
        numberPoints = _numberPoints;

        emit NewNumberPoints(_numberPoints);
    }

    /**
     * @notice Change end timestamp for distribution
     * @dev Only callable by owner.
     * @param _endTimestamp: end timestamp for claiming
     */
    function changeEndTimestamp(uint256 _endTimestamp) external onlyOwner {
        endTimestamp = _endTimestamp;

        emit NewEndTimestamp(_endTimestamp);
    }

    /**
     * @notice Checks the claim status by user
     * @dev Only callable by owner.
     * @param _user: user address
     */
    function canClaim(address _user, string memory _name) public view returns (bool) {
        if (!pancakeProfile.getUserStatus(_user)) {
            return false;
        }

        uint256 tokenId = _getTokenIdFromName(_name);

        return IERC721(domainNftAddress).ownerOf(tokenId) == _user &&
            (!hasClaimed[_user]) &&
            (!hasUsed[tokenId]) &&
            (block.timestamp < endTimestamp);
    }

    /**
     * @notice Return the token id that will be used
     * @param _name: nft domain name
     */
    function claimingTokenId(string memory _name) public view returns (uint256 tokenId) {
        tokenId = _getTokenIdFromName(_name);
    }

    /**
     * @notice Return the token id that will be used
     * @param _name: nft domain name
     */
    function _getTokenIdFromName(string memory _name) internal view returns (uint256 tokenId) {
        tokenId = uint256(keccak256(bytes(_name)));
    }
}
