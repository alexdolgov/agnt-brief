//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IPandoAssembly.sol";

contract PandoChest is Ownable, Pausable {
    using SafeERC20 for IERC20;

    mapping(address => bool) public operators;
    address public pandoAssembly;
    address public busd;
    address public pandoPool;
    uint256 public dailyDistributeAmount = 2000 ether; // 2000 USD/days
    uint256 public lastAllocatedTime;
    uint256 public minAllocateInterval = 23 * 1 hours;

    constructor (address _busd, address _pandoAssembly, address _pandoPool) {
        busd = _busd;
        pandoAssembly = _pandoAssembly;
        pandoPool = _pandoPool;
        IERC20(busd).safeApprove(_pandoAssembly, type(uint256).max);
        lastAllocatedTime = 0;
    }

    modifier onlyOperator() {
        // Try to make flash-loan exploit harder to do by only allowing externally owned addresses.
        require(operators[msg.sender] == true, "PandoChest: must be operator");
        _;
    }

    function allocateMoreRewards(uint256 _allocationAmount, uint256 _allocateDay) external onlyOperator whenNotPaused{
        require(_allocateDay > 0 && block.timestamp - lastAllocatedTime > minAllocateInterval, 'PandoChest: !invalid');
        lastAllocatedTime = block.timestamp;
        IERC20(busd).safeTransferFrom(pandoPool, address(this), _allocationAmount);
        uint256 _totalAllocAmount = _allocationAmount + dailyDistributeAmount;
        if (IERC20(busd).balanceOf(address(this)) < _totalAllocAmount) {
            _totalAllocAmount = _allocationAmount;
        }
        IPandoAssembly(pandoAssembly).allocateMoreRewards(_totalAllocAmount, _allocateDay);
        emit RewardAllocated(_allocateDay);
    }

    function emergencyWithdraw(address _token) external onlyOwner whenPaused {
        uint256 _amount = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(msg.sender, _amount);
        emit EmergencyWithdraw(_token, _amount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setOperator(address _operator, bool _status) external onlyOwner {
        operators[_operator] = _status;
        emit OperatorChanged(_operator, _status);
    }

    function setPandoAssembly(address _pandoAssembly) external onlyOwner {
        address oldPandoAssembly = pandoAssembly;
        pandoAssembly = _pandoAssembly;
        emit PandoAssemblyChanged(oldPandoAssembly, _pandoAssembly);
    }


    function setMinAllocateInterval(uint256 _newValue) external onlyOwner {
        uint256 oldMinAllocateInterval = minAllocateInterval;
        minAllocateInterval = _newValue;
        emit MinAllocateIntervalChanged(minAllocateInterval, oldMinAllocateInterval);
    }

    function setDailyDistributeAmount(uint256 _amount) external onlyOwner {
        dailyDistributeAmount = _amount;
    }

    event RewardAllocated(uint256 _days);
    event MinAllocateIntervalChanged(uint256 newMinAllocateIntervalChanged, uint256 oldMinAllocateIntervalChanged);
    event EmergencyWithdraw(address token, uint256 amount);
    event OperatorChanged(address indexed operator, bool status);
    event PandoAssemblyChanged(address indexed oldPandoAssembly, address indexed newPandoAssembly);
}