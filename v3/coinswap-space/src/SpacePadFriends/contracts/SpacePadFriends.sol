//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SpacePadFriends is Pausable, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    
    address public DEPOSIT_TOKEN_ADDRESS;
    uint256 public level1ReferrerFee = 500; // 500 = 5%
	uint256 public level2ReferrerFee = 300; // 300 = 3%
	uint256 public level3ReferrerFee = 200; // 200 = 2%
    mapping(address => uint256) public balances;
	mapping(address => address) public depositers;
    event Deposited(address indexed referrer, uint256 amount);
    event Withdrawn(address indexed recipient, uint256 amount);
    event UpdatedFee(uint256 level1ReferrerFee, uint256 level2ReferrerFee, uint256 level3ReferrerFee);
    event UpdatedDepositTokenAddress(address depositTokenAddress);

    constructor() {}

    function deposit(uint256 _amount, address _referrer) external whenNotPaused nonReentrant {
        require(_amount > 0, "You need to send some BUSD");
        IERC20 depositTokenAddress = IERC20(DEPOSIT_TOKEN_ADDRESS);
        balances[msg.sender] += _amount;

		uint256 fee = 0;
		
		
        if(_referrer != address(0)) {
            // Level 1
            uint256 level1Fee = _amount * level1ReferrerFee / 10000;
			fee += level1Fee;
            depositTokenAddress.safeTransferFrom(msg.sender, _referrer, level1Fee);
			
			// Level 2
			address level2Referrer = depositers[_referrer];
			if(level2Referrer != address(0)) {
				uint256 level2Fee = _amount * level2ReferrerFee / 10000;
				fee += level2Fee;
				depositTokenAddress.safeTransferFrom(msg.sender, level2Referrer, level2Fee);
				
				// Level 3
				address level3Referrer = depositers[level2Referrer];
				if(level3Referrer != address(0)) {
					uint256 level3Fee = _amount * level3ReferrerFee / 10000;
					fee += level3Fee;
					depositTokenAddress.safeTransferFrom(msg.sender, level3Referrer, level3Fee);
				}
			}			
        }
		
		uint256 depositAmount = _amount - fee;
		depositTokenAddress.safeTransferFrom(msg.sender, address(this), depositAmount);

		depositers[msg.sender] = _referrer;
        emit Deposited(_referrer, _amount);
    }

    function withdraw(address _recipient) external whenNotPaused onlyOwner {
        require(_recipient != address(0), "Invalid Recipient Address");
        uint256 balance = IERC20(DEPOSIT_TOKEN_ADDRESS).balanceOf(address(this));

        IERC20(DEPOSIT_TOKEN_ADDRESS).safeTransfer(_recipient, balance);
        
        emit Withdrawn(_recipient, balance);
    }

    function balanceOf() public view returns(uint256) {
        return balances[msg.sender];
    }

    /**
     * @dev Set Deposit Token Address
     * @param _depositTokenAddress address of deposit token
    */
    function setDepositTokenAddress(address _depositTokenAddress) external onlyOwner {
        require(_depositTokenAddress != address(0), 'Invalid Address');
        DEPOSIT_TOKEN_ADDRESS = _depositTokenAddress;
        emit UpdatedDepositTokenAddress(_depositTokenAddress);
    }

    /**
     * @dev Set fee
     * @param _level1Fee, _level2Fee, _level3Fee percentage (using 2 decimals - 10000 = 100, 0 = 0)
    */
    function setFee(uint256 _level1Fee, uint256 _level2Fee, uint256 _level3Fee) external onlyOwner {
        require(_level1Fee < 10000 || _level2Fee < 10000 || _level3Fee < 10000, 'Too high');
        level1ReferrerFee = _level1Fee;
        level2ReferrerFee = _level2Fee;
        level3ReferrerFee = _level3Fee;
        emit UpdatedFee(level1ReferrerFee, level2ReferrerFee, level3ReferrerFee);
    }

    function pause() external onlyOwner {
        super._pause();
    }

    function unpause() external onlyOwner {
        super._unpause();
    }
}