pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

import "./interfaces/IDogsToken.sol";
import "./interfaces/IStakeManager.sol";

contract DogsNftManager is Ownable, ERC721, ERC721Enumerable {
    using SafeERC20 for IERC20;
    using Strings for uint256;
    mapping(address => bool) public allowedAddress;
    mapping(uint256 => uint256) public nftHoldingBalance;
    mapping(uint256 => uint256) public nftPotentialBalance;
    mapping(uint256 => uint256) public nftLastTime;
    string public baseURI;
    string public baseExtension = ".json";
    address public dogsToken = 0x198271b868daE875bFea6e6E4045cDdA5d6B9829;
    IDogsToken public DogsToken = IDogsToken(dogsToken);
    uint256 currentTokenID = 0;
    uint256 limitTime = 300;
    modifier onlyAllowedAddress() {
        require(allowedAddress[msg.sender], "allowed only");
        _;
    }

    constructor() ERC721("testnft", "TEST") {}

    function mintForWithdrawnStake(
        address _to,
        uint256 _amount,
        address _from
    ) external onlyAllowedAddress returns (uint256) {
        uint256 tokenID = currentTokenID;
        DogsToken.transferFrom(_from, address(this), _amount);
        _safeMint(_to, tokenID);
        nftHoldingBalance[tokenID] = _amount;
        nftPotentialBalance[tokenID] = _amount;
        currentTokenID += 1;
        return tokenID;
    }

    function useNFTbalance(
        uint256 _tokenID,
        uint256 _amount,
        address _to
    ) external onlyAllowedAddress {
        require(
            _amount <= nftHoldingBalance[_tokenID],
            "not enough tokens inside nft"
        );
        require(ownerOf(_tokenID) == msg.sender, "caller doesnt own nft");
        nftHoldingBalance[_tokenID] -= _amount;
        DogsToken.transfer(_to, _amount);
        nftLastTime[_tokenID] = block.timestamp;
    }

    function utilizeNFTbalance(
        uint256 _tokenID,
        uint256 _amount
    ) external onlyAllowedAddress {
        require(
            nftPotentialBalance[_tokenID] >= _amount &&
                (nftPotentialBalance[_tokenID] - _amount) >=
                nftHoldingBalance[_tokenID],
            "attempt to over utilize"
        );
        require(ownerOf(_tokenID) == msg.sender, "caller doesnt own nft");
        nftPotentialBalance[_tokenID] -= _amount;
        nftLastTime[_tokenID] = block.timestamp;
    }

    function returnNFTbalance(
        uint256 _tokenID,
        uint256 _amount,
        address _from
    ) external onlyAllowedAddress {
        require(
            (nftHoldingBalance[_tokenID] + _amount) <=
                nftPotentialBalance[_tokenID],
            "attempt to over deposit"
        );
        nftHoldingBalance[_tokenID] += _amount;
        DogsToken.transferFrom(_from, address(this), _amount);
        nftLastTime[_tokenID] = block.timestamp;
    }

    function returnNFTbalancePublic(
        uint256 _tokenID,
        uint256 _amount
    ) external {
        require(
            (nftHoldingBalance[_tokenID] + _amount) <=
                nftPotentialBalance[_tokenID],
            "attempt to over deposit"
        );
        require(
            ownerOf(_tokenID) == msg.sender,
            "you must own the nft you want to fill"
        );
        nftHoldingBalance[_tokenID] += _amount;
        DogsToken.transferFrom(msg.sender, address(this), _amount);
        nftLastTime[_tokenID] = block.timestamp;
    }

    function setAllowedAddress(address _address, bool _state) public onlyOwner {
        allowedAddress[_address] = _state;
    }

    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override {
        require(
            (block.timestamp - nftLastTime[tokenId]) >= limitTime ||
                allowedAddress[from] ||
                allowedAddress[to],
            "transfer cooldown"
        );
        super._transfer(from, to, tokenId);
    }

    function setCooldown(uint256 _cooldown) external onlyOwner {
        limitTime = _cooldown;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function tokenURI(
        uint256 tokenId
    ) public view virtual override returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory currentBaseURI = _baseURI();
        return
            bytes(currentBaseURI).length > 0
                ? string(
                    abi.encodePacked(
                        currentBaseURI,
                        tokenId.toString(),
                        baseExtension
                    )
                )
                : "";
    }

    function setBaseURI(string memory _newBaseURI) public onlyOwner {
        baseURI = _newBaseURI;
    }

    function setBaseExtension(
        string memory _newBaseExtension
    ) public onlyOwner {
        baseExtension = _newBaseExtension;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }
}
