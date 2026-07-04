// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/ILiquidityMining.sol";

contract LiquidityMining is Context, Pausable, Ownable, ReentrancyGuard, ILiquidityMining {
    using SafeERC20 for IERC20;
    
    uint private _interestPerDay;
    uint private _overallCoefficient;
    uint private _lastUpdatedTime;
    uint private _totalSupply;
    uint public minWaitTime;
    uint public unlockRequestDeadline;
    address private _LPToken;

    mapping (address => uint256) private _lastCoefficient;
    mapping (address => uint256) private _balance; 
    mapping (address => uint256) private _interestBalance;
    mapping (bytes32 => uint8) public unlockRequestState;

    modifier ZeroWaitTime() {
        require(minWaitTime == 0, "LiquidityMining: minimum wait time is not zero");
        _;
    }

    constructor(uint __interestPerDay, address __LPToken, uint _minWaitTime, uint _unlockRequestDeadline) {
        _interestPerDay = __interestPerDay;
        _LPToken = __LPToken;
        minWaitTime = _minWaitTime;
        unlockRequestDeadline = _unlockRequestDeadline;
    }

    function interestPerDay() public view returns (uint) {
        return _interestPerDay;
    }

    function LPToken() public view returns (address) {
        return _LPToken;
    }

    function interestInInterval(uint start, uint end) public view returns (uint) {
        return (end - start) * _interestPerDay / 1 days;
    }
    
    function balanceOf(address account) public view returns (uint) {
        return _balance[account];
    }

    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }

    function setUnlockRequestDeadline(uint _unlockRequestDeadline) public onlyOwner {
        emit NewUnlockRequestDeadline (unlockRequestDeadline, _unlockRequestDeadline);
        unlockRequestDeadline = _unlockRequestDeadline;
    }

    function setMinWaitTime(uint _minWaitTime) public onlyOwner {
        emit NewWaitTime (minWaitTime, _minWaitTime);
        minWaitTime = _minWaitTime;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function relaxBalance(address account) private {
        if (_totalSupply != 0) {
            _overallCoefficient += interestInInterval(_lastUpdatedTime, block.timestamp) * (10 ** 28) / _totalSupply;
        }
        
        _interestBalance[account] += (_overallCoefficient - _lastCoefficient[account]) * _balance[account] / (10 ** 28);
        _lastUpdatedTime = block.timestamp;
        _lastCoefficient[account] = _overallCoefficient;
    }

    function lockLPToken(uint amount) public whenNotPaused nonReentrant {
        IERC20(_LPToken).safeTransferFrom(_msgSender(), address(this), amount);
        relaxBalance(_msgSender());
        _balance[_msgSender()] += amount;
        _totalSupply += amount;
        emit LockLPToken(_msgSender(), amount);
    }

    function unlockLPToken(uint amount, uint time, bytes32 tag) public whenNotPaused nonReentrant {
        bytes32 _tag = keccak256(abi.encodePacked(_msgSender(), amount, time));
        require(
            _tag == tag, 
            "LiquidityMining: tag is not currect"
        );
        require(
            block.timestamp - time >= 1 days * minWaitTime, 
            "LiquidityMining: minimum lock time is not passed"
        );
        require(
            block.timestamp - time <= 1 days * (minWaitTime + unlockRequestDeadline), 
            "LiquidityMining: unlock request is expired"
        );
        require(
            unlockRequestState[_tag] == 1, 
            "LiquidityMining: unlock request is not submitted or is used before"
        );
        
        require(
            _balance[_msgSender()] >= amount, 
            "LiquidityMining: transfer amount exceeds balance"
        );

        relaxBalance(_msgSender());
        _balance[_msgSender()] -= amount;
        _totalSupply -= amount;
        IERC20(_LPToken).safeTransfer(_msgSender(), amount);
        unlockRequestState[_tag] = 2;
        emit UnlockLPToken(_msgSender(), amount, tag);
    }

    function instantUnlockLPToken(uint amount) public whenNotPaused ZeroWaitTime nonReentrant {
        require(
            _balance[_msgSender()] >= amount, 
            "LiquidityMining: transfer amount exceeds balance"
        );
        relaxBalance(_msgSender());
        _balance[_msgSender()] -= amount;
        _totalSupply -= amount;
        IERC20(_LPToken).safeTransfer(_msgSender(), amount);
        emit InstantUnlockLPToken(_msgSender(), amount);
    }

    function requestToUnlockLPToken(uint amount) public whenNotPaused returns (bytes32) {
        uint blockTime = block.timestamp;
        bytes32 tag = keccak256(abi.encodePacked(_msgSender(), amount, blockTime));
        require(
            unlockRequestState[tag] == 0, 
            "LiquidityMining: this request is submitted before"
        );
        unlockRequestState[tag] = 1;

        emit UnlockLPTokenRequest(_msgSender(), _balance[_msgSender()], amount, blockTime, tag);
        return tag;
    }

    function emergencyWithdrawal(uint amount) public whenPaused nonReentrant {
        require(
            _balance[_msgSender()] >= amount, 
            "LiquidityMining: transfer amount exceeds balance"
        );
        _balance[_msgSender()] -= amount;
        _totalSupply -= amount;
        IERC20(_LPToken).safeTransfer(_msgSender(), amount);
        emit EmergencyWithdrawal(_msgSender(), amount);
    }

    function getInterest(address account) public view returns (uint) {
        uint coefficient = 
            (_overallCoefficient - _lastCoefficient[account])
            + (_totalSupply != 0? interestInInterval(_lastUpdatedTime, block.timestamp)  * (10 ** 28) / _totalSupply : 0);

        return _interestBalance[account] + coefficient * _balance[account] / (10 ** 28); 
    }
}
