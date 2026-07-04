pragma solidity ^0.8.0;

interface IPartnership {
    function createNFT(string memory _URI, bool _hasWhiteList, address _owner, string memory _name, string memory _symbol) external returns(address);
}
