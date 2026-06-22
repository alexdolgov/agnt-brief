// SPDX-License-Identifier: MIT

/**
 *  @notice This contract using for DeNEt Pass as database with hacked dapps (via domain)
 * DAO can include in this contract any moderator for include dapps to global blacklist
 */

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DappMonitor is Ownable {
    uint public constant TIME_1D = 60*60*24;

    /**
     * @notice bytes32 - dapp domain, uint - time   stamp when dapp can be displayed in user interface
     */
    mapping (bytes32 => uint) public lockTime;

    mapping (address => bool) public publicModerator;

    /**
     * @notice add moderator
     */
    function addModerator(address _newModerator) public onlyOwner {
        publicModerator[_newModerator] = true;
    }

    /**
     * @notice remove moderator
     */
    function removeModerator (address _oldModerator) public onlyOwner {
        publicModerator[_oldModerator] = false;
    }

    modifier onlyModerator(){
        require(publicModerator [msg.sender], "DM: msg .sender != moderator");
        _;
    }

    function blockFor7Days (bytes32 domain) public onlyModerator {
        lockTime [domain] = block. timestamp + TIME_1D * 7;
    }

    function blockForNDays (bytes32 domain, uint dayCount) public onlyModerator {
        lockTime[domain] = block. timestamp + TIME_1D * dayCount;
    }

    function unlockDapp (bytes32 domain) public onlyModerator {
        lockTime[domain] = 0;
    }

    function isBlocked (bytes32 domain) public view returns (bool) {
        return lockTime[domain] > block.timestamp;
    }

    function StringToDomain(string calldata _domainString) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_domainString));
    }
}