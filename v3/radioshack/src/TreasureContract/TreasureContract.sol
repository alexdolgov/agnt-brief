// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IERC1155 {
    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes calldata data) external;
    function balanceOf(address account, uint256 id) external view returns (uint256);
    function isApprovedForAll(address account, address operator) external view returns (bool);
}

contract TreasureContract {
    
    address public owner;
    address public nftContract;
    address public signatureSigner;
    address public treasureAdmin;
    
    mapping(uint256 => bool) public claimed;
    
    event Claim(address indexed user, uint256 indexed tokenId);
    
    constructor(address _nftContract, address _treasureAdmin) {
        owner = msg.sender;
        nftContract = _nftContract;
        treasureAdmin = _treasureAdmin;
        signatureSigner = msg.sender;
    }
    
    function setSignatureSigner(address _signer) external {
        require(msg.sender == owner, "Only owner");
        signatureSigner = _signer;
    }
    
    function claimReward(
        uint256 tokenId,
        uint256 lat,
        uint256 lng,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        require(!claimed[tokenId], "Already claimed");
        
        uint256 balance = IERC1155(nftContract).balanceOf(treasureAdmin, tokenId);
        require(balance > 0, "No NFT");
        
        bool approved = IERC1155(nftContract).isApprovedForAll(treasureAdmin, address(this));
        require(approved, "Not approved");
        
        bytes32 messageHash = keccak256(abi.encodePacked(tokenId, lat, lng));
        bytes32 ethSignedMessageHash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", messageHash)
        );
        
        address signer = ecrecover(ethSignedMessageHash, v, r, s);
        require(signer == signatureSigner, "Bad signature");
        
        claimed[tokenId] = true;
        
        IERC1155(nftContract).safeTransferFrom(treasureAdmin, msg.sender, tokenId, 1, "");
        
        emit Claim(msg.sender, tokenId);
    }
}