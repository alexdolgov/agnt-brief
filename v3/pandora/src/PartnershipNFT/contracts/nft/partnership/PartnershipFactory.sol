// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import  "./PartnershipNFT.sol";

contract PartnershipFactory {
    function createNFT(string memory _URI, bool _hasWhiteList, address _owner, string memory _name, string memory _symbol) external returns(address){
        PartnershipNFT _nft = new PartnershipNFT(_URI, _hasWhiteList, _owner, _name, _symbol);
        return address(_nft);
    }
}