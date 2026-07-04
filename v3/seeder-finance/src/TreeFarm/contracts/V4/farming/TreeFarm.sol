// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../V3/utils/SafeMathV3.sol";
import "./interface/ITreeFarm.sol";

contract TreeFarm is OwnableUpgradeable, ITreeFarm {
    using SafeMathV3 for uint256;
    using SafeERC20 for IERC20;

    event TreeFarmStarted(uint256 blockNumber);

    uint256 constant CALCULATE_PRECISION = 1E18;

    IERC20 public stakeToken;
    IERC20 public rewardToken;

    bool public startReward;
    uint256 public totalStake; // To prevent someone transfer token directly to mess the calculation
    mapping(address => uint256) public addressToStakeAmount;
    uint256 public cumulativeReward;

    mapping(address => uint256) addressToRewardPerStakeWithBuffer;
    uint256 _rewardPerStakeWithBuffer;
    uint256 _additionalReward;

    function initialize(IERC20 stakeToken_, IERC20 rewardToken_) external initializer {
        __Ownable_init();

        stakeToken = stakeToken_;
        rewardToken = rewardToken_;

        totalStake = 0;
        startReward = false;
    }

    function addReward(uint256 amount) external override {
        rewardToken.safeTransferFrom(msg.sender, address(this), amount);
        _additionalReward = _additionalReward.add(amount);
        cumulativeReward = cumulativeReward.add(amount);
    }

    function getClaimableReward() external view returns (uint256 claimableReward) {
        if(totalStake > 0) {
            uint256 additionalRewardPerStakeWithBuffer = _additionalReward.mul(CALCULATE_PRECISION).div(totalStake);
            uint256 newRewardPerStakeWithBuffer = _rewardPerStakeWithBuffer.add(additionalRewardPerStakeWithBuffer);

            uint256 claimablePerStakeWithBuffer = newRewardPerStakeWithBuffer.sub(addressToRewardPerStakeWithBuffer[msg.sender]);
            uint256 stakeAmount = addressToStakeAmount[msg.sender];
            claimableReward = claimablePerStakeWithBuffer.mul(stakeAmount).div(CALCULATE_PRECISION);
        }
    }

    function stake(uint256 stakeAmount) external {
        claimReward();

        stakeToken.safeTransferFrom(msg.sender, address(this), stakeAmount);
        addressToStakeAmount[msg.sender] = addressToStakeAmount[msg.sender].add(stakeAmount);
        totalStake = totalStake.add(stakeAmount);
    }

    function unstake(uint256 unstakeAmount) external {
        require(addressToStakeAmount[msg.sender] >= unstakeAmount, "TreeFarm: invlaid unstake amount");

        claimReward();

        stakeToken.safeTransfer(msg.sender, unstakeAmount);
        
        addressToStakeAmount[msg.sender] = addressToStakeAmount[msg.sender].sub(unstakeAmount);
        totalStake = totalStake.sub(unstakeAmount);
    }

    function claimReward() public {
        calculateRewardPerStake();

        uint256 claimablePerStakeWithBuffer = _rewardPerStakeWithBuffer.sub(addressToRewardPerStakeWithBuffer[msg.sender]);
        uint256 stakeAmount = addressToStakeAmount[msg.sender];
        uint256 claimableReward = claimablePerStakeWithBuffer.mul(stakeAmount).div(CALCULATE_PRECISION);

        addressToRewardPerStakeWithBuffer[msg.sender] = _rewardPerStakeWithBuffer;

        if (claimableReward > 0) {
            rewardToken.safeTransfer(msg.sender, claimableReward);
        }
    }

    function calculateRewardPerStake() internal {
        if (startReward && totalStake > 0) {
            uint256 additionalRewardPerStakeWithBuffer = _additionalReward.mul(CALCULATE_PRECISION).div(totalStake);

            _rewardPerStakeWithBuffer = _rewardPerStakeWithBuffer.add(additionalRewardPerStakeWithBuffer);
            _additionalReward = 0; 
        }
    }

    // ============== Owner method ==============
    function startRewardDistribution() external onlyOwner {
        startReward = true;

        emit TreeFarmStarted(block.number);
    }
}