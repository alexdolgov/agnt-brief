// SPDX-License-Identifier: MIT

/*
   Storage Liquidity Staing. 
*/

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";

contract LiquidStaking is Context {
    
    address public lp_token_address;
    address public reward_token_address;
    address public contract_owner;

    uint public positionCounter = 0;
    uint public reward_credit = 0;

    struct Position {
        uint id;
        address owner;
        uint amount;
        uint startTime;
        uint endTime;
        uint period;
        uint totalReward;
        uint payed;
    }

    mapping(uint => Position) public positions;
    mapping(address => uint[]) public ownerPositions;  // To Store data for each address

    event LiquidityAdded(uint indexed positionId, address indexed owner, uint amount, uint period);
    event RewardClaimed(uint indexed positionId, address indexed owner);
    event PositionClosed(uint indexed positionId, address indexed owner);

    constructor(address _lp_token_address, address _reward_token_address) {
        lp_token_address = _lp_token_address;
        reward_token_address = _reward_token_address;
        contract_owner = _msgSender();
    }

    modifier onlyOwner() {
        require(msg.sender == contract_owner, "Not the contract owner");
        _;
    }

    function emergency_stop() public onlyOwner {
        uint not_vested_balance = IERC20(reward_token_address).balanceOf(address(this));
        IERC20(reward_token_address).transfer(contract_owner, not_vested_balance);
    }

    function end_staking() public onlyOwner {
         IERC20(reward_token_address).transfer(contract_owner, reward_balance());
    }

    function transfer_owner(address new_owner) public onlyOwner {
        contract_owner =new_owner;
    }

    function reward_balance () public view returns (uint) {
        uint cur_balance = IERC20(reward_token_address).balanceOf(address(this));
        
        if (cur_balance > reward_credit) {
            return cur_balance - reward_credit;
        }
        
        return 0;
    }

    function total_in_balancer() public view returns (uint) {
        return IERC20(reward_token_address).totalSupply();
    }

    function calc_full_reward(uint amount, uint period) public view  returns (uint) {
        return  (reward_balance() * amount * period ) / (total_in_balancer() * 365 days);
    }

    function add_liquidity(uint amount, uint period) external {
        require(period >= 1 days && period <= 90 days , "Invalid period");
        
        // Store Balance before deposit
        uint initialBalance = IERC20(lp_token_address).balanceOf(address(this));

        IERC20(lp_token_address).transferFrom(_msgSender(), address(this), amount);
        
        // Check aactual balance
        uint actualAmount = IERC20(lp_token_address).balanceOf(address(this)) - initialBalance;
        
        // Veritfy Actual balance == amount (if trenafer less, but not crashed)
        // require(actualAmount == amount, "Transferred amount mismatch");

        require(actualAmount >= 1 * 1e18 && actualAmount <= 10_000 * 1e18, "Invalid amount");
        

        positionCounter++;
        Position memory newPosition = Position({
            id: positionCounter,
            owner: _msgSender(),
            amount: actualAmount,
            startTime: block.timestamp,
            endTime: block.timestamp + period,
            period: period,
            totalReward: calc_full_reward(actualAmount, period),
            payed: 0
        });
        
        positions[positionCounter] = newPosition;
        reward_credit = reward_credit + newPosition.totalReward;

        ownerPositions[_msgSender()].push(positionCounter);
        
        emit LiquidityAdded(positionCounter, _msgSender(), actualAmount, period);
    }

    function getPositionsOfOwner(address owner) external view returns (uint[] memory) {
        return ownerPositions[owner];
    }

    function claim_reward(uint positionId) external {
        Position storage position = positions[positionId];
        require(position.owner == _msgSender(), "Not the owner of the position");
        require(block.timestamp >= position.startTime, "Staking period not yet started");

        uint elapsedTime = block.timestamp - position.startTime;
        uint totalVestingTime = position.endTime - position.startTime;
        
        // Prevent division by zero and ensure that elapsed time does not exceed total vesting time
        require(totalVestingTime > 0, "Vesting time cannot be 0");
        elapsedTime = elapsedTime > totalVestingTime ? totalVestingTime : elapsedTime;

        uint vestedReward = (position.totalReward * elapsedTime) / totalVestingTime;
        uint claimableReward = vestedReward - position.payed;

        require(claimableReward > 0, "No rewards to claim");
        
        position.payed += claimableReward;  // Update the payed amount

        IERC20(reward_token_address).transfer(position.owner, claimableReward);  // Transfer the claimable reward tokens to the position owner
        reward_credit = reward_credit - claimableReward;
        emit RewardClaimed(positionId, _msgSender());
    }

    function close_position(uint positionId, bool ignoreReward) external {
        Position storage position = positions[positionId];
        require(position.owner == _msgSender(), "Not the owner of the position");
        require(block.timestamp >= position.endTime, "Staking period not yet ended");
        
        uint remainingReward = position.totalReward - position.payed;

        if (remainingReward > 0 && !ignoreReward) {
            position.payed += remainingReward;  // Update the payed amount to avoid double claim
            
            IERC20(reward_token_address).transfer(position.owner, remainingReward);  // Transfer the remaining reward tokens to the position owner
            reward_credit = reward_credit - remainingReward;
        }
        if (ignoreReward) {
            reward_credit = reward_credit - remainingReward;
        }

        IERC20(lp_token_address).transfer(position.owner, position.amount);  // Transfer the staked tokens back to the position owner
        
        delete positions[positionId];  // Delete the position        
        emit PositionClosed(positionId, _msgSender());
    }

    function get_position(uint positionId) external view returns(Position memory) {
        return positions[positionId];
    }
}