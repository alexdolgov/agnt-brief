// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/draft-ERC721Votes.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IOrbiterNFT.sol";
import "./utils/SignatureResolver.sol";

contract OrbiterNFT is
    IOrbiterNFT,
    SignatureResolver,
    ERC721URIStorage,
    Pausable,
    Ownable,
    ERC721Burnable,
    ERC721Votes
{
    using Counters for Counters.Counter;

    uint256 public cost;
    uint256 public maxSupply;
    address public tokenAddress;
    Counters.Counter private _tokenIdCounter;
    address private signOperator;
    mapping(string => bool) public usedIpfsHashes;
    mapping(uint256 => bool) public _stakedNft;
    address _stakingContractAddress;

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _cost,
        address _tokenAddress
    ) ERC721(_name, _symbol) EIP712(_name, "1") {
        cost = _cost;
        tokenAddress = _tokenAddress;
        signOperator = 0xa4a6fB8b7bD84844DbA00b1C7f243340F083bB4E;
        maxSupply = 10000;
        _tokenIdCounter.increment();
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setCost(uint256 _newCost) external onlyOwner {
        cost = _newCost;
    }

    function setMaxMintAmount(uint256 _newmaxMintAmount) external onlyOwner {
        require(
            _newmaxMintAmount >= _tokenIdCounter.current(),
            "Current amount >"
        );
        maxSupply = _newmaxMintAmount;
    }

    function setNewTokenAddress(address _tokenAddress) external onlyOwner {
        tokenAddress = _tokenAddress;
    }

    function withdraw() external onlyOwner {
        (bool success, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");
        require(success, "Error");
    }

    function withdrawCoin(address _coin) external onlyOwner {
        uint256 amount = IERC20(_coin).balanceOf(address(this));
        IERC20(_coin).transfer(msg.sender, amount);
    }

    function setNewSignerOperator(address _operatorAddress) external onlyOwner {
        signOperator = _operatorAddress;
    }

    function setNewStakingContractAddress(address _address) external onlyOwner {
        _stakingContractAddress = _address;
    }

    function getStakingContractAddress() external view returns (address) {
        return _stakingContractAddress;
    }

    function mintNftForAddress(
        address _user,
        string[] memory ipfsHashes
    ) external onlyOwner {
        require(
            _tokenIdCounter.current() + ipfsHashes.length <= maxSupply + 1,
            "supply reached"
        );
        _mint(_user, ipfsHashes);
    }

    function lockNftForStaking(uint256 tokenId) external {
        onlyUnstaked(tokenId);
        require(_stakingContractAddress == msg.sender, "Only st contract");
        _stakedNft[tokenId] = true;
        emit NFTLockedForStaking(tokenId);
    }

    function unlockNftForStaking(uint256 tokenId) external {
        require(_stakingContractAddress == msg.sender, "Only st contract");
        delete _stakedNft[tokenId];
        emit NFTUnlockedForStaking(tokenId);
    }

    function checkIsNftLockedForStaking(
        uint256 tokenId
    ) external view returns (bool) {
        return _stakedNft[tokenId];
    }

    function safeMint(
        bytes memory signature,
        string[] memory ipfsHashes
    ) external whenNotPaused {
        require(
            IERC20(tokenAddress).balanceOf(msg.sender) >=
                cost * ipfsHashes.length,
            "Balance <"
        );
        require(
            IERC20(tokenAddress).allowance(msg.sender, address(this)) >=
                cost * ipfsHashes.length,
            "Allowance <"
        );
        require(
            _checkSignOperator(signature, ipfsHashes, signOperator),
            "Swap not verified"
        );
        require(
            _tokenIdCounter.current() + ipfsHashes.length <= maxSupply + 1,
            "Maximum supply reached"
        );
        require(
            IERC20(tokenAddress).transferFrom(
                msg.sender,
                address(this),
                cost * ipfsHashes.length
            ),
            "Transfer failed"
        );
        _mint(msg.sender, ipfsHashes);
    }

    function _mint(address _user, string[] memory ipfsHashes) internal {
        for (uint256 i = 0; i < ipfsHashes.length; i++) {
            require(usedIpfsHashes[ipfsHashes[i]] == false, "ipfs hash used");

            uint256 tokenId = _tokenIdCounter.current();
            _tokenIdCounter.increment();

            _safeMint(_user, tokenId);
            _setTokenURI(tokenId, ipfsHashes[i]);
            usedIpfsHashes[ipfsHashes[i]] = true;
            emit NewNFTMinted(ipfsHashes[i]);
        }
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override(ERC721, ERC721Votes) {
        super._afterTokenTransfer(from, to, tokenId, batchSize);
    }

    function _burn(
        uint256 tokenId
    ) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override(ERC721, IERC721) {
        onlyUnstaked(tokenId);
        super.transferFrom(from, to, tokenId);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override(ERC721, IERC721) {
        onlyUnstaked(tokenId);
        super.safeTransferFrom(from, to, tokenId);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) public virtual override(ERC721, IERC721) {
        onlyUnstaked(tokenId);
        super.safeTransferFrom(from, to, tokenId, data);
    }

    function onlyUnstaked(uint256 tokenId) internal view {
        require(!_stakedNft[tokenId], "NFT staked");
    }
}
