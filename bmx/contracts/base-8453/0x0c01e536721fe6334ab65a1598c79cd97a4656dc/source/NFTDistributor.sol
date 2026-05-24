// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts@4.9.2/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";
import "@openzeppelin/contracts@4.9.2/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts@4.9.2/utils/structs/EnumerableSet.sol";

/// @title Miggles Claiming Contract
/// @dev Manages distribution of Miggles NFTs to whitelisted addresses and collection of leftovers by the owner
/// @author https://x.com/0xdaedboi
contract NFTDistributor is Ownable, ReentrancyGuard, IERC721Receiver {
    using EnumerableSet for EnumerableSet.AddressSet;

    IERC721 public constant nftContract = IERC721(0x71cfBEbb61a42d2E5ccFf0831663Cd58d2E442d9); // Miggles
    EnumerableSet.AddressSet private whitelistedAddresses;
    mapping(address => bool) public hasClaimed;
    uint256[] public availableTokens;

    /// @notice Event emitted when an NFT is claimed
    event Claimed(address indexed claimant, uint256 tokenId);

    /// @notice Event emitted when leftovers are collected
    event LeftoverCollected(address indexed collector, uint256 tokenId);

    /// @notice Event emitted when the whitelist is updated
    event WhitelistUpdated(address indexed account, bool isAdded);

    /// @notice Event emitted when the list of available tokens is updated
    event TokensUpdated(uint256 tokenId, bool isAdded);

    /// @notice Sets the whitelist of addresses that can claim NFTs
    /// @param _addresses Array of addresses to be added or removed
    /// @param _add True to add addresses, false to remove
    /// @dev Only callable by the owner
    function setWhitelist(address[] calldata _addresses, bool _add) external onlyOwner {
        for (uint256 i = 0; i < _addresses.length; i++) {
            if (_add) {
                whitelistedAddresses.add(_addresses[i]);
            } else {
                whitelistedAddresses.remove(_addresses[i]);
            }
            emit WhitelistUpdated(_addresses[i], _add);
        }
    }

    /// @notice Sets the list of available token IDs for claiming
    /// @param _tokenIds Array of token IDs to be added or removed
    /// @param _add True to add token IDs, false to remove
    /// @dev Only callable by the owner
    function setAvailableTokens(uint256[] calldata _tokenIds, bool _add) external onlyOwner {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            require(_tokenIds[i] != 0, "Token ID 0 is invalid");
            if (_add) {
                availableTokens.push(_tokenIds[i]);
            } else {
                // Assuming _tokenIds only contains valid, existing IDs to be removed
                for (uint256 j = 0; j < availableTokens.length; j++) {
                    if (availableTokens[j] == _tokenIds[i]) {
                        availableTokens[j] = availableTokens[availableTokens.length - 1];
                        availableTokens.pop();
                        break;
                    }
                }
            }
            emit TokensUpdated(_tokenIds[i], _add);
        }
    }

    /// @notice Resets the `availableTokens` array, initializing it with a new set of token IDs.
    /// @dev This function clears the existing `availableTokens` array and reinitializes it with new values.
    /// @param _newTokenIds An array of token IDs to reinitialize the `availableTokens` array. If the array is empty, `availableTokens` will be cleared and left empty.
    /// @dev Only callable by the owner of the contract.
    function resetAvailableTokens(uint256[] calldata _newTokenIds) external onlyOwner {
        // Clear the existing array
        delete availableTokens;

        // Reinitialize with new token IDs
        for (uint256 i = 0; i < _newTokenIds.length; i++) {
            require(_newTokenIds[i] != 0, "Token ID 0 is invalid");
            availableTokens.push(_newTokenIds[i]);
        }
    }

    /// @notice Allows a whitelisted address to claim an NFT
    /// @dev Ensures that the caller is whitelisted and has not already claimed
    function claim() external nonReentrant {
        require(!hasClaimed[msg.sender], "Address has already claimed");
        require(whitelistedAddresses.contains(msg.sender), "Not whitelisted");

        uint256 remainingTokens = availableTokens.length;
        require(remainingTokens > 0, "No more NFTs to claim");

        uint256 randomIndex = _getRandomNumber(remainingTokens);
        uint256 tokenId = availableTokens[randomIndex];

        availableTokens[randomIndex] = availableTokens[remainingTokens - 1];
        availableTokens.pop();
        hasClaimed[msg.sender] = true;

        nftContract.safeTransferFrom(address(this), msg.sender, tokenId);

        emit Claimed(msg.sender, tokenId);
    }

    /// @notice Allows the owner to collect any leftover NFTs in batches
    /// @param _batchSize Number of NFTs to collect per transaction
    /// @dev Only callable by the owner
    function collectLeftover(uint256 _batchSize) external onlyOwner nonReentrant {
        uint256 remainingTokens = availableTokens.length;
        uint256 count = _batchSize > remainingTokens ? remainingTokens : _batchSize;
        for (uint256 i = 0; i < count; i++) {
            uint256 tokenId = availableTokens[i];
            nftContract.safeTransferFrom(address(this), owner(), tokenId);
            emit LeftoverCollected(owner(), tokenId);
        }
        availableTokens = new uint256[](remainingTokens - count);
    }

    /// @notice Generates a pseudo-random number based on block variables
    /// @param _upper Upper bound for random number generation
    /// @return randomIndex Pseudo-random number
    /// @dev This method of randomness is known to be vulnerable to manipulation, but I believe this suffices for BaseCamp
    function _getRandomNumber(uint256 _upper) private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % _upper;
    }

    /**
     * @dev Handles the receipt of an NFT
     * @param operator The address which called `safeTransferFrom` function
     * @param from The address which previously owned the token
     * @param tokenId The NFT identifier which is being transferred
     * @param data Additional data with no specified format
     * @return bytes4(bytes4(keccak256("onERC721Received(address,address,uint256,bytes)")))
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    )
        external
        override
        returns (bytes4)
    {
        // Custom logic to handle the receipt of an NFT, if necessary
        return this.onERC721Received.selector;
    }
}