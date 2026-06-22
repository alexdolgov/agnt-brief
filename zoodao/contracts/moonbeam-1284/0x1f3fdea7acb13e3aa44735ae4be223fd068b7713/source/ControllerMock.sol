pragma solidity 0.8.13;

// SPDX-License-Identifier: MIT
import "ERC20.sol";

contract ControllerMock
{
	ERC20 public well;                      // well token interface

	constructor(address _well) 
	{
		well = ERC20(_well);
	}
    
    function claimReward(uint8 rewardType, address payable holder) public returns(uint256) { // rewardType = 0 for WELL, mToken = address for frax
        require(rewardType <= 1, "Incorrect reward type");
        if (rewardType == 0) {
            well.transfer(holder, 10 ** 20);
        } else {
            holder.transfer(10 ** 20);
        }
        return 10 ** 20;
        
    }
}