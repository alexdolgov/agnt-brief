// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IOrbiterNFT is IERC721 {
    event NewNFTMinted(string ipfsHash);
    event NFTLockedForStaking(uint256 indexed tokenId);
    event NFTUnlockedForStaking(uint256 indexed tokenId);

    function pause() external;

    function unpause() external;

    function setCost(uint256 _newCost) external;

    function setMaxMintAmount(uint256 _newmaxMintAmount) external;

    function setNewTokenAddress(address _tokenAddress) external;

    function withdraw() external;

    function withdrawCoin(address _coin) external;

    function setNewSignerOperator(address _operatorAddress) external;

    function setNewStakingContractAddress(address _operatorAddress) external;

    function getStakingContractAddress() external view returns (address);

    function mintNftForAddress(
        address _user,
        string[] memory ipfsHashes
    ) external;

    function lockNftForStaking(uint256 tokenId) external;

    function unlockNftForStaking(uint256 tokenId) external;

    function checkIsNftLockedForStaking(
        uint256 tokenId
    ) external view returns (bool);

    function safeMint(
        bytes memory signature,
        string[] memory ipfsHashes
    ) external;
}
