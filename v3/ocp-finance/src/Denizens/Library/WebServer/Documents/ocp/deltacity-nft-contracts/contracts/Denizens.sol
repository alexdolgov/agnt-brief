// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC721/ERC721Pausable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract Denizens is ERC721Pausable, Ownable {
    using SafeMath for uint256;
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdsCounter;

    string public baseExtension = ".json";
    uint256 public maxMintAmount = 10;
    address public minter = address(0);

    constructor(string memory _baseUri) public ERC721("Denizens", "DENIZEN") {
        _setBaseURI(_baseUri);
    }

    modifier onlyMinter() {
        require(msg.sender == minter, "Not Minter");
        _;
    }

    // public
    function mintDenizen(address _to, uint256 _mintAmount) public onlyMinter {
        require(_to != address(0), "_to address cannot be dead address");
        require(_mintAmount > 0, "_mintAmount should be greater than 0");
        require(_mintAmount <= maxMintAmount, "_mintAmount exceeds max maxMintAmount!");

        for (uint256 i = 1; i <= _mintAmount; i++) {
            _safeMint(_to, _tokenIdsCounter.current());
            _tokenIdsCounter.increment();
        }
    }

    /**
     * @dev get tokenIds of _account address
     */
    function walletOfOwner(address account)
        public
        view
        returns (uint256[] memory)
    {
        uint256 ownerTokenCount = balanceOf(account);
        uint256[] memory tokenIds = new uint256[](ownerTokenCount);
        for (uint256 i; i < ownerTokenCount; i++) {
            tokenIds[i] = tokenOfOwnerByIndex(account, i);
        }
        return tokenIds;
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        string memory currentBaseURI = baseURI();

        return
            bytes(currentBaseURI).length > 0
                ? string(
                    abi.encodePacked(currentBaseURI, tokenId.toString(), baseExtension)
                )
                : "";
    }

    function currentTokenIdCounter() public view returns (uint256) {
        return _tokenIdsCounter.current();
    }


    //only owner
    function setBaseURI(string memory _newBaseURI) public onlyOwner {
        _setBaseURI(_newBaseURI);
    }

    function setBaseExtension(string memory _newBaseExtension) public onlyOwner {
        baseExtension = _newBaseExtension;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function setMinter(address _minter) public onlyOwner {
        minter = _minter;
    }

    /**
     * @dev Withdraw ethers available on contract to the _to address
     */
    function withdraw(address _to) public payable onlyOwner {
        require(payable(_to).send(address(this).balance));
    }
}