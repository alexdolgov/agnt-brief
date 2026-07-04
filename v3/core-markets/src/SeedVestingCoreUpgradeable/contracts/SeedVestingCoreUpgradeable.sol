// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract SeedVestingCoreUpgradeable is ReentrancyGuardUpgradeable, OwnableUpgradeable {

    using SafeERC20 for IERC20;

    uint constant public PRECISION = 10000;
    uint public START_VESTING;
    uint public VESTING_DURATION;

    bool public seeded;
    
    IERC20 public core;

    
    
    mapping(address => uint) public claimableAmount;
    mapping(address => uint) public claimedAmount;
    
    event AllocationSet(address indexed user, uint amount);
    event Claimed(address indexed user, uint amount);
    event Seeded( address operator, uint amount);
    event AllocationChanged( address changedBy, address indexed _oldAddress, address indexed _newAddress);



    function initialize(
            address _core,
            uint _startVesting,
            uint _vestingDuration
        ) public initializer {
        
        __ReentrancyGuard_init();
        __Ownable_init();

        require ( _core != address(0), "Can't use 0x address");

        core = IERC20(_core);

        START_VESTING = _startVesting;
        VESTING_DURATION = _vestingDuration;
        

    }

    function deposit( 
            address[] calldata _receivers,
            uint[] calldata _amounts
            ) external onlyOwner {
        uint _len = _receivers.length;
        require(_len == _amounts.length, "Length og receivers and amounts mismatch");

        uint totalAmountNeeded = 0;

        for (uint i = 0; i < _len; i++) {
            claimableAmount[_receivers[i]] += _amounts[i];
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

        if (block.timestamp > START_VESTING) {

            uint amount = claimableAmount[_msgSender()];

            uint liquidAmount = amount * ( PRECISION / 5 ) / PRECISION;     //liquid 20%
            uint vestingAmount = amount - liquidAmount;                     //vested 2 month 80%

            uint timeElapsed = block.timestamp - START_VESTING;

            if ( timeElapsed > VESTING_DURATION) timeElapsed = VESTING_DURATION;
            
            uint percentToReceive = timeElapsed * PRECISION / VESTING_DURATION;
                
            uint amountToReceive = ( (vestingAmount * percentToReceive) / PRECISION) + liquidAmount - claimedAmount[_msgSender()];

            if ( amountToReceive > 0) {
                claimedAmount[_msgSender()] += amountToReceive;
                core.safeTransfer(_msgSender(), amountToReceive);
                emit Claimed( _msgSender(), amountToReceive);
            }
        }
    }

    function leftToClaim( address _userAddress ) public view returns (uint) {
        if ( claimableAmount[_userAddress] == 0 ) return 0;

        if (block.timestamp > START_VESTING) {

            uint amount = claimableAmount[_userAddress];

            uint liquidAmount = amount * ( PRECISION / 5 ) / PRECISION;     //liquid 20%
            uint vestingAmount = amount - liquidAmount;                     //vested 2 month 80%

            uint timeElapsed = block.timestamp - START_VESTING;

            if ( timeElapsed > VESTING_DURATION) timeElapsed = VESTING_DURATION;
            
            uint percentToReceive = timeElapsed * PRECISION / VESTING_DURATION;
                
            uint amountToReceive = ( (vestingAmount * percentToReceive) / PRECISION) + liquidAmount - claimedAmount[ _userAddress ];
            
            return amountToReceive;
        }
        return 0;
    }

    function renounceOwnership() public virtual override onlyOwner {}
    
}