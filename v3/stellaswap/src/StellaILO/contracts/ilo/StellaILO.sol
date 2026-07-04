// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
contract StellaILO is Ownable, ReentrancyGuard {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        bool claimed; 
        bool refunded; 
    }


    IERC20 public stella;
    IERC20 public baseToken;

    // The block number when Stella mining starts.
    uint256 public startTime;
    uint256 public endTime;

    uint256 public raisingAmount = 0;
    uint256 public stellaPerBase = 0;

    // Info of each user that stakes LP tokens.
    mapping(address => UserInfo) public userInfo;
    

    uint256 public totalBaseCommited = 0;

    event Deposit(address indexed user, uint256 amount);
    event Claimed(address indexed user, uint256 amount);
    event Refunded(address indexed user, uint256 amount);

    constructor(
        IERC20 _stella,
        IERC20 _baseToken,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _raisingAmount,
        uint256 _stellaPerBase
    ){
        require(_stella.totalSupply() > 0);
        require(_baseToken.totalSupply() > 0);
        require(_stella != _baseToken, "Tokens must be different");

        stella = _stella;
        baseToken = _baseToken;
        startTime = _startTime;
        endTime = _endTime;
        raisingAmount = _raisingAmount;
        stellaPerBase = _stellaPerBase;
    }


    // Commit Base Tokens
    function commit(uint256 _amount) public nonReentrant {
        require(
            block.timestamp >= startTime,
            "StellaILO: Can not commit before start"
        );
        require(
            block.timestamp < endTime,
            "StellaILO: Can not commit after ILO is finished"
        );

        UserInfo storage user = userInfo[msg.sender];
        
        if (_amount > 0) {
            uint256 beforeDeposit = baseToken.balanceOf(address(this));
            baseToken.safeTransferFrom(msg.sender, address(this), _amount);
            uint256 afterDeposit = baseToken.balanceOf(address(this));

            _amount = afterDeposit.sub(beforeDeposit);

            user.amount = user.amount.add(_amount);

            totalBaseCommited = totalBaseCommited.add(_amount);

        }

        emit Deposit(msg.sender, _amount);
    }

    // Claim stella
    function claim() public nonReentrant {
        require(
            block.timestamp >= endTime,
            "StellaILO: Can not claim before end"
        );
        require(!userInfo[msg.sender].claimed, "Already claimed");

        uint256 userStellaAlloc;
        (userStellaAlloc,,) = _calcOfferingAndRefundingAmounts(msg.sender);
        userInfo[msg.sender].claimed = true;
        stella.safeTransfer(msg.sender, userStellaAlloc);
        emit Claimed(msg.sender, userStellaAlloc);
    }

    // Get Ununsed Base Back
    function refund() public nonReentrant {
        require(
            block.timestamp >= endTime,
            "StellaILO: Can not refund before end"
        );
        require(!userInfo[msg.sender].refunded, "Already refunded");

        uint256 userRefund;
        (,userRefund,) = _calcOfferingAndRefundingAmounts(msg.sender);
        userInfo[msg.sender].refunded = true;
        if (userRefund > 0) {
            baseToken.safeTransfer(msg.sender, userRefund);
        }
        emit Refunded(msg.sender, userRefund);
    }

    function _calcOfferingAndRefundingAmounts(address _user)
        internal
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        uint256 userBaseAlloc;
        uint256 userStellaAlloc;
        uint256 userRefund;
        
        uint256 allocation = (userInfo[_user].amount * 1e12) / totalBaseCommited;
        if (totalBaseCommited > raisingAmount) {

            userBaseAlloc = ( raisingAmount * allocation ) / 1e12;
            userStellaAlloc = ( userBaseAlloc * stellaPerBase ) / 1e18;
            userRefund = userInfo[_user].amount - userBaseAlloc;

        } else {
            userBaseAlloc = (totalBaseCommited * allocation)  / 1e12;
            userStellaAlloc = ( userBaseAlloc * stellaPerBase ) / 1e18;
            userRefund = userInfo[_user].amount - userBaseAlloc;
        }

        return (userStellaAlloc, userRefund, userBaseAlloc);
    }

    function userAllocationsAndRefund(address _user)
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        if(_iloStatus() == 0 ) {
            return (0, 0, 0); // not started yet
        }
        uint256 userBaseAlloc;
        uint256 userStellaAlloc;
        uint256 userRefund;
        (userStellaAlloc, userRefund, userBaseAlloc) = _calcOfferingAndRefundingAmounts(_user);
        return (userStellaAlloc, userRefund, userBaseAlloc);
    }

    function setStartTime(uint256 _startTime) external onlyOwner {
        startTime = _startTime;
    }

    function setEndTime(uint256 _endTime) external onlyOwner {
        endTime = _endTime;
    }

    function setRaisingAmount(uint256 _raisingAmount) external onlyOwner {
        raisingAmount = _raisingAmount;
    }

    function setStellaPerBase(uint256 _stellaPerBase) external onlyOwner {
        stellaPerBase = _stellaPerBase;
    }

    function inCaseTokensGetStuck(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(msg.sender, _amount);
    }

    function moveRaisedBase(address to) external onlyOwner {
        IERC20(baseToken).safeTransfer(to, raisingAmount);
    }

    function _iloStatus()
        internal
        view
        returns (
            uint256
        )
    {

        uint256 saleStatus = 0;
        if ( block.timestamp < startTime) {
            saleStatus = 0;
        }

        if ( block.timestamp >= startTime) {
            saleStatus = 1;
        }

        if ( block.timestamp > endTime) {
            saleStatus = 2;
        }

        return saleStatus;
    }

    function iloStatus()
        external
        view
        returns (
            uint256
        )
    {

        uint256 saleStatus = _iloStatus();
        return saleStatus;
    }

}