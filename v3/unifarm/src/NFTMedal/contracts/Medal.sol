// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2 ;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Authorizable is Ownable {

    mapping(address => bool) public authorized;
    address[] public adminList;

    event AddAuthorized(address indexed _address);
    event RemoveAuthorized(address indexed _address, uint index);

    modifier onlyAuthorized() {
        require(authorized[msg.sender] || owner() == msg.sender,"Authorizable: caller is not the SuperAdmin or Admin");
        _;
    }

    function addAuthorized(address _toAdd) onlyOwner external {
        require(_toAdd != address(0),"Authorizable: _toAdd isn't vaild address");
        authorized[_toAdd] = true;
        adminList.push(_toAdd);
        emit AddAuthorized(_toAdd);
    }

    function removeAuthorized(address _toRemove,uint _index) onlyOwner external {
        require(_toRemove != address(0),"Authorizable: _toRemove isn't vaild address");
        require(adminList[_index] == _toRemove,"Authorizable: _index isn't valid index");
        authorized[_toRemove] = false;
        delete adminList[_index];
        emit RemoveAuthorized(_toRemove,_index);
    }

    function getAdminList() public view returns(address[] memory ){
        return adminList;
    }

}

contract NFTMedal is Authorizable, ERC1155 {
    
    using Strings for uint256;
    using SafeMath for uint256;

    // 1 = Green medal
    // 2 = Sliver Medal
    // 3 = Gold Medal
    // 4 = VIP Medal
    // 5 = Legendary Medal
    
    uint public totalMedals;
    uint public maxLegendaryMedalSupply = 10000;

    string public baseURI;

    // Contract name
    string public name;
    // Contract symbol
    string public symbol;
    
    mapping (uint256 => uint256) public _tokenSupply;

    event ChangeMedalTypes(uint _totalMedalType);
    
    modifier validTokenId(uint256 _id){
        require(_id > 0 && _id <= totalMedals,"NFTMedal: not a valid medal id ");
        _;
    }
    
    constructor(string memory _baseURI) ERC1155(_baseURI) {
        name = "4PlayMedal";
        symbol = "4PLM";
        _setURI(_baseURI);
        totalMedals = 5;
    }

    function changeMedalTypes(uint _totalMedalType) external onlyOwner(){
        require(_totalMedalType != totalMedals,"NFTMedal: _totalMedalType must be different");
        totalMedals = _totalMedalType;
        emit ChangeMedalTypes(_totalMedalType);
    }
    
    function _setURI(string memory _newuri) internal override {
        baseURI = _newuri;
    }
    
    function uri(uint256 _tokenId) public view override returns (string memory) {
        require(_exists(_tokenId), "NFTMedal: URI query for nonexistent token");
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, _tokenId.toString(),".json")) : "";
    }

    function dropMedal(address[] memory _addresses,uint256[] memory  _quantities,uint256 _id) external {
        require(_addresses.length == _quantities.length,"NFTMedal: both array are not equal");
        for (uint256 i = 0; i < _addresses.length; i++) {
           mint(_addresses[i],_id,_quantities[i]); 
        }
    }

    function mint(address _to,uint256 _id,uint256 _quantity) public onlyAuthorized() validTokenId(_id) {
        require(_to != address(0),"NFTMedal: enter valid address");
        require(_quantity >0,"NFTMedal: quantity must be greater than zero");
        if(_id == 5){
            require(_tokenSupply[_id].add(_quantity) <= maxLegendaryMedalSupply,"NFTMedal: exceed from maxLegendaryMedalSupply");
        }
        _mint(_to, _id, _quantity,"");
        _tokenSupply[_id] = _tokenSupply[_id].add(_quantity);
    }

    function batchMint(address _to,uint256[] memory _ids,uint256[] memory _quantities) external onlyAuthorized() {
        require(_to != address(0),"NFTMedal: enter valid address");
        for (uint256 i = 0; i < _ids.length; i++) {
            uint256 _id = _ids[i];
            require(_id <= totalMedals && _id > 0,"NFTMedal: not a valid medal Id");
            uint256 quantity = _quantities[i];
            if(_id == 5){
                require(_tokenSupply[_id].add(quantity) <= maxLegendaryMedalSupply,"NFTMedal: exceed from maxLegendaryMedalSupply");
            }
            require(quantity >0,"NFTMedal: quantity must be greater than zero");
            _tokenSupply[_id] = _tokenSupply[_id].add(quantity);
        }
        _mintBatch(_to, _ids, _quantities,"");
    }
    
    function burn(address _account,uint256 _id,uint256 _amount) external validTokenId(_id) {
        require(msg.sender == _account || isApprovedForAll(_account,msg.sender),"NFTMedal: caller is not owner nor approved");
        require(_amount >0,"NFTMedal: _amount must be greater than zero");
        require(_tokenSupply[_id] >= _amount,"not a valid amount");
        _tokenSupply[_id] = _tokenSupply[_id].sub(_amount);
        _burn(_account,_id,_amount);
    }

    function batchBurn(address _account,uint256[] memory _ids,uint256[] memory _quantities) external {
        require(msg.sender == _account || isApprovedForAll(_account,msg.sender),"NFTMedal: caller is not owner nor approved");
        for (uint256 i = 0; i < _ids.length; i++) {
            uint256 _id = _ids[i];
            require(_id <= totalMedals && _id > 0,"NFTMedal: not a valid Id");
            uint256 quantity = _quantities[i];
            require(quantity >0,"NFTMedal: quantity must be greater than zero");
            require(_tokenSupply[_id] >= quantity,"NFTMedal: not a valid amount");
            _tokenSupply[_id] = _tokenSupply[_id].sub(quantity);
        }
        _burnBatch(_account,_ids,_quantities);
    }
    
    function _exists(uint256 _id) internal view returns (bool) {
        return _tokenSupply[_id] != 0;
    }
    
}
