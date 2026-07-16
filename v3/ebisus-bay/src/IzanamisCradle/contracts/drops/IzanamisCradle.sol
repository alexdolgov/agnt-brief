// SPDX-License-Identifier: MIT
pragma solidity =0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/common/ERC2981.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import '../RandomlyAssigned.sol';
import '../interfaces/IERC20Burnable.sol';

abstract contract Presale {
    mapping(address => uint256) public purchases;
}

contract IzanamisCradle is 
    Pausable,
    ERC721Enumerable,
    Ownable,
    RandomlyAssigned,
    ERC2981{
    
    using Strings for uint256;

    string public baseURI;
    bool public revealed = false;

    uint public presaleCost;
    uint public mitamaCost;
    uint public publicCost;

    IERC20Burnable public fortune;
    IERC20 public mitma;
    Presale public presale;

    uint public presaleTime;
    uint presaleDuration = 1 hours;
    mapping(address => uint) minted;
    uint maxMint = 10;

    struct Infos {
        uint256 regularCost;
        uint256 memberCost;
        uint256 whitelistCost;
        uint256 maxSupply;
        uint256 totalSupply;
        uint256 maxMintPerAddress;
        uint256 maxMintPerTx;
    }

    constructor(IERC20Burnable _fortune, IERC20 _mitma, Presale _presale)ERC721("Izanami's Cradle", "IZANAMI")RandomlyAssigned(2500,0){
        fortune = _fortune;
        mitma = _mitma;
        presale = _presale;
        _setDefaultRoyalty(0xB5d4f12b5E7d8Ce43FECe177a6C75dF14994FBe6, 500);
        _pause();
    }

    ///Owner functions
    function setCosts(uint _presaleCost, uint _mitamaCost, uint _publicCost) external onlyOwner {
        presaleCost = _presaleCost;
        mitamaCost = _mitamaCost;
        publicCost = _publicCost;
    }

    function setBaseURI(string memory _newBaseURI) public onlyOwner {
        baseURI = _newBaseURI;
    }

    function pause() public onlyOwner{
        _pause();
    }

    function unpause() public onlyOwner{
        _unpause();
    }

    function setPresaleTime(uint _presaleTime) external onlyOwner {
        presaleTime = _presaleTime;
        _unpause();
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) public onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function reveal() external onlyOwner {
        revealed = true;
    }

    ///Public functions
    function mintWithToken(uint256 _mintAmount) external whenNotPaused {
        uint mintable = canMint(_msgSender());
        require(mintable >= _mintAmount, "Izanami's Cradle: Mint amount exceeds max mintable");
        uint cost = mintCost(_msgSender());
        uint total = cost * _mintAmount;
        fortune.burnFrom(_msgSender(), total);
        minted[_msgSender()] += _mintAmount;
        for(uint i = 0; i < _mintAmount; i++){
            _mintRandomId(_msgSender());
        }
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function burn(uint256 tokenId) public {
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721Burnable: caller is not owner nor approved");
        _burn(tokenId);
    }

    function tokenURI(uint _tokenId) public view virtual override returns (string memory) {
      require(_exists(_tokenId),"ERC721Metadata: URI query for nonexistent token");
      if(revealed == false){
        return baseURI;
      }
      string memory _tokenURI = string(abi.encodePacked(baseURI, "/", Strings.toString(_tokenId),".json"));
      return _tokenURI;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721Enumerable, ERC2981) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function canMint(address _address) public view virtual returns(uint256){
        if(!saleStarted()){
            return 0;
        }
        if(isPresaleTime() && presale.purchases(_address) == 0){
            return 0;
        }
        else if(isMitamaTime() && mitma.balanceOf(_address) == 0){
            return 0;
        }
        uint leftToMint = availableTokenCount();
        uint maxPerAddressRemaining = maxMint - minted[_address];
        uint maxMintAmount = leftToMint < maxPerAddressRemaining ? leftToMint : maxPerAddressRemaining;
        return maxMintAmount;
    }

    function mintCost(address _address) public view returns(uint256){
        require(saleStarted(), "Sale hasn't started");
        if(isPresaleTime()){
            return presaleCost;
        }
        if(isMitamaTime()){
            return mitamaCost;
        }
        else {
            return publicCost;
        }
    }

    function getInfo() public view returns (Infos memory) {
        Infos memory allInfos;
        allInfos.regularCost = publicCost;
        allInfos.memberCost = mitamaCost;
        allInfos.whitelistCost = presaleCost;
        allInfos.maxSupply = maxAvailableSupply();
        allInfos.totalSupply = totalSupply();
        allInfos.maxMintPerTx = maxMint;
        allInfos.maxMintPerAddress = maxMint;

        return allInfos;
    }

    function saleStarted() public view returns(bool){
        return block.timestamp >= presaleTime;
    }

    function isPresaleTime() public view returns(bool){
        return block.timestamp >= presaleTime && block.timestamp < presaleTime + presaleDuration;
    }

    function isMitamaTime() public view returns(bool){
        return block.timestamp >= presaleTime + presaleDuration && block.timestamp < presaleTime + presaleDuration*2;
    }

    function isPublicTime() public view returns(bool){
        return block.timestamp >= presaleTime + presaleDuration*2;
    }

    //Internal functions
    function _mintRandomId(address to) internal returns (uint id) {
		id = nextToken();
		require(id > 0 && id <= maxAvailableSupply(), "Mint not possible");
		_safeMint(to, id);
	}    

}