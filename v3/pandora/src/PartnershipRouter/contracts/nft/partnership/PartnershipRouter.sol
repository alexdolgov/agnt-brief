// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "../../interfaces/IPartnership.sol";

contract PartnershipRouter is Ownable{
    uint public count;
    mapping(uint => address) public nftPartner;
    address public factory;

    event NewPartnershipNFT(uint _id, address _nft);
    event ChangeFactory(address _old, address _new);

    constructor(address _factory) {
        factory = _factory;
    }

    function createPartnershipCollection(string memory _URI, bool _hasWhiteList, address _owner, string memory _name, string memory _symbol) external onlyOwner {
        count++;
        address _collection = IPartnership(factory).createNFT(_URI, _hasWhiteList, _owner, _name, _symbol);
        nftPartner[count] = _collection;
        emit NewPartnershipNFT(count, _collection);
    }

    function changeFactory(address _factory) external onlyOwner {
        require(_factory != address (0), "PartnershipRouter: !zero");
        address _old = factory;
        factory = _factory;
        emit ChangeFactory(_old, _factory);
    }

    function getAllNFT(uint256 _page, uint256 _limit) external view returns(address[] memory _result, uint _length) {
        uint _from = _page * _limit;
        _length = count;
        uint _to = _min((_page + 1) * _limit, _length);
        _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = nftPartner[i+1];
            ++_from;
        }
        return (_result, _length);
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }
}
