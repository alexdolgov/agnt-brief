// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../utils/ContractGuard.sol";
import "../interfaces/IBasisAsset.sol";
import "../interfaces/ITreasuryV2.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ShareWrapper {
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
}

contract UVICBoardroom is ShareWrapper, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /* ========== DATA STRUCTURES ========== */

    struct Memberseat {
        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
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
    ITreasuryV2 public treasury;

    mapping(address => Memberseat) public members;
    BoardroomSnapshot[] public boardroomHistory;

    uint256 public withdrawLockupEpochs;
    uint256 public rewardLockupEpochs;

    uint256 public rewardTokenPriceCeiling;
    uint256 public rewardTokenPriceOne;

    uint256[] public supplyTiers = [45000 ether, 500000 ether, 1000000 ether, 1500000 ether, 2000000 ether];
    uint256[] public maxExpansionTiers = [450, 400, 350, 300, 250];
    
    uint256[] public expansionTiersTwaps;
    uint256[] public expansionTiersRates = [4000, 7000, 10000];

    uint256 public minTokenToExpansion = 2025 ether;
    uint256 public minTokenSupplyToExpansion = 45000 ether;

    uint256 private constant minPercentExpansionTier = 0; // 0%
    uint256 private constant maxPercentExpansionTier = 1000; // 10%

    uint256 public totalEpochAbovePeg = 0;
    uint256 public totalEpochUnderPeg = 0;

    /* ========== EVENTS ========== */

    event Initialized(address indexed executor, uint256 at);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardAdded(address indexed user, uint256 reward);
    event SetOperator(address indexed account, address newOperator);
    event SetWithdrawLockupEpoch(uint256 oldValue, uint256 newValue);
    event SetRewardLockupEpoch(uint256 oldValue, uint256 newValue);
    event SetRewardTokenPriceCeiling(uint256 oldValue, uint256 newValue);
    event SetSupplyTiersEntry(uint8 _index, uint256 _value);
    event SetMaxExpansionTiersEntry(uint8 _index, uint256 _value);
    event SetExpansionTiersTwaps(uint8 _index, uint256 _value);
    event SetExpansionTiersRates(uint8 _index, uint256 _value);
    event SetMinTokenToExpansion(uint256 oldValue, uint256 newValue);
    event SetMinTokenSupplyToExpansion(uint256 oldValue, uint256 newValue);

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
        address _treasury
    ) external notInitialized {
        require(_rewardToken != address(0), "!_rewardToken");
        require(_stakeToken != address(0), "!_stakeToken");
        require(_treasury != address(0), "!_treasury");
        rewardToken = IERC20(_rewardToken);
        stakeToken = IERC20(_stakeToken);
        treasury = ITreasuryV2(_treasury);

        BoardroomSnapshot memory genesisSnapshot = BoardroomSnapshot({time: block.number, rewardReceived: 0, rewardPerShare: 0});
        boardroomHistory.push(genesisSnapshot);

        withdrawLockupEpochs = 6; // Lock for 6 epochs (36h) before release withdraw
        rewardLockupEpochs = 3; // Lock for 3 epochs (18h) before release claimReward

        uint256 stableDecimal = treasury.getStableDecimals();
        rewardTokenPriceOne = 10**stableDecimal;
        rewardTokenPriceCeiling = rewardTokenPriceOne.mul(101).div(100);
        expansionTiersTwaps = [0, rewardTokenPriceOne.mul(150).div(100), rewardTokenPriceOne.mul(200).div(100)];

        initialized = true;
        operator = msg.sender;
        admin = msg.sender;
        emit Initialized(msg.sender, block.number);
    }

    function setWithdrawLockupEpoch(uint256 _value) external onlyOperator {
        require(_value <= 10, "Boardroom: Max value is 10");
        emit SetWithdrawLockupEpoch(withdrawLockupEpochs, _value);
        withdrawLockupEpochs = _value;
    }

    function setRewardLockupEpoch(uint256 _value) external onlyOperator {
        require(_value <= 5, "Boardroom: Max value is 5");
        emit SetRewardLockupEpoch(rewardLockupEpochs, _value);
        rewardLockupEpochs = _value;
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

    function canClaimReward(address member) external view returns (bool) {
        return members[member].epochTimerStart.add(rewardLockupEpochs) <= treasury.epoch();
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
        super.stake(amount);
        uint256 epochTimerStart = treasury.epoch();
        if (epochTimerStart <= 0) {
            epochTimerStart = 1;
        }
        members[msg.sender].epochTimerStart = epochTimerStart; // reset timer
        emit Staked(msg.sender, amount);
    }

    function withdraw(uint256 amount) public override onlyOneBlock memberExists updateReward(msg.sender) {
        require(amount > 0, "Boardroom: Cannot withdraw 0");
        require(members[msg.sender].epochTimerStart.add(withdrawLockupEpochs) <= treasury.epoch(), "Boardroom: still in withdraw lockup");
        claimReward();
        super.withdraw(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function exit() external {
        withdraw(balanceOf(msg.sender));
    }

    function claimReward() public updateReward(msg.sender) {
        uint256 reward = members[msg.sender].rewardEarned;
        if (reward > 0) {
            require(members[msg.sender].epochTimerStart.add(rewardLockupEpochs) <= treasury.epoch(), "Boardroom: still in reward lockup");
            members[msg.sender].epochTimerStart = treasury.epoch(); // reset timer
            members[msg.sender].rewardEarned = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
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

    function countEpoch(uint256 _tokenPrice) external onlyOperator {
        if (_tokenPrice > rewardTokenPriceCeiling) {
            totalEpochAbovePeg = totalEpochAbovePeg.add(1);
        } else if (_tokenPrice < rewardTokenPriceCeiling) {
            totalEpochUnderPeg = totalEpochUnderPeg.add(1);
        }
    }

    function setRewardTokenPriceCeiling(uint256 _rewardTokenPriceCeiling) external onlyAdmin {
        require(_rewardTokenPriceCeiling >= rewardTokenPriceOne && _rewardTokenPriceCeiling <= rewardTokenPriceOne.mul(120).div(100), "out of range"); // [1.0, 1.2]
        emit SetRewardTokenPriceCeiling(rewardTokenPriceCeiling, _rewardTokenPriceCeiling);
        rewardTokenPriceCeiling = _rewardTokenPriceCeiling;
    }

    function setSupplyTiersEntry(uint8 _index, uint256 _value) external onlyAdmin returns (bool) {
        require(_index < supplyTiers.length, "Index has to be lower than count of tiers");
        if (_index > 0) {
            require(_value > supplyTiers[_index - 1], "supplyTiers[i] has to be lower than supplyTiers[i + 1]");
        }
        if (_index < supplyTiers.length - 1) {
            require(_value < supplyTiers[_index + 1], "supplyTiers[i] has to be lower than supplyTiers[i + 1]");
        }
        supplyTiers[_index] = _value;
        emit SetSupplyTiersEntry(_index, _value);
        return true;
    }

    function setMaxExpansionTiersEntry(uint8 _index, uint256 _value) external onlyAdmin returns (bool) {
        require(_index < maxExpansionTiers.length, "Index has to be lower than count of tiers");
        require(_value >= minPercentExpansionTier && _value <= maxPercentExpansionTier, "_value: out of range"); // [0%, 10%]
        maxExpansionTiers[_index] = _value;
        emit SetMaxExpansionTiersEntry(_index, _value);
        return true;
    }

    function setExpansionTiersTwaps(uint8 _index, uint256 _value) external onlyAdmin returns (bool) {
        uint256 expansionTiersTwapsLength = expansionTiersTwaps.length;
        require(_index < expansionTiersTwapsLength, "Index has to be lower than count of tiers");
        if (_index > 0) {
            require(_value > expansionTiersTwaps[_index - 1], "expansionTiersTwaps[i] has to be lower than expansionTiersTwaps[i + 1]");
        }
        if (_index < expansionTiersTwapsLength - 1) {
            require(_value < expansionTiersTwaps[_index + 1], "expansionTiersTwaps[i] has to be lower than expansionTiersTwaps[i + 1]");
        }
        expansionTiersTwaps[_index] = _value;
        emit SetExpansionTiersTwaps(_index, _value);
        return true;
    }

    function setExpansionTiersRates(uint8 _index, uint256 _value) external onlyAdmin returns (bool) {
        require(_index < expansionTiersRates.length, "Index has to be lower than count of tiers");
        require(_value <= 10000, "_value: out of range"); // [_value < 100%]
        expansionTiersRates[_index] = _value;
        emit SetExpansionTiersRates(_index, _value);
        return true;
    }

    function setMinTokenToExpansion(uint256 _value) external onlyAdmin {
        emit SetMinTokenToExpansion(minTokenToExpansion, _value);
        minTokenToExpansion = _value;
    }

    function setMinTokenSupplyToExpansion(uint256 _value) external onlyAdmin {
        emit SetMinTokenSupplyToExpansion(minTokenSupplyToExpansion, _value);
        minTokenSupplyToExpansion = _value;
    }

    function calculateMaxSupplyExpansionPercent(uint256 _rewardTokenSupply) public view returns (uint256) {
        if (_rewardTokenSupply < minTokenSupplyToExpansion) {
            return 0;
        }
        uint256 maxSupplyExpansionPercent;
        uint256 supplyTierLength = supplyTiers.length;
        uint256 maxExpansionTiersLength = maxExpansionTiers.length;
        require(supplyTierLength == maxExpansionTiersLength, "SupplyTier data invalid");

        for (uint256 tierId = supplyTierLength - 1; tierId >= 0; --tierId) {
            if (_rewardTokenSupply >= supplyTiers[tierId]) {
                maxSupplyExpansionPercent = maxExpansionTiers[tierId];
                break;
            }
        }
        
        return maxSupplyExpansionPercent;
    }

    function calculateExpansionRate(uint256 _tokenPrice) public view returns (uint256) {
        uint256 expansionRate;
        uint256 expansionTiersTwapsLength = expansionTiersTwaps.length;
        uint256 expansionTiersRatesLength = expansionTiersRates.length;
        require(expansionTiersTwapsLength == expansionTiersRatesLength, "ExpansionTiers data invalid");

        for (uint256 tierId = expansionTiersTwapsLength - 1; tierId >= 0; --tierId) {
            if (_tokenPrice >= expansionTiersTwaps[tierId]) {
                expansionRate = expansionTiersRates[tierId];
                break;
            }
        }
        
        return expansionRate;
    }

    function calculateEstimateReward(uint256 _tokenPrice) public view returns (uint256) {
        uint256 rewardTokenTotalSupply = rewardToken.totalSupply();
        uint256 totalReward = minTokenToExpansion;
        if (rewardTokenTotalSupply >= minTokenSupplyToExpansion) {
            uint256 _percentage = calculateMaxSupplyExpansionPercent(rewardTokenTotalSupply);
            totalReward = rewardTokenTotalSupply.mul(_percentage).div(10000);
        }

        if (totalReward > 0) {
            uint256 expansionRate = calculateExpansionRate(_tokenPrice);
            totalReward = totalReward.mul(expansionRate).div(10000);
            if (totalReward < minTokenToExpansion) {
                totalReward = minTokenToExpansion;
            }
        }

        return totalReward;
    }

    function calculateReward(uint256 _tokenPrice) external view returns (uint256) {
        if (_tokenPrice < rewardTokenPriceCeiling)
            return 0;
        return calculateEstimateReward(_tokenPrice);
    }
}