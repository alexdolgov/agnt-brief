// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract PartnershipNFT is ERC721Burnable, Pausable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;

    struct Status {
        uint128 supply;
        uint128 currentMinted;
        string name;
    }

    struct Attribute {
        uint256 tier;
    }
    // nft
    uint256 public totalSupply;
    address public nftStaking;
    string baseURI;

    // custom
    uint public totalTier;
    mapping(address => bool) public minted;

    mapping(uint => Attribute) public attributes;
    mapping(uint => Status) public tierStatus;
    mapping(uint => EnumerableSet.AddressSet) whiteList;
    mapping(uint => EnumerableSet.UintSet) tierIds;
    mapping(address => uint) public userTier;

    bool public hasWhiteList;
    address public owner;
    uint public maxSupply;
    uint public startTime;
    uint public endTime;
    bool isSetting;
    //modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "PartnershipNFT: not owner");
        _;
    }

    //event
    event PartnershipNFTCreated(address indexed receiver,uint256 indexed id, uint256 tier);
    event Setting(uint[] tiers, uint128[] supply, string[] names, uint start, uint end);
    event AddWhiteList(uint tier, address[] users);
    event UpdateTier(uint tiers, uint128 supply, string names);
    event UpdateTime(uint start, uint end);
    event RemoveWhiteList(address user);


    constructor(string memory _URI, bool _hasWhiteList, address _owner, string memory _name, string memory _symbol) ERC721(_name, _symbol)
    {
        baseURI = _URI;
        hasWhiteList = _hasWhiteList;
        owner = _owner;
    }

    function _baseURI() internal view override returns(string memory) {
        return baseURI;
    }

    function mint(uint _tier) whenNotPaused external returns(uint256 _tokenId) {
        require(!minted[msg.sender], "PartnershipNFT: user has been minted");
        require(block.timestamp < endTime && block.timestamp > startTime, "PartnershipNFT: invalid time");
        uint _userTier = userTier[msg.sender];
        require(_tier >= _userTier && _tier <= totalTier, "PartnershipNFT: _tier invalid");
        if(hasWhiteList) {
            require(whiteList[_userTier].contains(msg.sender),"PartnershipNFT: user not in white list");
        }

        Status memory _status = tierStatus[_tier];
        require (_status.currentMinted < _status.supply, "PartnershipNFT: max supply of this tier") ;

        minted[msg.sender] = true;
        //supply
        totalSupply++;
        require(totalSupply <= maxSupply,"PartnershipNFT: all nft minted");

        //token id
        _tokenId = totalSupply;

        //update state
        attributes[_tokenId].tier = _tier;
        tierStatus[_tier].currentMinted++;
        tierIds[_tier].add(_tokenId);

        //mint new nft
        _mint(msg.sender, _tokenId);

        //emit event
        emit PartnershipNFTCreated(msg.sender, _tokenId, _tier);
        return _tokenId;
    }

    function setting(uint[] memory _tiers, uint128[] memory _supply, string[] memory _name, uint _startTime, uint _endTime) external onlyOwner {
        require(!isSetting,"PartnershipNFT: !setting");
        uint _length = _tiers.length;
        require( _length == _supply.length && _length == _name.length, "PartnershipNFT: invalid length");
        require(_startTime > block.timestamp && _endTime > _startTime, "PartnershipNFT: invalid time");
        for(uint i = 0; i < _length; i++) {
            Status storage _status = tierStatus[i+1];
            _status.supply = _supply[i];
            _status.name = _name[i];
            maxSupply += _supply[i];
        }
        totalTier = _length;
        startTime = _startTime;
        endTime = _endTime;
        isSetting = true;
        emit Setting(_tiers, _supply, _name, _startTime, _endTime);
    }

    function addWhiteList(uint _tier, address[] memory _users) external onlyOwner {
        require(hasWhiteList, "PartnershipNFT: no white list");
        require(_tier <= totalTier && _tier > 0, "PartnershipNFT: no tier");
        for(uint i = 0; i < _users.length; i++) {
            require(whiteList[_tier].add(_users[i]), "PartnershipNFT: user added");
            require(userTier[_users[i]] == 0,"PartnershipNFT: user added another tier");
            userTier[_users[i]] = _tier;
        }
        emit AddWhiteList(_tier,_users);
    }

    function removeWhiteList(uint _tier, address _user) external onlyOwner {
        require(hasWhiteList, "PartnershipNFT: no white list");
        require(_tier <= totalTier && _tier > 0, "PartnershipNFT: no tier");
        require(whiteList[_tier].remove(_user), "PartnershipNFT: user not in white list");
        userTier[_user] = 0;
        emit RemoveWhiteList(_user);
    }

    function updateTier(uint _tier, uint128 _supply, string memory _name) external onlyOwner {
        require(_tier <= totalTier && _tier > 0, "PartnershipNFT: no tier");
        Status storage _status = tierStatus[_tier];
        require(_supply >= _status.currentMinted, "PartnershipNFT: over flow");
        maxSupply -= _status.supply;
        maxSupply += _supply;
        _status.supply = _supply;
        _status.name = _name;
        emit UpdateTier(_tier, _supply, _name);
    }

    function updateTime(uint _start, uint _end) external onlyOwner {
        require((_start > block.timestamp || _start == startTime) && _end > _start, "PartnershipNFT: invalid time");
        startTime = _start;
        endTime = _end;
        emit UpdateTime(_start, _end);
    }

    //================= internal ================== //
    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }
    //======== Operator ========= //
    function pause() external whenNotPaused onlyOwner {
        _pause();
    }

    function unpause() external whenPaused onlyOwner {
        _unpause();
    }

    // =============== views ==============//
    function getTier(uint256 _tokenId) external view returns(uint256) {
        return attributes[_tokenId].tier;
    }

    function getNFTIdsWithTier(uint _tier, uint256 _page, uint256 _limit) external view returns(uint[] memory _result, uint _length) {
        uint _from = _page * _limit;
        _length = tierIds[_tier].length();
        uint _to = _min((_page + 1) * _limit, _length);
        _result = new uint[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = tierIds[_tier].at(_from);
            ++_from;
        }
        return (_result, _length);
    }

    function getWhiteListWithTier(uint _tier, uint256 _page, uint256 _limit) external view returns(address[] memory _result, uint _length) {
        uint _from = _page * _limit;
        _length = whiteList[_tier].length();
        uint _to = _min((_page + 1) * _limit, _length);
        _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = whiteList[_tier].at(_from);
            ++_from;
        }
        return (_result, _length);
    }
}
