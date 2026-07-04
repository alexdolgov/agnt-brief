// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface INFCS {
    // Event emitted when a new token is minted
    event TokenMinted(
        uint256 timestamp,
        address indexed _recipient,
        uint256 indexed _tokenId,
        address[] _addressBundle
    );

    event BundleUpdate(
        uint256 timestamp,
        address indexed executor,
        uint256 indexed tokenId,
        address[] bundle
    );

    event Migration(uint256 timestamp, uint256 indexed tokenId, address indexed executor);

    enum CrossChainAction {
        MINT,
        BRIDGE,
        RECEIVE
    }

    // Receives an address array, verifies ownership of address, mints a token, stores the bundle against token ID, sends token to msg.sender
    function mintToken(
        address[] memory bundle,
        bytes[] memory signatures,
        string memory version
    ) external payable;

    // Receives a tokenId, returns corresponding address bundle
    function getBundle(uint256 tokenId) external view returns (address[] memory);

    // Receives an address, returns tokenOwned by it if any, otherwise reverts
    function getToken(address tokenOwner) external view returns (uint256);
}
