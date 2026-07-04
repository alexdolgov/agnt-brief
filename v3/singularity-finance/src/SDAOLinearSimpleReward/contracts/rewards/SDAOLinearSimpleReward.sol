// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "../utils/Clonable.sol";
import "./SDAOSimpleRewardAPI.sol";

/*
 * @title Contract holding and managing linear emission of rewards for a single token
 * @notice requirements:
 * - reward contract is initialized for a single reward token
 * - reward manager adds reward tokens and an emission period
 * - reward contract can collect accrued rewards tokens
 * - reward contract also manages user shares
 */
contract SDAOLinearSimpleReward is Clonable, SDAOSimpleRewardAPI {
    using SafeERC20 for IERC20;
    
    uint256 private constant CLAIMABLE_PRECISION = 1e48;
    uint256 constant public MAX_PERCENTAGE = 10000; // 100.00%
    
    address public depositContract;
    RewardTokenInfo public reward;

    uint256 public balance;    
    uint256 public totalShares;
    uint256 public accumulatedRewardsPerShare; // accumulated rewards per share
    uint256 public rewardsCommissionPercentage; // commission percentage for rewards
    address public feeReceiver; // address to receive commission
    mapping(address => UserInfo) public userInfo;

    error AlreadyInitialized();
    error MissingDepositContract();
    error MissingRewardToken();
    error MissingToken();
    error MissingAmount();
    error MissingRewardEmissionPeriod();
    error MissingAllowance(address from, address to, uint256 currentAllowance, uint256 neededAllowance);
    error MissingBalance(address holder, uint256 currentBalance, uint256 neededBalance);
    error InvalidEmissionPeriodStart();
    error RewardTokenRecoveryNotAllowed();
    error OnlyDepositContract(address caller, address depositContract);

    /*
     * @dev reward token
     */
    function rewardToken() external view override returns (address) {
        return reward.rewardToken;
    }

    /*
     * @dev returns the rewardTokenInfo
     */
    function getRewardInfo() external view override returns (RewardTokenInfo memory) {
        return reward;
    }
    
    /*
     * @dev calculates the claimable for user, which is the already reserved + pending rewards for the user
     */
    function claimableForUser(address _user) external view returns (uint256 claimable) {
        claimable = userInfo[_user].reserved + pendingForUser(_user);
    }

    /*
     * @dev transfer all claimable rewards for a user to the user
     */
    function claimForUser(address _user) external returns (uint256 _amount) {
        _onlyDepositContract();
        _reserveForUser(_user);
        _amount = userInfo[_user].reserved;
        address _token = reward.rewardToken;

        // Compute the commission
        uint256 commission = _amount * rewardsCommissionPercentage / MAX_PERCENTAGE;
        userInfo[_user].reserved = 0;
        if(commission > 0) {
            _amount -= commission;
            IERC20(_token).safeTransfer(feeReceiver, commission);
            emit CommissionFromUser(_user, _token, commission);
        }
        if (_amount != 0) {
            IERC20(_token).safeTransfer(_user, _amount);
            emit ClaimedByUser(_user, _token, _amount);
        }
        _updateUserRewardFloor(_user);
    }

    /*
     * @dev function called by the deposit contract whenever the user his share of the rewards changes
     */
    function changeUserShares(address _user, uint256 _newShares) external {
        _onlyDepositContract();
        _reserveForUser(_user); // need to claim and reserve all before changing shares

        totalShares = totalShares + _newShares - userInfo[_user].shares;
        userInfo[_user].shares = _newShares;
        _updateUserRewardFloor(_user);
    }

    /*
     * @dev initialize function to setup cloned instance
     * @notice marked the initialize function as payable, because it costs less gas to execute,
     * since the compiler does not have to add extra checks to ensure that a payment wasn't provided.
     */
    function initialize(
        address _depositContract, 
        address _rewardToken, 
        address _feeReceiver,
        uint256 _rewardsCommissionPercentage) external payable onlyOwner {
        if (depositContract != address(0)) {
            revert AlreadyInitialized();
        }
        if (_depositContract == address(0)) {
            revert MissingDepositContract();
        }
        if (_rewardToken == address(0)) {
            revert MissingRewardToken();
        }

        require(_rewardsCommissionPercentage <= MAX_PERCENTAGE, "Invalid rewards commission percentage");
        require(_feeReceiver != address(0), "Invalid fee receiver address");

        depositContract = _depositContract;
        reward.rewardToken = _rewardToken;

        feeReceiver = _feeReceiver;
        rewardsCommissionPercentage = _rewardsCommissionPercentage;
    }

    /*
     * @dev Add rewards with an emission period to the reward contract
     * When you pass 0 as start of emission then it will take current time
     * You can only re-add rewards when previous reward period has not yet ended
     * or no start of emission is given in the future
     */
    function addRewards(uint256 _totalAmount, uint256 _secondsInPeriod, uint256 _startOfEmission) external onlyOwner {
        RewardTokenInfo memory _reward = reward;
        address _token = _reward.rewardToken;
        if (_totalAmount == 0) {
            revert MissingAmount();
        }
        if (_secondsInPeriod == 0) {
            revert MissingRewardEmissionPeriod();
        }
        uint256 senderAllowance = IERC20(_token).allowance(msg.sender, address(this));
        if (senderAllowance < _totalAmount) {
            revert MissingAllowance(msg.sender, address(this), senderAllowance, _totalAmount);
        }
        uint256 senderBalance = IERC20(_token).balanceOf(msg.sender);
        if (senderBalance < _totalAmount) {
            revert MissingBalance(msg.sender, senderBalance, _totalAmount);
        }
        uint256 amountLeft;
        
        if (_reward.totalAmount != 0) {
            // renew emission
            if (_reward.endOfEmission >= block.timestamp
                && _startOfEmission > block.timestamp) {
                revert InvalidEmissionPeriodStart();
            }
            
            uint256 start = (_reward.lastClaim != 0) ? _reward.lastClaim : _reward.startOfEmission;
            uint256 secondsLeft = (_reward.endOfEmission > block.timestamp 
                                && _reward.endOfEmission > start) ? _reward.endOfEmission - start : 0;
            amountLeft = FixedPointMathLib.fullMulDiv(_reward.totalAmount, secondsLeft, _reward.emissionPeriod);
            _reward.lastClaim = 0;
        }

        _reward.totalAmount = amountLeft + _totalAmount;
        _reward.emissionPeriod = _secondsInPeriod;
        _reward.startOfEmission = (_startOfEmission != 0) ? _startOfEmission : block.timestamp;
        _reward.endOfEmission = _reward.startOfEmission + _secondsInPeriod;
        
        emit UpdatedRewardEmission(_reward.totalAmount, _reward.startOfEmission, _reward.endOfEmission);
        reward = _reward;
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _totalAmount);
    }
    
    /*
     * @dev function to recover unsupported tokens
     */
    function recoverUnsupported(address _token, uint256 amount, address to) external onlyOwner {
        if (_token == address(0)) {
            revert MissingToken();
        }
        if (_token == reward.rewardToken) {
            revert RewardTokenRecoveryNotAllowed();
        }
        IERC20(_token).safeTransfer(to, amount);
    }

    /*
     * @dev calculates the pending total reward (for all users)
     */
    function pendingUnclaimed() public view returns (uint256 pendingRewards) {
        RewardTokenInfo memory _reward = reward;
        if (_reward.lastClaim == block.timestamp) {
            return 0;
        }
        uint256 startOfEmission = _reward.startOfEmission;
        uint256 start = (_reward.lastClaim != 0) ? _reward.lastClaim : startOfEmission;
        if (start < block.timestamp
            && start < _reward.endOfEmission) {
            uint256 elapsed = (block.timestamp < _reward.endOfEmission) 
                              ? block.timestamp - start 
                              : _reward.endOfEmission - start;
            pendingRewards = FixedPointMathLib.fullMulDiv(_reward.totalAmount, elapsed, _reward.emissionPeriod);
        }
    }

    /*
     * @dev calculates the pending reward for a specific user
     */
    function pendingForUser(address _user) public view returns (uint256 pendingRewards) {
        UserInfo memory user = userInfo[_user];
        if (user.shares == 0) return 0;
        uint256 claimable = pendingUnclaimed();
        uint256 _accumulatedRewardsPerShare = accumulatedRewardsPerShare;
        _accumulatedRewardsPerShare += FixedPointMathLib.fullMulDiv(claimable, CLAIMABLE_PRECISION, totalShares);
        pendingRewards = FixedPointMathLib.fullMulDiv(user.shares, 
                                                      _accumulatedRewardsPerShare, 
                                                      CLAIMABLE_PRECISION) 
                         - user.rewardFloor;
    }

    /*
     * @dev gas efficient replacement for a modifier checking only registered reward contract can be the caller
     */
    function _onlyDepositContract() private view {
        if (msg.sender != depositContract) {
            revert OnlyDepositContract(msg.sender, depositContract);
        }
    }

    /*
     * @dev update user reward floor
     */
    function _updateUserRewardFloor(address _user) private {
        userInfo[_user].rewardFloor = FixedPointMathLib.fullMulDiv(userInfo[_user].shares, 
                                                                   accumulatedRewardsPerShare, 
                                                                   CLAIMABLE_PRECISION);
    }

    /*
     * @dev reserves the pending reward for user 
     * (functions as an internal claim to be collected later)
     */
    function _reserveForUser(address _user) private {
        uint256 claimable = pendingUnclaimed();
        uint256 _totalShares = totalShares;
        if (claimable != 0 && _totalShares != 0) {
           reward.lastClaim = block.timestamp;
           balance += claimable;
           accumulatedRewardsPerShare += FixedPointMathLib.fullMulDiv(claimable, CLAIMABLE_PRECISION, _totalShares);
        }
        UserInfo memory user = userInfo[_user];
        if (user.shares == 0) return;
        uint256 pendingRewards = FixedPointMathLib.fullMulDiv(user.shares, 
                                                              accumulatedRewardsPerShare, 
                                                              CLAIMABLE_PRECISION)
                                 - user.rewardFloor;
        if (pendingRewards > 0) {
            balance -= pendingRewards;
            user.reserved += pendingRewards;
            userInfo[_user] = user;
            emit ReservedForUser(_user, reward.rewardToken, pendingRewards);
        }
    }
}
