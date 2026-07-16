// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * PBLC Treasure Contract - Modified for Multiple Claims
 * 
 * Allows unlimited claims of the same NFT type
 * Each claim still requires valid signature from admin
 * Players can collect multiple NFTs of same type from different locations
 */

contract PBLCTreasureMultiClaim {
    
    address public owner;
    address public signer;      // Address that signs claim requests
    address public nftContract; // Rarible or any ERC721/ERC1155 contract
    
    // Events
    event RewardClaimed(
        address indexed player,
        uint256 indexed tokenId,
        uint256 lat,
        uint256 lng,
        uint256 timestamp
    );
    
    event SignerUpdated(address newSigner);
    event NFTContractUpdated(address newNFTContract);
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    
    constructor(address _signer, address _nftContract) {
        owner = msg.sender;
        signer = _signer;
        nftContract = _nftContract;
    }
    
    /**
     * @notice Claim an NFT reward
     * @param tokenId The NFT token ID to claim
     * @param lat Latitude multiplied by 1e6 (for precision)
     * @param lng Longitude multiplied by 1e6 (for precision)
     * @param v Signature v value
     * @param r Signature r value
     * @param s Signature s value
     */
    function claimReward(
        uint256 tokenId,
        uint256 lat,
        uint256 lng,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        // Verify signature
        bytes32 messageHash = keccak256(abi.encodePacked(tokenId, lat, lng));
        bytes32 ethSignedMessageHash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", messageHash)
        );
        
        address recoveredSigner = ecrecover(ethSignedMessageHash, v, r, s);
        require(recoveredSigner == signer, "Invalid signature");
        
        // Transfer NFT from admin to player
        // Works with ERC721 and ERC1155
        (bool success, ) = nftContract.call(
            abi.encodeWithSelector(
                bytes4(keccak256("safeTransferFrom(address,address,uint256)")),
                owner,
                msg.sender,
                tokenId
            )
        );
        
        if (!success) {
            // Try ERC1155 transfer
            (success, ) = nftContract.call(
                abi.encodeWithSelector(
                    bytes4(keccak256("safeTransferFrom(address,address,uint256,uint256,bytes)")),
                    owner,
                    msg.sender,
                    tokenId,
                    1,
                    ""
                )
            );
        }
        
        require(success, "NFT transfer failed");
        
        emit RewardClaimed(msg.sender, tokenId, lat, lng, block.timestamp);
    }
    
    /**
     * @notice Update the signer address
     */
    function setSigner(address _signer) external onlyOwner {
        signer = _signer;
        emit SignerUpdated(_signer);
    }
    
    /**
     * @notice Update the NFT contract address
     */
    function setNFTContract(address _nftContract) external onlyOwner {
        nftContract = _nftContract;
        emit NFTContractUpdated(_nftContract);
    }
    
    /**
     * @notice Check if admin has approved this contract to spend NFTs
     */
    function checkApproval(uint256 tokenId) external view returns (bool) {
        (bool success, bytes memory result) = nftContract.staticcall(
            abi.encodeWithSelector(
                bytes4(keccak256("getApproved(uint256)")),
                tokenId
            )
        );
        
        if (success && result.length >= 32) {
            address approved = abi.decode(result, (address));
            return approved == address(this);
        }
        
        // Try ERC1155 isApprovedForAll
        (success, result) = nftContract.staticcall(
            abi.encodeWithSelector(
                bytes4(keccak256("isApprovedForAll(address,address)")),
                owner,
                address(this)
            )
        );
        
        if (success && result.length >= 32) {
            return abi.decode(result, (bool));
        }
        
        return false;
    }
    
    /**
     * @notice Allow owner to withdraw any ETH accidentally sent
     */
    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
    
    // Allow contract to receive ETH
    receive() external payable {}
}