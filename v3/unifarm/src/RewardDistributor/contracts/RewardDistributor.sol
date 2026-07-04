//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract RewardDistributor {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public governance;
    IERC20 public whirl;
    address public owner;

    uint256 rewardBase = 100000;

    mapping(address => bool) public whirlers;
    mapping(address => uint256) public whirlerMultiplier;

    constructor(address _whirl) public {
        whirl = IERC20(_whirl);
        governance = msg.sender;
        owner = msg.sender;
    }

    modifier onlyGovernance() {
        require(msg.sender == governance, "Not governance");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier onlyOwnerorGovernance() {
        require(
            msg.sender == governance || msg.sender == owner,
            "Only owner or governance can call this function"
        );
        _;
    }

    modifier onlyWhirler() {
        require(
            whirlers[msg.sender] == true,
            "Caller is not an approved Whirler"
        );
        _;
    }

    event RewardIssued(
        address indexed whirler,
        address indexed recipient,
        uint256 amount
    );

    function distributeReward(address _recipient) external onlyWhirler {
        uint256 rewardAmount = whirl
            .balanceOf(address(this))
            .div(rewardBase)
            .mul(whirlerMultiplier[msg.sender]);
        whirl.safeTransfer(_recipient, rewardAmount);
        emit RewardIssued(msg.sender, _recipient, rewardAmount);
    }

    function setGovernance(address _governance) public onlyGovernance {
        governance = _governance;
    }

    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner;
    }

    function setWhirlerMultiplier(address _whirler, uint256 _multiplier)
        public
        onlyGovernance
    {
        whirlerMultiplier[_whirler] = _multiplier;
    }

    function addWhirler(address _whirler, uint256 _multiplier)
        public
        onlyOwnerorGovernance
    {
        require(whirlers[_whirler] == false, "Whirler already added");
        whirlers[_whirler] = true;
        whirlerMultiplier[_whirler] = _multiplier;
    }

    function rescueToken(address _token, uint256 _amount)
        public
        onlyOwnerorGovernance
    {
        SafeERC20.safeTransfer(IERC20(_token), msg.sender, _amount);
    }
}
