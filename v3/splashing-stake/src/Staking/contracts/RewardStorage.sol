// SPDX-License-Identifier: BUSL-1.1
// Commercial use prohibited until 2028-12-31, then MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract RewardStorage is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    address public staking;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner, address _staking) public initializer {
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
        staking = _staking;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function getFreeBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawFreeBalance() public returns (uint256) {
        require(msg.sender == staking, "Sender must be Staking contract");
        uint256 balance = address(this).balance;
        (bool success, ) = payable(staking).call{value: balance}("");
        return success ? balance : 0;
    }

    function transferOwnership(address newOwner) public override onlyOwner {
        require(newOwner != address(0), "Invalid owner");
        _transferOwnership(newOwner);
    }

    // receive sei
    receive() external payable {}
}
