// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

import '@openzeppelin/contracts/token/ERC721/ERC721Pausable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract BakeryAnniversary is ERC721Pausable, Ownable {
    uint256 public nextTokenId = 1;
    event Burn(address indexed sender, uint256 tokenId);

    constructor() ERC721('BakeryAnniversary', 'BakeryAnniversary') {}

    function mint(address to, string memory _tokenURI) public onlyOwner returns (uint256 tokenId) {
        tokenId = nextTokenId;
        _mint(to, tokenId);
        nextTokenId++;
        if (bytes(_tokenURI).length > 0) {
            _setTokenURI(tokenId, _tokenURI);
        }
    }

    function mint(
        address _receiver,
        string memory _tokenURI,
        uint256 _size
    ) external onlyOwner returns (uint256[] memory tokenIds) {
        require(_size != 0, 'size must be granter than zero');
        tokenIds = new uint256[](_size);
        for (uint256 i = 0; i < _size; ++i) {
            tokenIds[i] = mint(_receiver, _tokenURI);
        }
    }

    function mint(address[] memory _receivers, string[] memory _tokenURIs)
        external
        onlyOwner
        returns (uint256[] memory tokenIds)
    {
        require(_receivers.length == _tokenURIs.length, 'length error');
        tokenIds = new uint256[](_receivers.length);
        for (uint256 i = 0; i < _receivers.length; ++i) {
            tokenIds[i] = mint(_receivers[i], _tokenURIs[i]);
        }
    }

    function burn(uint256 tokenId) external {
        require(_isApprovedOrOwner(_msgSender(), tokenId), 'caller is not owner nor approved');
        _burn(tokenId);
        emit Burn(_msgSender(), tokenId);
    }

    function setBaseURI(string memory baseURI) external onlyOwner {
        _setBaseURI(baseURI);
    }

    function setTokenURI(uint256 tokenId, string memory tokenURI) external onlyOwner {
        _setTokenURI(tokenId, tokenURI);
    }

    function setTokenURI(uint256[] memory _tokenIds, string[] memory _tokenURIs) external onlyOwner {
        require(_tokenIds.length == _tokenURIs.length, 'length error');
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            _setTokenURI(_tokenIds[i], _tokenURIs[i]);
        }
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }
}
