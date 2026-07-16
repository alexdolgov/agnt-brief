// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PikaStakingDelegation {

    address public pikaStaking;
    address public owner;
    uint256 public delegateLockPeriod;
    mapping(address => address) public delegators;
    mapping(address => uint256) public delegateTimestamp;

    constructor(address _pikaStaking) public {
        owner = msg.sender;
        pikaStaking = _pikaStaking;
    }

    event DelegateSet(address delegator, address delegate, uint256 timestamp);
    event DelegateLockPeriodSet(uint256 delegateLockPeriod);
    event PikaStakingSet(address pikaStaking);
    event OwnerSet(address owner);


    /// @dev Delegate the staking balance to _delegate address, 
    /// so that trading fee discount and trading rewards will go to _delegate address instead of the staking address.
    /// The new delegation can only occur after the delegateLockPeriod has elapsed from the time of the last delegation.
    function setDelegate(address _delegate) external {
        uint256 timeDiff = block.timestamp - delegateTimestamp[msg.sender];
        require(timeDiff > delegateLockPeriod, "!period");
        delegators[_delegate] = msg.sender;
        delegateTimestamp[msg.sender] = block.timestamp;
        emit DelegateSet(msg.sender, _delegate, block.timestamp);
    }

    function setDelegateLockPeriod(uint256 _delegateLockPeriod) external onlyOwner {
        delegateLockPeriod = _delegateLockPeriod;
        emit DelegateLockPeriodSet(_delegateLockPeriod);
    }

    function setPikaStaking(address _pikaStaking) external onlyOwner {
        pikaStaking = _pikaStaking;
        emit PikaStakingSet(_pikaStaking);
    }

    function setOwner(address _owner) external onlyOwner {
        owner = _owner;
        emit OwnerSet(_owner);
    }

    /// @dev Get staking balance for the addresses.
    function getBalances(address[] memory _addresses) external view returns(uint256[] memory) {
        uint256 length = _addresses.length;
        uint256[] memory balances = new uint256[](length); 
        for (uint256 i = 0; i < length; i++) {
            address userAddress = _addresses[i];
            uint256 balance = IPikaStaking(pikaStaking).balanceOf(userAddress);
            balances[i] = balance;
        }
        return balances;
    }

    /// @dev Get staking balance for the delegates of the addresses. If the address is not a delegate address, get the staking balance for the address.
    function getBalancesWithDelegates(address[] memory _addresses) external view returns(uint256[] memory) {
        uint256 length = _addresses.length;
        uint256[] memory balances = new uint256[](length); 
        for (uint256 i = 0; i < length; i++) {
            address userAddress = delegators[_addresses[i]] == address(0) ? _addresses[i] : delegators[_addresses[i]];
            uint256 balance = IPikaStaking(pikaStaking).balanceOf(userAddress);
            balances[i] = balance;
        }
        return balances;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "!owner");
        _;
    }

}


interface IPikaStaking {
    function balanceOf(address user) external view returns(uint256);
}