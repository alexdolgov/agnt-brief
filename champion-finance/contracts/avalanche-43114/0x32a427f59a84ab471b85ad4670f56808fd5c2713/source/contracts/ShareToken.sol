// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./owner/Operator.sol";

contract ShareToken is ERC20, Operator {
    using SafeMath for uint256;

    uint256 public constant FARMING_POOL_REWARD_ALLOCATION = 650000 ether;
    uint256 public constant NODE_POOL_REWARD_ALLOCATION = 50000 ether;

	uint256 private constant INITIAL_SUPPLY = 1 ether;

    bool public rewardPoolDistributed = false;

    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        // mint 1 token for initial pools deployment
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @notice distribute to reward pool (only once)
     */
    function distributeReward(
        address _farmingPoolAddress,
        address _nodePoolAddress
    ) external onlyOperator {
        require(!rewardPoolDistributed, "only can distribute once");
        require(_farmingPoolAddress != address(0), "!_farmingPoolAddress");
        require(_nodePoolAddress != address(0), "!_nodePoolAddress");
        rewardPoolDistributed = true;
        _mint(_farmingPoolAddress, FARMING_POOL_REWARD_ALLOCATION);
        _mint(_nodePoolAddress, NODE_POOL_REWARD_ALLOCATION);
    }
}
