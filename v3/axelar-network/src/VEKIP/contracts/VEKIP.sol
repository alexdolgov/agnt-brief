// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./interface/IKIPStakingSimple.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract VEKIP is UUPSUpgradeable, OwnableUpgradeable {

    // string public name     = "veKIP";
    // string public symbol   = "veKIP";
    
    // uint8  public decimals = 18;

    event  Transfer(address indexed src, address indexed dst, uint _value); 

    address public _staking;

    error ZeroAddress();
    error ZeroValue();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function name() public pure returns (string memory) {
        return "veKIP";
    }

    function symbol() public pure returns (string memory) {
        return "veKIP";
    }

    function decimals() public pure returns (uint8) {
		return 18;
	}

    function initialize(address owner) external initializer {
        require(_msgSender() == 0xa4d35e5aA6ADCB04CDD84C40f9E1F2a9b5C6d5A7, "Not authorized");
        __UUPSUpgradeable_init();
        __Ownable_init(owner);
    }

    function setStakingAddress(address staking) external onlyOwner {
        _staking = staking;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyOwner {}

    function transferFromStaking(address _from, address _to, uint256 _value) external {
        if (_staking == msg.sender)
        {
            emit Transfer(_from, _to, _value);
        }
    }

    function transfer(address _to, uint256 _value) external pure returns (bool success) {
        if (_to == address(0)) revert ZeroAddress();
        if (_value == 0) revert ZeroValue();
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) external pure returns (bool) {
        if (_from == address(0)) revert ZeroAddress();
        if (_to == address(0)) revert ZeroAddress();
        if (_value == 0) revert ZeroValue();
        return true;
    }

    function balanceOf(address _owner) external view returns (uint256 balance) {
        return IKIPStakingSimple(_staking).calculateCredit(_owner);
    }

    function approve(address _spender, uint256 _value) external pure returns (bool) {
        if (_spender == address(0)) revert ZeroAddress();
        if (_value == 0) revert ZeroValue();
        return true;
    }

    function allowance(address _owner, address _spender) public pure returns (uint256) {
        if (_owner == address(0)) revert ZeroAddress();
        if (_spender == address(0)) revert ZeroAddress();
        return 0;
    }

    function totalSupply() public view returns (uint) {
        return IKIPStakingSimple(_staking).totalCredit();
    }
}