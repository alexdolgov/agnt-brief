// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./utils/ContractGuard.sol";

contract AVICPool is Ownable, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    
    struct UserInfo {
        uint256 amount; // How many tokens the user has provided.
        uint256 rewardAvicDebt; // Reward debt. See explanation below.
        uint256 rewardChamDebt; // Reward debt. See explanation below.

        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
    }

    struct DistributeSnapshot {
        uint256 time;
        uint256 rewardReceived;
        uint256 rewardPerShare;
    }

    DistributeSnapshot[] public distributeHistory;
    mapping(address => UserInfo) public userInfo;
    mapping(uint256 => uint256) public totalAvicSupplyEpoch;

    uint256 public constant PERIOD = 6 hours;
    uint256 public epoch;

    IERC20 private avicToken;
    IERC20 private chamToken;
    IERC20 private yw30Token;

    uint256 public poolStartTime;
    uint256 public poolEndTime;

    uint256 public constant runningTime = 30 days;
    uint256 public constant TOTAL_AVIC_REWARD = 70000 ether;
    uint256 public constant TOTAL_CHAM_REWARD = 500 ether;
    uint256 public avicTokenPerSecond;
    uint256 public chamTokenPerSecond;
    uint256 private accAvicTokenPerShare = 0;
    uint256 private accChamTokenPerShare = 0;
    uint256 private avicLastRewardTime = 0;
    uint256 private chamLastRewardTime = 0;

    uint256 public emergencyWithdrawFeePercent = 50; // 50%

    address public polWallet;
    address public adminAddress;
    address public operator;

    event Deposit(address indexed _user, uint256 _amount);
    event EmergencyWithdraw(address indexed _user, uint256 _amount);
    event AvicRewardPaid(address indexed _user, uint256 _amount);
    event ChamRewardPaid(address indexed _user, uint256 _amount);
    event Withdraw(address indexed _user, uint256 _amount);
    event SetEmergencyWithdrawFeePercent(uint256 oldValue, uint256 newValue);
    event DistributedReward(address indexed user, uint256 reward);
    event ExtraRewardPaid(address indexed _user, uint256 _amount);

    /* ========== INITIALIZER ========== */
    constructor(
        address _avicToken, 
        address _chamToken,
        address _yw30Token,
        address _polWallet,
        address _adminAddress,
        uint256 _poolStartTime
    ) {
        require(block.timestamp < _poolStartTime, "late");
        require(_avicToken != address(0), "!_avicToken");
        require(_chamToken != address(0), "!_chamToken");
        require(_yw30Token != address(0), "!_yw30Token");
        require(_polWallet != address(0), "!_polWallet");
        require(_adminAddress != address(0), "!_adminAddress");

        operator = msg.sender;
        adminAddress = _adminAddress;
        polWallet = _polWallet;

        avicToken = IERC20(_avicToken);
        chamToken = IERC20(_chamToken);
        yw30Token = IERC20(_yw30Token);

        poolStartTime = _poolStartTime;
        poolEndTime = poolStartTime + runningTime;
        avicLastRewardTime = poolStartTime;
        chamLastRewardTime = poolStartTime;

        avicTokenPerSecond = TOTAL_AVIC_REWARD.div(runningTime);
        chamTokenPerSecond = TOTAL_CHAM_REWARD.div(runningTime);

        DistributeSnapshot memory genesisSnapshot = DistributeSnapshot({time: block.number, rewardReceived: 0, rewardPerShare: 0});
        distributeHistory.push(genesisSnapshot);
    }

    modifier onlyOperator() {
        require(operator == msg.sender, "AVICPool: caller is not the operator");
        _;
    }

    modifier checkEpoch() {
        require(block.timestamp >= nextEpochPoint(), "AVICPool: not opened yet");
        _;
        epoch = epoch.add(1);
    }

    modifier updateExtraReward(address _member) {
        if (_member != address(0)) {
            UserInfo storage user = userInfo[_member];
            user.rewardEarned = earned(_member);
            user.lastSnapshotIndex = latestSnapshotIndex();
            userInfo[_member] = user;
        }
        _;
    }

    // WRITE FUNCTIONS
    function deposit(uint256 _amount) external onlyOneBlock updateExtraReward(msg.sender) {
        address _sender = msg.sender;
        UserInfo storage user = userInfo[_sender];
        updateAvicReward();
        updateChamReward();
        if (user.amount > 0) {
            uint256 pendingAvicReward = user.amount.mul(accAvicTokenPerShare).div(1e18).sub(user.rewardAvicDebt);
            uint256 pendingChamReward = user.amount.mul(accChamTokenPerShare).div(1e18).sub(user.rewardChamDebt);
            if (pendingAvicReward > 0) {
                safeAvicTokenTransfer(_sender, pendingAvicReward);
                emit AvicRewardPaid(_sender, pendingAvicReward);
            }

            if (pendingChamReward > 0) {
                safeChamTokenTransfer(_sender, pendingChamReward);
                emit ChamRewardPaid(_sender, pendingChamReward);
            }
        }

        if (_amount > 0) {
            user.epochTimerStart = epoch; 
            yw30Token.safeTransferFrom(_sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
        }

        user.rewardAvicDebt = user.amount.mul(accAvicTokenPerShare).div(1e18);
        user.rewardChamDebt = user.amount.mul(accChamTokenPerShare).div(1e18);
        emit Deposit(_sender, _amount);
    }

    function withdraw() external onlyOneBlock updateExtraReward(msg.sender) {
        require(block.timestamp > poolEndTime, "AVICPool: locked!");
        address _sender = msg.sender;
        UserInfo storage user = userInfo[_sender];
        uint256 amount = user.amount;
        if (amount > 0) {
            claimExtraReward();
            updateAvicReward();
            updateChamReward();
            uint256 pendingAvicReward = amount.mul(accAvicTokenPerShare).div(1e18).sub(user.rewardAvicDebt);
            uint256 pendingChamReward = amount.mul(accChamTokenPerShare).div(1e18).sub(user.rewardChamDebt);

            if (pendingAvicReward > 0) {
                safeAvicTokenTransfer(_sender, pendingAvicReward);
                emit AvicRewardPaid(_sender, pendingAvicReward);
            }

            if (pendingChamReward > 0) {
                safeChamTokenTransfer(_sender, pendingChamReward);
                emit ChamRewardPaid(_sender, pendingChamReward);
            }

            user.amount = 0;
            user.rewardAvicDebt = 0;
            user.rewardChamDebt = 0;
            yw30Token.safeTransfer(_sender, amount);
        }
        
        emit Withdraw(_sender, amount);
    }
    
    function emergencyWithdraw() external onlyOneBlock updateExtraReward(msg.sender) {
        UserInfo storage user = userInfo[msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardAvicDebt = 0;
        user.rewardChamDebt = 0;
        if (amount > 0) {
            uint256 reward = userInfo[msg.sender].rewardEarned;
            if (reward > 0) {
                userInfo[msg.sender].epochTimerStart = epoch;
                userInfo[msg.sender].rewardEarned = 0;
            }
            uint256 feeAmount = amount.mul(emergencyWithdrawFeePercent).div(100);
            uint256 withdrawAmount = amount.sub(feeAmount);
            yw30Token.safeTransfer(polWallet, feeAmount);
            yw30Token.safeTransfer(msg.sender, withdrawAmount);
        }

        emit EmergencyWithdraw(msg.sender, amount);
    }

    function claimExtraReward() public updateExtraReward(msg.sender) {
        uint256 reward = userInfo[msg.sender].rewardEarned;
        if (reward > 0) {
            userInfo[msg.sender].epochTimerStart = epoch;
            userInfo[msg.sender].rewardEarned = 0;
            avicToken.safeTransfer(msg.sender, reward);
            emit ExtraRewardPaid(msg.sender, reward);
        }
    }

    function claimAvicReward() external onlyOneBlock {
        address _sender = msg.sender;
        UserInfo storage user = userInfo[_sender];
        updateAvicReward();
        uint256 _pending = user.amount.mul(accAvicTokenPerShare).div(1e18).sub(user.rewardAvicDebt);
        if (_pending > 0) {
            safeAvicTokenTransfer(_sender, _pending);
        }

        user.rewardAvicDebt = user.amount.mul(accAvicTokenPerShare).div(1e18);
        emit AvicRewardPaid(_sender, _pending);
    }

    function claimChamReward() external onlyOneBlock {
        address _sender = msg.sender;
        UserInfo storage user = userInfo[_sender];
        updateChamReward();
        uint256 _pending = user.amount.mul(accChamTokenPerShare).div(1e18).sub(user.rewardChamDebt);
        if (_pending > 0) {
            safeChamTokenTransfer(_sender, _pending);
        }

        user.rewardChamDebt = user.amount.mul(accChamTokenPerShare).div(1e18);
        emit ChamRewardPaid(_sender, _pending);
    }

    function updateAvicReward() internal {
        if (block.timestamp <= avicLastRewardTime) {
            return;
        }
        uint256 tokenSupply = yw30Token.balanceOf(address(this));
        if (tokenSupply == 0) {
            avicLastRewardTime = block.timestamp;
            return;
        }

        uint256 _generatedReward = getAvicGeneratedReward(avicLastRewardTime, block.timestamp);
        accAvicTokenPerShare = accAvicTokenPerShare.add(_generatedReward.mul(1e18).div(tokenSupply));
        avicLastRewardTime = block.timestamp;
    }

    function updateChamReward() internal {
        if (block.timestamp <= chamLastRewardTime) {
            return;
        }
        uint256 tokenSupply = yw30Token.balanceOf(address(this));
        if (tokenSupply == 0) {
            chamLastRewardTime = block.timestamp;
            return;
        }

        uint256 _generatedReward = getChamGeneratedReward(chamLastRewardTime, block.timestamp);
        accChamTokenPerShare = accChamTokenPerShare.add(_generatedReward.mul(1e18).div(tokenSupply));
        chamLastRewardTime = block.timestamp;
    }

    function safeAvicTokenTransfer(address _to, uint256 _amount) internal {
        uint256 avicTokenBalance = avicToken.balanceOf(address(this));
        if (avicTokenBalance > 0) {
            if (_amount > avicTokenBalance) {
                avicToken.safeTransfer(_to, avicTokenBalance);
            } else {
                avicToken.safeTransfer(_to, _amount);
            }
        }
    }

    function safeChamTokenTransfer(address _to, uint256 _amount) internal {
        uint256 chamTokenBalance = chamToken.balanceOf(address(this));
        if (chamTokenBalance > 0) {
            if (_amount > chamTokenBalance) {
                chamToken.safeTransfer(_to, chamTokenBalance);
            } else {
                chamToken.safeTransfer(_to, _amount);
            }
        }
    }

    function setEmergencyWithdrawFeePercent(uint256 _value) external onlyOperator {
        require(_value <= 50, 'AVICPool: Max percent is 50%');
        emit SetEmergencyWithdrawFeePercent(emergencyWithdrawFeePercent, _value);
        emergencyWithdrawFeePercent = _value;
    }

    function adminWithdraw(address _token, uint256 _amount) external onlyOperator {
        require(_token == address(avicToken) || _token == address(chamToken), "Only withdraw AVIC, CHAM");
        IERC20(_token).safeTransfer(adminAddress, _amount);
    }

    function distributeExtraReward() external checkEpoch onlyOneBlock {
        require(block.timestamp < poolEndTime, "AVICPool: Pool is ended!");
        if (epoch > 0) {
            uint256 tokenSupply = yw30Token.balanceOf(address(this));
            if (tokenSupply <= 0) return;
            
            uint256 avicAmount = getExtraReward();
            if (avicAmount <= 0) return;
            
            // Create & add new snapshot
            uint256 prevRPS = getLatestSnapshot().rewardPerShare;
            uint256 nextRPS = prevRPS.add(avicAmount.mul(1e18).div(tokenSupply));

            DistributeSnapshot memory newSnapshot = DistributeSnapshot({time: block.number, rewardReceived: avicAmount, rewardPerShare: nextRPS});
            distributeHistory.push(newSnapshot);

            emit DistributedReward(msg.sender, avicAmount);
        }
    }

    function updateTotalAvicSupplyEpoch() external {
        require(block.timestamp < nextEpochPoint(), "AVICPool: set before epoch start");
        totalAvicSupplyEpoch[epoch] = avicToken.totalSupply();
    }

    // READ FUNCTIONS
    function getAvicGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;
            if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(avicTokenPerSecond);
            return poolEndTime.sub(_fromTime).mul(avicTokenPerSecond);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(avicTokenPerSecond);
            return _toTime.sub(_fromTime).mul(avicTokenPerSecond);
        }
    }

    function getChamGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;
            if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(chamTokenPerSecond);
            return poolEndTime.sub(_fromTime).mul(chamTokenPerSecond);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(chamTokenPerSecond);
            return _toTime.sub(_fromTime).mul(chamTokenPerSecond);
        }
    }

    function pendingAvic(address _user) external view returns (uint256) {
        UserInfo storage user = userInfo[_user];
        uint256 accTokenPerShare = accAvicTokenPerShare;
        uint256 tokenSupply = yw30Token.balanceOf(address(this));
        if (block.timestamp > avicLastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getAvicGeneratedReward(avicLastRewardTime, block.timestamp);
            accTokenPerShare = accTokenPerShare.add(_generatedReward.mul(1e18).div(tokenSupply));
        }

        return user.amount.mul(accTokenPerShare).div(1e18).sub(user.rewardAvicDebt);
    }

    function pendingCham(address _user) external view returns (uint256) {
        UserInfo storage user = userInfo[_user];
        uint256 accTokenPerShare = accChamTokenPerShare;
        uint256 tokenSupply = yw30Token.balanceOf(address(this));
        if (block.timestamp > chamLastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getChamGeneratedReward(chamLastRewardTime, block.timestamp);
            accTokenPerShare = accTokenPerShare.add(_generatedReward.mul(1e18).div(tokenSupply));
        }

        return user.amount.mul(accTokenPerShare).div(1e18).sub(user.rewardChamDebt);
    }

    function nextEpochPoint() public view returns (uint256) {
        return poolStartTime.add(epoch.mul(PERIOD));
    }

    function getLatestSnapshot() internal view returns (DistributeSnapshot memory) {
        return distributeHistory[latestSnapshotIndex()];
    }

    function latestSnapshotIndex() public view returns (uint256) {
        return distributeHistory.length.sub(1);
    }

    function earned(address _member) public view returns (uint256) {
        uint256 latestRPS = getLatestSnapshot().rewardPerShare;
        uint256 storedRPS = getLastSnapshotOf(_member).rewardPerShare;

        return userInfo[_member].amount.mul(latestRPS.sub(storedRPS)).div(1e18).add(userInfo[_member].rewardEarned);
    }

    function getLastSnapshotIndexOf(address _member) public view returns (uint256) {
        return userInfo[_member].lastSnapshotIndex;
    }

    function getLastSnapshotOf(address _member) internal view returns (DistributeSnapshot memory) {
        return distributeHistory[getLastSnapshotIndexOf(_member)];
    }

    function getExtraReward() public view returns (uint256) {
        if (epoch == 0) return 0;

        uint256 totalAvicSupplyCurrentEpoch = totalAvicSupplyEpoch[epoch];
        uint256 totalAvicSupplyPrevEpoch = totalAvicSupplyEpoch[epoch - 1];
        if (totalAvicSupplyPrevEpoch == 0 || totalAvicSupplyPrevEpoch > totalAvicSupplyCurrentEpoch) return 0;

        return totalAvicSupplyCurrentEpoch.sub(totalAvicSupplyPrevEpoch).mul(10).div(100);
    }
}