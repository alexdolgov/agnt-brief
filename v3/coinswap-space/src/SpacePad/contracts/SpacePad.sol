//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SpacePad is Pausable, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    
    address public DEPOSIT_TOKEN_ADDRESS;
    uint256 public referrerFee = 1000; // 1000 = 10%
    event Deposited(address indexed referrer, uint256 amount);
    event Withdrawn(address indexed recipient, uint256 amount);
    event UpdatedFee(uint256 fee);
    event UpdatedDepositTokenAddress(address depositTokenAddress);

    constructor() {}

    function deposit(uint256 _amount, address _referrer) external whenNotPaused nonReentrant {
        require(_amount > 0, "You need to send some BUSD");
        IERC20 depositTokenAddress = IERC20(DEPOSIT_TOKEN_ADDRESS);
        if(_referrer == address(0)) {
            depositTokenAddress.safeTransferFrom(msg.sender, address(this), _amount);
        }
        else {
            uint256 fee = _amount * referrerFee / 10000;
            uint256 depositAmount = _amount - fee;
            depositTokenAddress.safeTransferFrom(msg.sender, _referrer, fee);

            depositTokenAddress.safeTransferFrom(msg.sender, address(this), depositAmount);
        }

        emit Deposited(_referrer, _amount);
    }

    function withdraw(address _recipient) external whenNotPaused onlyOwner {
        require(_recipient != address(0), "Invalid Recipient Address");
        uint256 balance = IERC20(DEPOSIT_TOKEN_ADDRESS).balanceOf(address(this));
        IERC20(DEPOSIT_TOKEN_ADDRESS).safeTransfer(_recipient, balance);
        
        emit Withdrawn(_recipient, balance);
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
     * @param _fee percentage (using 2 decimals - 10000 = 100, 0 = 0)
    */
    function setFee(uint256 _fee) external onlyOwner {
        require(_fee < 10000, 'Too high');
        referrerFee = _fee;
        emit UpdatedFee(_fee);
    }

    function pause() external onlyOwner {
        super._pause();
    }

    function unpause() external onlyOwner {
        super._unpause();
    }
}
