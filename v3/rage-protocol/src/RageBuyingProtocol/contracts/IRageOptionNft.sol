// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";

interface IRageOptionNft {
    // ERC721 Events
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    
    // RageOptionNft Events
    event BaseUriUpdated(string newBaseURI);
    event OptionMinted(address indexed recipient, uint256 indexed tokenId);
    
    // ERC721 Functions
    function balanceOf(address owner) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
    function transferFrom(address from, address to, uint256 tokenId) external;
    function approve(address to, uint256 tokenId) external;
    function setApprovalForAll(address operator, bool approved) external;
    function getApproved(uint256 tokenId) external view returns (address);
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    
    // ERC721 Metadata
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function tokenURI(uint256 tokenId) external view returns (string memory);
    
    // RageOptionNft Functions
    function exists(uint256 tokenId) external view returns (bool);
    function totalSupply() external view returns (uint256);
    function getRageChaosEngine() external view returns (address);
    function getRageBuyingProtocol() external view returns (address);
    function isAutomator(address account) external view returns (bool);
    function isRageBuyingProtocol(address account) external view returns (bool);
    function contractURI() external view returns (string memory);
    function getState() external view returns (RageStructs.RonState memory);
    function getOption(uint256 tokenId) external view returns (RageStructs.Option memory);
    function getAllForOwner(address owner, uint256 status) external view returns (RageStructs.Option[] memory);
    function getAllOptions(uint256 offset, uint256 limit) external view returns (RageStructs.Option[] memory);
    function getOptionsOverview(uint32 twap, uint256 refundTime) external view returns (RageStructs.OptionsOverview memory);
    function getAllClaims(uint256 offset, uint256 limit) external view returns (RageStructs.Claim[] memory);
    function getClaimsOverview() external view returns (RageStructs.ClaimsOverview memory);
    
    // State-changing functions
    function setBaseURI(string memory newBaseURI) external;
    function mint(address recipient, uint256 tokenId) external;
    
    // ERC165
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}