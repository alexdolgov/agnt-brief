// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

abstract contract AirPuff1X is OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;

    struct UserInfo {
        address user;
        uint256 deposit;
        uint256 positionId;
        uint256 openTimestamp;
        uint256 closeTimestamp;
        bool closed;
    }

    struct FeeConfiguration {
        address feeReceiver;
        uint256 withdrawalFee;
    }

    FeeConfiguration public feeConfiguration;

    address public LRTAsset;
    address[] public allUsers;
    uint256 public MAX_BPS;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public isUser;
    mapping(address => bool) public allowedSenders;

    uint256[50] private __gaps;

    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "AirPuff: positionID is not valid");
        _;
    }

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 positionID, uint256 amount, uint256 timestamp);
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 timestamp);
    event ProtocolFeeChanged(address newFeeReceiver,uint256 newWithdrawalFee);
    event SetAllowedSenders(address indexed sender, bool allowed);
    event LRTAssetChanged(address newLRTAsset);
    

    /** ----------- Change onlyOwner functions ------------- */

    function setLRTAsset(address _LRTAsset) external onlyOwner {
        require(_LRTAsset != address(0), "AirPuff: LRTAsset address is invalid");
        LRTAsset = _LRTAsset;
        emit LRTAssetChanged(_LRTAsset);
    }

    function setAllowed(address _sender, bool _allowed) public onlyOwner {
        allowedSenders[_sender] = _allowed;
        emit SetAllowedSenders(_sender, _allowed);
    }

    function setProtocolFee(address _feeReceiver,uint256 _withdrawalFee) external onlyOwner {
        require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        require(_feeReceiver != address(0), "Invalid address");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;

        emit ProtocolFeeChanged(_feeReceiver,_withdrawalFee);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /** ----------- View functions ------------- */

    function getAllUsers() public view returns (address[] memory) {
        return allUsers;
    }

    function getTotalNumbersOfOpenPositionBy(address _user) public view returns (uint256) {
        return userInfo[_user].length;
    }

    /** ----------- User functions ------------- */

    function openPosition(uint256 _amount) external whenNotPaused nonReentrant {
        require(_amount > 0, "AirPuff: amount is 0");
        IERC20Upgradeable(LRTAsset).safeTransferFrom(msg.sender, address(this), _amount);

        uint256 posID = userInfo[msg.sender].length;
        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: _amount,
            positionId: posID,
            openTimestamp: block.timestamp,
            closeTimestamp: 0,
            closed: false
        });

        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);
        _mint(msg.sender, _amount);

        emit Deposit(msg.sender, posID, _amount, block.timestamp);
    }

    function closePosition(uint256 _positionID) external InvalidID(_positionID, msg.sender) whenNotPaused nonReentrant {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.closed, "AirPuff: position has already been closed");
        require(_userInfo.deposit > 0, "AirPuff: position is not enough to close");

        uint256 amount;
        if (feeConfiguration.withdrawalFee > 0) {
            uint256 fee = _userInfo.deposit.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            amount = _userInfo.deposit - fee;
            IERC20Upgradeable(LRTAsset).safeTransfer(feeConfiguration.feeReceiver, fee);
        } else {
            amount = _userInfo.deposit;
        }
        
        _burn(msg.sender, _userInfo.deposit);
        _userInfo.closed = true;
        _userInfo.closeTimestamp = block.timestamp;
        IERC20Upgradeable(LRTAsset).safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, _positionID, amount, _userInfo.closeTimestamp);
    }

    
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        require(allowedSenders[from] || allowedSenders[to] || allowedSenders[spender], "ERC20: transfer not allowed");
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address ownerOf = _msgSender();
        require(allowedSenders[ownerOf] || allowedSenders[to], "ERC20: transfer not allowed");
        _transfer(ownerOf, to, amount);
        return true;
    }

    function burn(uint256 amount) public virtual override {
        revert("AirPuff: burning is not allowed");
    }

    receive() external payable {}

}
