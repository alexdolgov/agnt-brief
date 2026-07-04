pragma solidity 0.8.4;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract SHIELDPointSystem is OwnableUpgradeable {
    
    mapping(address => bool) public whitelistedAddress;
    mapping(address => uint) public userInfo;

     function initialize() external initializer {
        __Ownable_init_unchained();
    }    

    modifier onlyWhitelistedAddress() {
        require(whitelistedAddress[msg.sender], "Only whitelisted address");
        _;
    }

    function addWhitelistedAddress(address _add) onlyOwner external {
        whitelistedAddress[_add] = true;
    }

    function removeWhitelistedAddress(address _add) onlyOwner external {
        whitelistedAddress[_add] = false;
    }

    function allocatePoint(address _user, uint _point) onlyWhitelistedAddress external {
        userInfo[_user] += _point;
    }

    function deAllocatePoint(address _user, uint _point) onlyWhitelistedAddress external {
        userInfo[_user] -= _point;
    }

    uint256[45] private __gap;
}