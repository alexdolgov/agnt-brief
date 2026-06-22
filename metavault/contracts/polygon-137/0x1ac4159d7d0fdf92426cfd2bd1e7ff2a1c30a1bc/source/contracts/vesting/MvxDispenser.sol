// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MvxDispenser is ReentrancyGuard, Ownable {
    address public immutable deadAddress = 0x000000000000000000000000000000000000dEaD;
    IERC20 public immutable mvx;
    uint256 public immutable endDate; 

    uint256 public totalAmountToWithdraw;

    mapping(address => uint256) public mvxBalances;

    event Withdrawal(address indexed _recipient, address indexed _receiver, uint256 _amount);
    event AddRecipient(address indexed _recipient, uint256 _amount);
    event SetRecipient(address indexed _recipient, uint256 oldAmount, uint256 _newAmount);
    event OwnerWithdrawal(address indexed _token, address indexed _receiver, uint256 _amount);

    constructor(
        address _mvx,        
        uint256 _endDate
    ) {
        require(_mvx != address(0), "Zero token address");
        require(_endDate > block.timestamp, "invalid end date");

        mvx = IERC20(_mvx);
        endDate = _endDate;
    }

    function addRecipients(address[] calldata _recipients, uint128[] calldata _amounts) external onlyOwner {
        require(_recipients.length == _amounts.length, "Invalid array length");

        for (uint256 i; i < _recipients.length; i++) {
            _addRecipient(_recipients[i], _amounts[i]);
        }
    }

    function addRecipient(address _recipient, uint128 _amount) external onlyOwner {
        _addRecipient(_recipient, _amount);
    }

    function _addRecipient(address _recipient, uint128 _amount) private {
        require(_amount > 0, "Amount must valid");
        uint256 amount = mvxBalances[_recipient] + _amount;

        mvxBalances[_recipient] = amount;

        totalAmountToWithdraw += _amount;

        emit AddRecipient(_recipient, _amount);
    }

    function setRecipient(address _recipient, uint128 _amount) external onlyOwner {
        uint256 oldAmount = mvxBalances[_recipient];
        require(oldAmount > 0,"No balance!");

        totalAmountToWithdraw -= oldAmount;
        mvxBalances[_recipient] = _amount;
        totalAmountToWithdraw += _amount;

        emit SetRecipient(_recipient, oldAmount, _amount);
    }    

    function withdrawTokens(address _receiver) external nonReentrant{
        require(endDate > block.timestamp,"Expire!");
        require(_receiver != address(0), "Zero receiver address");
        uint256 claimable = mvxBalances[msg.sender];
        require(claimable > 0, "No tokens claimable");
        mvxBalances[msg.sender] = 0;
        totalAmountToWithdraw -= claimable;
        mvx.transfer(_receiver, claimable);

        emit Withdrawal(msg.sender, _receiver, claimable);
    }

    function withdrawEmergencyToken(IERC20 _token, address _receiver, uint256 _amount) external onlyOwner nonReentrant{
        require(address(_token) != address(0), "Zero token address");
        require(_receiver != address(0), "Zero receiver address");
        if (_token == mvx) {
            uint256 tokenBalance = IERC20(_token).balanceOf(address(this));
            require(totalAmountToWithdraw + _amount <= tokenBalance, "Not allowed to withdraw users' funds");
        }

        _token.transfer(_receiver, _amount);

        emit OwnerWithdrawal(address(_token), _receiver, _amount);
    }

    function sendExpiredTokenToDead() external onlyOwner nonReentrant{
        require(endDate < block.timestamp,"Not yet!");
        uint256 amount = mvx.balanceOf(address(this));

        mvx.transfer(deadAddress, amount);

        emit OwnerWithdrawal(address(mvx), deadAddress, amount);
    }

}