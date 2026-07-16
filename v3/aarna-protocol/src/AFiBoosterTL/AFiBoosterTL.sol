// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IERC20Extended as IERC20} from "./IERC20Extended.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import {Pausable} from "./Pausable.sol";
import {SafeERC20} from "./SafeERC20.sol";

/**
 * @title IAFi.
 * @notice Interface of the AFiToken.
 */
interface IAFi {
    function depositUserNav(address user) external returns(uint256);
    function stakeShares(address user, uint256 amount, bool lock) external;
    function aFiStorage() external view returns(address);
}

/**
 * @title IAFiStorage.
 * @notice Interface of the AFiStorage contract.
 */
interface IAFiStorage {
    function calculatePoolInUsd(address afiContract) external view returns (uint);
}

contract AFiBoosterTL is OwnableDelayModule, Pausable {
    using SafeERC20 for IERC20;

    IERC20 public rewardToken;

    bool public stakePause;
    bool public callOnce;

    uint256 public totalRewardsDistributed;

    uint256[] public lockDuration; // First lockDate will be the launch date
    uint256[] public durationFactors; // 100 for 1% and first factor will be 0

    mapping (address => mapping (uint256 => Stake)) public stakingDetails;
    mapping (address => bool) public isAFiToken;  // The token being staked
    mapping (address => uint256) public totalStaked;
    mapping (address => uint256) public numStakes;
    mapping (address => Freeze) public frozen;
    mapping(address => uint256) public tokenEndDate;
    mapping(address => uint256) public EndNAV;

    struct Stake {
        uint256 amount;
        uint256 startTime;
        address token;
        uint256 stakeNAV;
        uint256 unstakeNAV;
        uint256 rewards;
        uint256 durationIndex;
        uint256 durationRate;
        bool claimed;
    }

    struct Freeze {
        bool isFrozen;
        uint256 freezingDate;
    }

    event RewardTokenSet(address indexed _rewardToken);
    event AFiTokenAdded(address indexed _afiToken);
    event AFiTokenRemoved(address indexed _afiToken);
    event AFiTokenFrozen(address indexed _afiToken, uint256 _freezingDate);
    event Staked(
        address indexed user,
        address indexed _afiToken,
        uint256 _amount,
        uint256 _userStakeCounter
    );
    event Unstaked(
        address indexed user,
        uint256 _reward,
        uint256 _userStakeCounter
    );
    event UnclaimedRewardsWithdrawn(
        address _owner,
        uint256 _unclaimedRewards
    );

    constructor (address token) {
        require(token != address(0), "Booster TL: Please enter a valid address");

        rewardToken = IERC20(token);

        emit RewardTokenSet(token);
    }

    function pause() external onlyOwner {
       _pause();
    }

    function unpause() external onlyOwner {
       _unpause();
    }

    function addAFiToken(address token) external onlyOwner {

        require(token != address(0), "Booster TL: Please enter a valid address");
        require(!isAFiToken[token], "Booster TL: Already added");

        isAFiToken[token] = true;

        emit AFiTokenAdded(token);

    }

    function removeAFiToken(address token) external onlyOwner {

        require(token != address(0), "Booster TL: Please enter a valid address");
        require(isAFiToken[token], "Booster TL: Not added yet");

        delete isAFiToken[token];

        emit AFiTokenRemoved(token);

    }

    function freezeRewardsForAFiToken(address token) external onlyOwner {

        require(token != address(0), "Booster TL: Please enter a valid address");
        require(isAFiToken[token], "Booster TL: Not an AFi token");
        require(!frozen[token].isFrozen, "Booster TL: Token already frozen");

        frozen[token].isFrozen = true;
        frozen[token].freezingDate = block.timestamp;

        emit AFiTokenFrozen(token, frozen[token].freezingDate);

    }

    function stake(uint256 amount, address token) external whenNotPaused {

        require(!stakePause, "Booster TL: Stake now paused");
        require(isAFiToken[token], "Booster TL: This token is not stakable");
        require(amount > 0, "Booster TL: Amount must be greater than 0");
        require(!frozen[token].isFrozen, "Booster TL: Staking is frozen for this token");

        uint256 _stakeNAV = (((IAFiStorage(IAFi(token).aFiStorage()).calculatePoolInUsd(token)) * 10000) / IERC20(token).totalSupply());

        stakingDetails[msg.sender][numStakes[msg.sender]] = Stake(
            amount,
            block.timestamp,
            token,
            _stakeNAV,
            0,
            0,
            0,
            0,
            false
        );

        totalStaked[token] += amount;

        numStakes[msg.sender]++;

        IAFi(token).stakeShares(msg.sender, amount, true);

        emit Staked(
            msg.sender,
            token,
            amount,
            numStakes[msg.sender]
        );

    }

    function unstake(uint256 stakeIndex) external {

        Stake storage userStake = stakingDetails[msg.sender][stakeIndex];
        (uint256 reward, uint256 index, uint256 uNAV, uint256 rate) = accruedReward(msg.sender, stakeIndex);
        userStake.durationIndex = index;
        userStake.unstakeNAV = uNAV;
        userStake.durationRate = rate;
        userStake.rewards = reward;

        totalStaked[userStake.token] -= userStake.amount;
        userStake.claimed = true;

        IAFi(userStake.token).stakeShares(msg.sender, userStake.amount, false);

        emit Unstaked(
            msg.sender,
            reward,
            stakeIndex
        );
        
        if (reward > 0) {
            rewardToken.safeTransfer(msg.sender, reward);
            totalRewardsDistributed += reward;
        }
    }

    function accruedReward(address user, uint256 stakeIndex) public view returns(uint256, uint256, uint256, uint256){
        require(numStakes[user] > stakeIndex, "Booster TL: Invalid index");

        Stake storage userStake = stakingDetails[user][stakeIndex];

        require(!userStake.claimed, "Booster TL: Already claimed");

        uint256 reward;
        uint256 stakingDuration;

        if (frozen[userStake.token].isFrozen) {
            stakingDuration = frozen[userStake.token].freezingDate - userStake.startTime;
        } else {
            stakingDuration = block.timestamp - userStake.startTime;
        }

        uint256 durationIndex;

        for(uint256 i = 0; i< lockDuration.length; i++){
            if(stakingDuration < lockDuration[i]) {
                durationIndex = i;
                break;
            }
            
            if(stakingDuration >= lockDuration[lockDuration.length - 1]) {
                durationIndex = lockDuration.length;
            }
        }

        uint256 _yieldGenerated;
        uint256 _unstakeNAV;
        if(durationIndex > 0){
            _unstakeNAV = (((IAFiStorage(IAFi(userStake.token).aFiStorage()).calculatePoolInUsd(userStake.token))* 10000) / IERC20(userStake.token).totalSupply());
            if(tokenEndDate[userStake.token] > 0 && block.timestamp > tokenEndDate[userStake.token]){
                require(EndNAV[userStake.token] > 0, "Booster TL: EndNav not set");
                _unstakeNAV = EndNAV[userStake.token];
            }
            _yieldGenerated = ((_unstakeNAV - userStake.stakeNAV) * userStake.amount);
            reward = (((_yieldGenerated * durationFactors[durationIndex-1]) * (10 ** IERC20(rewardToken).decimals())) / 100); 
        }

        if(durationIndex == 0){
            return (reward, 0, _unstakeNAV, 0);
        }else {
            return (reward, durationIndex-1, _unstakeNAV, durationFactors[durationIndex-1]);
        }
    }

    function setLockDateDetails(
        uint256[] calldata _lockDuration,
        uint256[] calldata _durationFactors
    ) external  onlyOwner whenPaused {

        require(_lockDuration.length == (_durationFactors.length), "Booster TL: Array lengths not appropriate");

        for(uint256 i; i < _lockDuration.length; i++) {
            lockDuration.push(_lockDuration[i]);
            durationFactors.push(_durationFactors[i]);
        }

    }

    function withdrawStrayToken(address token) external onlyOwner {
        require(token != address(rewardToken), "Booster TL: cannot withdraw reward token");

        IERC20(token).safeTransfer(owner(), IERC20(token).balanceOf(address(this)));
    }

    function pauseStake() external onlyOwner {
        require(!callOnce, "Booster TL: Already Paused");
        stakePause = true;
        callOnce = true;
    }

    function setEndDate(address token, uint256 _endDate) external onlyOwner {
        tokenEndDate[token] = _endDate;
    }

    function setEndNAV(address token) external onlyOwner {
        EndNAV[token] = (((IAFiStorage(IAFi(token).aFiStorage()).calculatePoolInUsd(token))* 10000) / IERC20(token).totalSupply());
    }
}
