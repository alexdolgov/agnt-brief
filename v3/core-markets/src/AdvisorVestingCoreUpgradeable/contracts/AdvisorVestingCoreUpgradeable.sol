// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract AdvisorVestingCoreUpgradeable is ReentrancyGuardUpgradeable, OwnableUpgradeable {

    using SafeERC20 for IERC20;

    uint constant public PRECISION = 100000;

    bool public seeded;
    
    IERC20 public core;

    mapping(address => uint) public claimableAmount;
    mapping(address => uint) public claimedAmount;
    mapping(address => uint) public startVesting;
    mapping(address => uint) public vestingDuration;
    
    event AllocationSet(address indexed user, uint amount);
    event Claimed(address indexed user, uint amount);
    event Seeded( address operator, uint amount);
    event AllocationChanged( address changedBy, address indexed _oldAddress, address indexed _newAddress);

    function initialize(
            address _core
        ) public initializer {
        
        __ReentrancyGuard_init();
        __Ownable_init();

        require ( _core != address(0), "Can't use 0x address");

        core = IERC20(_core);

    }

    function deposit( 
            address[] calldata _receivers,
            uint[] calldata _amounts,
            uint[] calldata _startVesting,
            uint[] calldata _vestingDuration
            ) external onlyOwner {
        uint _len = _receivers.length;
        require(_len == _amounts.length, "Length og receivers and amounts mismatch");

        uint totalAmountNeeded = 0;

        for (uint i = 0; i < _len; i++) {
            claimableAmount[_receivers[i]] += _amounts[i];
            startVesting[_receivers[i]] = _startVesting[i];
            vestingDuration[_receivers[i]] = _vestingDuration[i];
            totalAmountNeeded += _amounts[i];
            emit AllocationSet(_receivers[i], _amounts[i]);
        }

        core.safeTransferFrom(_msgSender(), address(this), totalAmountNeeded);
        core.approve(address(core), type(uint256).max);
        
        emit Seeded( _msgSender(), totalAmountNeeded );
    }

    function changeReceiver( address _oldAddress, address _newAddress ) external onlyOwner {
        require( claimableAmount[_oldAddress] != 0, "Old address doesn't have any allocation.");
        require( claimedAmount[_oldAddress] < claimableAmount[_oldAddress], "You have already claimed all your allocation." );
        require( _newAddress != address(0), "You can't delete an allocation.");

        // _newAddress will be address(0) when we just want to delete this user allocation.
        require( claimableAmount[_newAddress] == 0, "The new address already has a vesting amount.");
        claimableAmount[ _newAddress ] = claimableAmount[ _oldAddress ];
        claimedAmount[_newAddress] = claimedAmount[_oldAddress];

        claimableAmount[ _oldAddress ] = 0;
        claimedAmount[_oldAddress] = 0;

        emit AllocationChanged( _msgSender(), _oldAddress, _newAddress);
    }

    function claim() public nonReentrant {
        require( claimableAmount[_msgSender()] != 0,"This address doesn't have any amount to claim.");
        require( claimedAmount[_msgSender()] < claimableAmount[_msgSender()], "You have already claimed all your allocation" );

        uint _startVesting = startVesting[ _msgSender() ];
        uint _vestingDuration = vestingDuration[ _msgSender() ];

        if (block.timestamp > _startVesting) {

            uint amount = claimableAmount[_msgSender()];

            uint timeElapsed = block.timestamp - _startVesting;

            if ( timeElapsed > _vestingDuration) timeElapsed = _vestingDuration;
            
            uint percentToReceive = timeElapsed * PRECISION / _vestingDuration;
                
            uint amountToReceive = ( (amount * percentToReceive) / PRECISION) - claimedAmount[_msgSender()];

            if ( amountToReceive > 0) {
                claimedAmount[_msgSender()] += amountToReceive;
                core.safeTransfer(_msgSender(), amountToReceive);
                emit Claimed( _msgSender(), amountToReceive);
            }
        }
    }

    function leftToClaim( address _userAddress ) public view returns (uint) {
        if ( claimableAmount[_userAddress] == 0 ) return 0;

        uint _startVesting = startVesting[ _userAddress ];
        uint _vestingDuration = vestingDuration[ _userAddress ];

        if (block.timestamp > _startVesting) {

            uint amount = claimableAmount[_userAddress];

            uint timeElapsed = block.timestamp - _startVesting;

            if ( timeElapsed > _vestingDuration) timeElapsed = _vestingDuration;
            
            uint percentToReceive = timeElapsed * PRECISION / _vestingDuration;
                
            uint amountToReceive = ( (amount * percentToReceive) / PRECISION) - claimedAmount[ _userAddress ];
            
            return amountToReceive;
        }
        return 0;
    }

    function renounceOwnership() public virtual override onlyOwner {}
    
}