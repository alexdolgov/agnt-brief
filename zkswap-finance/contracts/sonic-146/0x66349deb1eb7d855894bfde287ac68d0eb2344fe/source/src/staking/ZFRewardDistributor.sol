
// SPDX-License-Identifier: MIT
// website: https://www.zkswap.finance

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20}  from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
// This contract is responsible for distributing rewards to stakers in the ZF protocol.
contract ZFRewardDistributor {
    using SafeERC20 for IERC20;
    // Example state variable
    address public owner;
    address public rewardTokenAddress;
    address public stakingPoolAddress;

    // Example event
    event RewardsDistributed(address indexed staker, uint256 amount);
    event OwnerTransferred(address indexed previousOwner, address indexed newOwner);
    event SetDistributor(address indexed previousDistributor, address indexed newDistributor);

    modifier onlyStakingPoolOrOwner() {
        require(msg.sender == owner || msg.sender == stakingPoolAddress, 
        "Only the staking pool or owner can call this function");
        _;
    }

    // Constructor to set the owner of the contract
    constructor(
        address _rewardTokenAddress,
        address _stakingPoolAddress
    ) {
        rewardTokenAddress = _rewardTokenAddress;
        stakingPoolAddress = _stakingPoolAddress;
        owner = msg.sender;

        // _giveAllowance();
    }
    
    // Function to distribute rewards to a staker
    function distributeRewards(uint256 amount) external onlyStakingPoolOrOwner {
        
        uint256 balance = IERC20(rewardTokenAddress).balanceOf(address(this));
        require(balance >= amount, "Insufficient reward token balance");

        IERC20(rewardTokenAddress).safeTransfer(
            msg.sender,
            amount
        );

        emit RewardsDistributed(msg.sender, amount);
    }

    function setOwner(address newOwner) external {
        require(msg.sender == owner, "setOwner:Only the current owner can set a new owner");
        require(newOwner != owner && newOwner != address(0),"setOwner: Illegal address");
        emit OwnerTransferred(owner, newOwner);
        owner = newOwner;
    }

    function setStakingPoolAddress(address newStakingPoolAddress) external {
        require(msg.sender == owner, "setStakingPoolAddress:Only the owner can set the staking pool address");
        require(newStakingPoolAddress != stakingPoolAddress && newStakingPoolAddress != address(0),"setStakingPoolAddress: Illegal address");
        
        _removeAllowance(); // Remove old allowance
        emit SetDistributor(stakingPoolAddress, newStakingPoolAddress);
        stakingPoolAddress = newStakingPoolAddress;

        // Approve the new staking pool to spend reward tokens
        _giveAllowance();
    }

    function giveAllowance() external {
        require(msg.sender == owner, "giveAllowance:Only the owner can give allowance");
        _giveAllowance();
    }

    function _giveAllowance() internal {
        IERC20(rewardTokenAddress).approve(stakingPoolAddress, type(uint256).max);
    }

    function _removeAllowance() internal {
        if (stakingPoolAddress != address(0)) {
            IERC20(rewardTokenAddress).approve(stakingPoolAddress, 0);
        }
    }

}