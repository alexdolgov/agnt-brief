// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract RewardsDistributor is OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    struct NewRewards {
        address token;
        address[] users;
        uint256[] amounts;
    }

    struct UserReward {
        address token;
        uint256 amount;
    }

    EnumerableSet.AddressSet supportedTokens;
    mapping(address user => mapping(address token => uint256)) rewards;

    function initialize(address _owner) public initializer {
        __Ownable_init(_owner);
    }

    function getAvailableTokens() public view returns (address[] memory) {
        return supportedTokens.values();
    }

    function addRewards(NewRewards[] memory newRewards) public onlyOwner {
        for (uint256 i = 0; i < newRewards.length; i++) {
            NewRewards memory newReward = newRewards[i];
            require(newReward.users.length == newReward.amounts.length, "length mismatch");

            if (!supportedTokens.contains(newReward.token)) {
                supportedTokens.add(newReward.token);
            }

            for (uint256 j = 0; j < newReward.users.length; j++) {
                rewards[newReward.users[j]][newReward.token] += newReward.amounts[j];
            }
        }
    }

    function claim(address[] memory tokens) public {
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 userReward = rewards[msg.sender][tokens[i]];
            rewards[msg.sender][tokens[i]] = 0;
            if (userReward > 0) {
                IERC20(tokens[i]).safeTransfer(msg.sender, userReward);
            }
        }
    }

    function getRewards(address user) public view returns (UserReward[] memory userRewards) {
        uint256 nonZero;
        for (uint256 i = 0; i < supportedTokens.length(); i++) {
            if (rewards[user][supportedTokens.at(i)] > 0) {
                nonZero++;
            }
        }

        userRewards = new UserReward[](nonZero);

        uint256 index;
        for (uint256 i = 0; i < supportedTokens.length(); i++) {
            if (rewards[user][supportedTokens.at(i)] > 0) {
                userRewards[index] = UserReward(supportedTokens.at(i), rewards[user][supportedTokens.at(i)]);
                index++;
            }
        }

        return userRewards;
    }
}
