// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";
import {IRewardsDistributor} from "../interfaces/IRewardsDistributor.sol";
import {Ownable} from "solady/auth/Ownable.sol";

contract InterestDistributor is Ownable {
    IPositionManager public immutable POSITION_MANAGER;
    IRewardsDistributor public immutable REWARDS_DISTRIBUTOR;
    IERC20 public immutable INTEREST_TOKEN;

    event InterestDistributed(uint256 amount);

    constructor(address _positionManagerAddress, address _rewardsDistributorAddress) {
        _initializeOwner(msg.sender);

        POSITION_MANAGER = IPositionManager(_positionManagerAddress);
        REWARDS_DISTRIBUTOR = IRewardsDistributor(_rewardsDistributorAddress);
        INTEREST_TOKEN = IERC20(REWARDS_DISTRIBUTOR.token());
    }

    function claim() external onlyOwner {
        uint256 lastIndex = POSITION_MANAGER.lastVaultIndex();

        uint256 rewards;

        for (uint8 i; i < lastIndex;) {
            rewards += POSITION_MANAGER.claimInterest(i);
            unchecked {
                i++;
            }
        }

        if (rewards > 0) {
            INTEREST_TOKEN.transfer(address(REWARDS_DISTRIBUTOR), rewards);
            REWARDS_DISTRIBUTOR.checkpoint_token();
            REWARDS_DISTRIBUTOR.checkpoint_total_supply();

            emit InterestDistributed(rewards);
        }
    }
}
