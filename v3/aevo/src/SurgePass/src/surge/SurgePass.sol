// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.13;

import "./ERC721.sol";
import "../libraries/RescueFundsLib.sol";
import "openzeppelin-contracts/contracts/access/Ownable2Step.sol";

contract SurgePass is ERC721, Ownable2Step {
    uint256 public totalSupply;
    address public easter;
    string public baseURI;

    error InvalidMinter();
    error TokenDoesNotExist();

    event BaseURIUpdated(string baseURI);
    event EasterUpdated(address easter);

    constructor(address owner_) ERC721("SurgePass", "PASS") Ownable2Step() {
        _transferOwnership(owner_);
        baseURI = "https://surge-nfts.s3.amazonaws.com/surge-pass-metadata.json";
    }

    modifier onlyVerified() {
        if (msg.sender != owner() && msg.sender != easter)
            revert InvalidMinter();
        _;
    }

    function safeMint(address to) external onlyVerified {
        _safeMint(to, totalSupply++);
    }

    function safeMintBatch(address[] calldata to) external onlyVerified {
        for (uint256 index = 0; index < to.length; index++) {
            _safeMint(to[index], totalSupply++);
        }
    }

    function tokenURI(
        uint256 tokenId
    ) external view override returns (string memory) {
        if (_ownerOf[tokenId] == address(0)) {
            revert TokenDoesNotExist();
        }

        return baseURI;
    }

    function updateBaseURI(string memory baseURI_) external onlyOwner {
        baseURI = baseURI_;
        emit BaseURIUpdated(baseURI_);
    }

    function updateEaster(address easter_) external onlyOwner {
        easter = easter_;
        emit EasterUpdated(easter_);
    }

    function rescueFunds(
        address token_,
        address userAddress_,
        uint256 amount_
    ) external onlyOwner {
        RescueFundsLib.rescueFunds(token_, userAddress_, amount_);
    }
}
