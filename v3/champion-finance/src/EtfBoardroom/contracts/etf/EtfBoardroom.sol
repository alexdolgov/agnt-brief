// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../utils/ContractGuard.sol";
import "../interfaces/IBasisAsset.sol";
import "../interfaces/ITreasury.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ShareWrapperEtf {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    IERC20 public stakeToken;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function stake(uint256 amount) public virtual {
        _totalSupply = _totalSupply.add(amount);
        _balances[msg.sender] = _balances[msg.sender].add(amount);
        stakeToken.safeTransferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint256 amount) public virtual {
        uint256 memberShare = _balances[msg.sender];
        require(memberShare >= amount, "Boardroom: withdraw request greater than staked amount");
        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = memberShare.sub(amount);
        stakeToken.safeTransfer(msg.sender, amount);
    }

    function withdrawWithTax(uint256 amount, uint256 taxRate, address polFund) internal {
        uint256 memberShare = _balances[msg.sender];
        require(memberShare >= amount, "Boardroom: withdraw request greater than staked amount");
        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = memberShare.sub(amount);

        if (taxRate > 0) {
            uint256 taxAmount = amount.mul(taxRate).div(1000000);
            stakeToken.safeTransfer(polFund, taxAmount);
            amount = amount.sub(taxAmount);
        }

        stakeToken.safeTransfer(msg.sender, amount);
    }
}

contract EtfBoardroom is ShareWrapperEtf, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /* ========== DATA STRUCTURES ========== */

    struct Memberseat {
        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
        uint256 rewardDebt;
    }

    struct BoardroomSnapshot {
        uint256 time;
        uint256 rewardReceived;
        uint256 rewardPerShare;
    }

    /* ========== STATE VARIABLES ========== */

    // governance
    address public operator;
    address public admin;

    // flags
    bool public initialized;

    IERC20 public rewardToken;
    ITreasury public treasury;
    IERC20 public aoeaToken;

    mapping(address => Memberseat) public members;
    BoardroomSnapshot[] public boardroomHistory;

    uint256 public stakeFeePercent = 0;
    uint256 public withdrawFeePercent = 0;
    uint256 public withdrawLockupEpochs = 20;
    uint256 public emergencyWithdrawRatio = 5000; // 0.5%

    uint256 public additionalRewardLastRewardTime;
    uint256 public accAOEATokenPerShare;
    uint256 public additionalRewardPoolEndTime = 0;
    uint256 public additionalRewardPoolStartTime = 0;
    uint256 public aoeaTokenPerSecondForUser = 0;
    uint256 public additionalRewardAllocPoint = 0;

    /* ========== EVENTS ========== */

    event Initialized(address indexed executor, uint256 at);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardAdded(address indexed user, uint256 reward);
    event SetOperator(address indexed account, address newOperator);
    event EmergencyWithdraw(address indexed _user, uint256 _amount);
    event SetStakeFeePercent(uint256 oldValue, uint256 newValue);
    event SetWithdrawFeePercent(uint256 oldValue, uint256 newValue);
    event SetWithdrawLockupEpoch(uint256 oldValue, uint256 newValue);
    event SetEmergencyWithdrawRatio(uint256 oldValue, uint256 newValue);

    /* ========== Modifiers =============== */

    modifier onlyOperator() {
        require(operator == msg.sender, "Boardroom: caller is not the operator");
        _;
    }

    modifier onlyAdmin() {
        require(admin == msg.sender, "Boardroom: caller is not the admin");
        _;
    }

    modifier memberExists() {
        require(balanceOf(msg.sender) > 0, "Boardroom: The member does not exist");
        _;
    }

    modifier updateReward(address member) {
        if (member != address(0)) {
            Memberseat memory seat = members[member];
            seat.rewardEarned = earned(member);
            seat.lastSnapshotIndex = latestSnapshotIndex();
            members[member] = seat;
        }
        _;
    }

    modifier notInitialized() {
        require(!initialized, "Boardroom: already initialized");
        _;
    }

    constructor() {
        initialized = false;
    }

    /* ========== GOVERNANCE ========== */
    function initialize(
        address _rewardToken,
        address _stakeToken,
        address _treasury,
        address _aoeaToken
    ) external notInitialized {
        require(_rewardToken != address(0), "!_rewardToken");
        require(_stakeToken != address(0), "!_stakeToken");
        require(_treasury != address(0), "!_treasury");
        require(_aoeaToken != address(0), "!_aoeaToken");
        rewardToken = IERC20(_rewardToken);
        stakeToken = IERC20(_stakeToken);
        treasury = ITreasury(_treasury);
        aoeaToken = IERC20(_aoeaToken);

        BoardroomSnapshot memory genesisSnapshot = BoardroomSnapshot({time: block.number, rewardReceived: 0, rewardPerShare: 0});
        boardroomHistory.push(genesisSnapshot);

        additionalRewardPoolEndTime = treasury.additionalRewardPoolEndTime();
        additionalRewardPoolStartTime = treasury.additionalRewardPoolStartTime();

        aoeaTokenPerSecondForUser = treasury.aoeaTokenPerSecondForUser();
        
        initialized = true;
        operator = msg.sender;
        admin = msg.sender;
        emit Initialized(msg.sender, block.number);
    }

    function setOperator(address _operator) external onlyOperator {
        operator = _operator;
        emit SetOperator(msg.sender, _operator);
    }

    /* ========== VIEW FUNCTIONS ========== */

    // =========== Snapshot getters

    function latestSnapshotIndex() public view returns (uint256) {
        return boardroomHistory.length.sub(1);
    }

    function getLatestSnapshot() internal view returns (BoardroomSnapshot memory) {
        return boardroomHistory[latestSnapshotIndex()];
    }

    function getLastSnapshotIndexOf(address member) public view returns (uint256) {
        return members[member].lastSnapshotIndex;
    }

    function getLastSnapshotOf(address member) internal view returns (BoardroomSnapshot memory) {
        return boardroomHistory[getLastSnapshotIndexOf(member)];
    }

    function canWithdraw(address member) external view returns (bool) {
        return members[member].epochTimerStart.add(withdrawLockupEpochs) <= treasury.epoch();
    }

    function epoch() external view returns (uint256) {
        return treasury.epoch();
    }

    function nextEpochPoint() external view returns (uint256) {
        return treasury.nextEpochPoint();
    }

    function getMainTokenPrice() external view returns (uint256) {
        return treasury.getMainTokenPrice();
    }

    // =========== Member getters

    function rewardPerShare() external view returns (uint256) {
        return getLatestSnapshot().rewardPerShare;
    }

    function earned(address member) public view returns (uint256) {
        uint256 latestRPS = getLatestSnapshot().rewardPerShare;
        uint256 storedRPS = getLastSnapshotOf(member).rewardPerShare;

        return balanceOf(member).mul(latestRPS.sub(storedRPS)).div(1e18).add(members[member].rewardEarned);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(uint256 amount) public override onlyOneBlock updateReward(msg.sender) {
        require(amount > 0, "Boardroom: Cannot stake 0");
        if (stakeFeePercent > 0) {
            uint256 feeAmount = amount.mul(stakeFeePercent).div(10000);
            address polFund = treasury.polWallet();
            stakeToken.safeTransferFrom(msg.sender, polFund, feeAmount);
            amount = amount.sub(feeAmount);
        }

        // additional reward
        updatePool();
        uint256 userAmount = balanceOf(msg.sender);
        if (userAmount > 0) {
            uint256 _pending = userAmount.mul(accAOEATokenPerShare).div(1e18).sub(members[msg.sender].rewardDebt);
            if (_pending > 0) {
                safeAdditionalRewardTokenTransfer(msg.sender, _pending);
                emit RewardPaid(msg.sender, _pending);
            }
        }

        super.stake(amount);
        
        uint256 epochTimerStart = treasury.epoch();
        if (epochTimerStart <= 0) {
            epochTimerStart = 1;
        }

        members[msg.sender].epochTimerStart = epochTimerStart; // reset timer
        members[msg.sender].rewardDebt = balanceOf(msg.sender).mul(accAOEATokenPerShare).div(1e18);

        emit Staked(msg.sender, amount);
    }

    function withdraw(uint256 amount) public override onlyOneBlock memberExists updateReward(msg.sender) {
        require(amount > 0, "Boardroom: Cannot withdraw 0");
        require(members[msg.sender].epochTimerStart.add(withdrawLockupEpochs) <= treasury.epoch(), "Boardroom: still in withdraw lockup");
        claimReward();

        // additional reward
        updatePool();
        uint256 userAmount = balanceOf(msg.sender);
        uint256 _pending = userAmount.mul(accAOEATokenPerShare).div(1e18).sub(members[msg.sender].rewardDebt);
        if (_pending > 0) {
            safeAdditionalRewardTokenTransfer(msg.sender, _pending);
            emit RewardPaid(msg.sender, _pending);
        }

        if (withdrawFeePercent > 0) {
            address polFund = treasury.polWallet();
            super.withdrawWithTax(amount, withdrawFeePercent, polFund);
        } else {
            super.withdraw(amount);
        }

        members[msg.sender].rewardDebt = balanceOf(msg.sender).mul(accAOEATokenPerShare).div(1e18);
        emit Withdrawn(msg.sender, amount);
    }

    function exit() external {
        withdraw(balanceOf(msg.sender));
    }

    function claimReward() public updateReward(msg.sender) {
        uint256 reward = members[msg.sender].rewardEarned;
        if (reward > 0) {
            members[msg.sender].epochTimerStart = treasury.epoch(); // reset timer
            members[msg.sender].rewardEarned = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    function claimAdditionalReward() public {
        updatePool();
        uint256 userAmount = balanceOf(msg.sender);
        uint256 _pending = userAmount.mul(accAOEATokenPerShare).div(1e18).sub(members[msg.sender].rewardDebt);
        if (_pending > 0) {
            safeAdditionalRewardTokenTransfer(msg.sender, _pending);
            emit RewardPaid(msg.sender, _pending);
        }

        members[msg.sender].rewardDebt = balanceOf(msg.sender).mul(accAOEATokenPerShare).div(1e18);
    }

    function emergencyWithdraw() external onlyOneBlock {
        address member = msg.sender;
        uint256 reward = members[member].rewardEarned;
        members[member].rewardEarned = 0;
        address polFund = treasury.polWallet();
        if (reward > 0) {
            rewardToken.safeTransfer(polFund, reward);
        }

        uint256 amount = balanceOf(member);
        if (amount > 0) {
            uint256 taxRate = calculateTaxRate(member);
            if (treasury.enabledEmergencyWithdrawTax() && taxRate > 0) {
                super.withdrawWithTax(amount, taxRate, polFund);
            } else {
                super.withdraw(amount);
            }

            members[msg.sender].rewardDebt = 0;
        }

        members[member].epochTimerStart = treasury.epoch();
        emit EmergencyWithdraw(msg.sender, amount);
    }

    function allocateSeigniorage(uint256 amount) external onlyOneBlock onlyOperator {
        require(amount > 0, "Boardroom: Cannot allocate 0");
        require(totalSupply() > 0, "Boardroom: Cannot allocate when totalSupply is 0");

        // Create & add new snapshot
        uint256 prevRPS = getLatestSnapshot().rewardPerShare;
        uint256 nextRPS = prevRPS.add(amount.mul(1e18).div(totalSupply()));

        BoardroomSnapshot memory newSnapshot = BoardroomSnapshot({time: block.number, rewardReceived: amount, rewardPerShare: nextRPS});
        boardroomHistory.push(newSnapshot);

        rewardToken.safeTransferFrom(msg.sender, address(this), amount);
        emit RewardAdded(msg.sender, amount);
    }

    function calculateTaxRate(address member) public view returns (uint256) {
        uint256 remainingEpochLock = getRemainingEpochLock(member);
        uint256 taxRate = remainingEpochLock.mul(emergencyWithdrawRatio).div(4); // emergencyWithdrawRatio% * (remainingDayLock)
        return taxRate;
    }

    function getRemainingEpochLock(address member) public view returns (uint256) {
        return members[member].epochTimerStart.add(withdrawLockupEpochs).sub(treasury.epoch());
    }

    function pending(address _user) external view returns (uint256) {
        uint256 _accAOEATokenPerShare = accAOEATokenPerShare;
        uint256 totalPoolStaked = totalSupply();
        uint256 additionalRewardTotalAllocPoint = treasury.additionalRewardTotalAllocPoint();
        if (additionalRewardTotalAllocPoint == 0) return 0;
        if (block.timestamp > additionalRewardLastRewardTime && totalPoolStaked != 0) {
            uint256 _generatedReward = getGeneratedReward(additionalRewardLastRewardTime, block.timestamp);
            uint256 _aoeaTokenReward = _generatedReward.mul(additionalRewardAllocPoint).div(additionalRewardTotalAllocPoint);
            _accAOEATokenPerShare = _accAOEATokenPerShare.add(_aoeaTokenReward.mul(1e18).div(totalPoolStaked));
        }

        uint256 pendingUser = balanceOf(_user).mul(_accAOEATokenPerShare).div(1e18).sub(members[_user].rewardDebt);
        return pendingUser;
    }

    function getGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= additionalRewardPoolEndTime) {
            if (_fromTime >= additionalRewardPoolEndTime) return 0;
            if (_fromTime <= additionalRewardPoolStartTime) return additionalRewardPoolEndTime.sub(additionalRewardPoolStartTime).mul(aoeaTokenPerSecondForUser);
            return additionalRewardPoolEndTime.sub(_fromTime).mul(aoeaTokenPerSecondForUser);
        } else {
            if (_toTime <= additionalRewardPoolStartTime) return 0;
            if (_fromTime <= additionalRewardPoolStartTime) return _toTime.sub(additionalRewardPoolStartTime).mul(aoeaTokenPerSecondForUser);
            return _toTime.sub(_fromTime).mul(aoeaTokenPerSecondForUser);
        }
    }

    function safeAdditionalRewardTokenTransfer(address _to, uint256 _amount) internal {
        uint256 _rewardTokenBalance = aoeaToken.balanceOf(address(treasury));
        if (_rewardTokenBalance > 0) {
            if (_amount > _rewardTokenBalance) {
                aoeaToken.safeTransferFrom(address(treasury), _to, _rewardTokenBalance);
            } else {
                aoeaToken.safeTransferFrom(address(treasury), _to, _amount);
            }
        }
    }

    // SET FUNCTION
    function massUpdatePools() external onlyOperator {
        updatePool();
    }

    function updatePool() internal {
        if (block.timestamp <= additionalRewardLastRewardTime) {
            return;
        }
        uint256 tokenSupply = totalSupply();
        if (tokenSupply == 0) {
            additionalRewardLastRewardTime = block.timestamp;
            return;
        }
        uint256 additionalRewardTotalAllocPoint = treasury.additionalRewardTotalAllocPoint();
        if (additionalRewardTotalAllocPoint > 0) {
            uint256 _generatedReward = getGeneratedReward(additionalRewardLastRewardTime, block.timestamp);
            uint256 _aoeaTokenReward = _generatedReward.mul(additionalRewardAllocPoint).div(additionalRewardTotalAllocPoint);
            accAOEATokenPerShare = accAOEATokenPerShare.add(_aoeaTokenReward.mul(1e18).div(tokenSupply));
        }

        additionalRewardLastRewardTime = block.timestamp;
    }

    function setStakeFeePercent(uint256 _value) external onlyAdmin {
        require(_value <= 100, 'Boardroom: Max percent is 1%');
        emit SetStakeFeePercent(stakeFeePercent, _value);
        stakeFeePercent = _value;
    }

    function setWithdrawFeePercent(uint256 _value) external onlyAdmin {
        require(_value <= 10000, 'Boardroom: Max percent is 1%');
        emit SetWithdrawFeePercent(withdrawFeePercent, _value);
        withdrawFeePercent = _value;
    }

    function setWithdrawLockupEpoch(uint256 _value) external onlyAdmin {
        require(_value <= 56, "Boardroom: Max value is 56 (14 days)");
        emit SetWithdrawLockupEpoch(withdrawLockupEpochs, _value);
        withdrawLockupEpochs = _value;
    }

    function setEmergencyWithdrawRatio(uint256 _value) external onlyAdmin {
        require(_value <= 5000, 'Boardroom: Max ratio is 0.5');
        emit SetEmergencyWithdrawRatio(emergencyWithdrawRatio, _value);
        emergencyWithdrawRatio = _value;
    }

    function setAdditionalRewardAllocPoint(uint256 _value) external onlyOperator {
        additionalRewardAllocPoint = _value;
        updatePool();
    }
}