// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

error NotOwner();
error NotLaunched();
error AlreadyRegistered();
error InvalidUsername();
error UsernameTaken();
error ReferrerNotFound();
error CannotSelfRefer();
error ReferrerNotQualified();
error MustRegisterFirst();
error BelowMinimum();
error MaxPositions();
error NotRegistered();
error NoRewards();
error InsufficientBalance();
error TransferFailed();
error InvalidPlan();
error DepositNotMatured();
error InvalidAddress();
error UserAlreadyRegistered();
error UplineNotRegistered();
error ArrayMismatch();
error EmptyBatch();
error NoActiveDeposits();

interface INonfungiblePositionManager {
    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }
    
    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }
    
    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }
    
    function increaseLiquidity(IncreaseLiquidityParams calldata params) external payable returns (uint128 liquidity, uint256 amount0, uint256 amount1);
    function decreaseLiquidity(DecreaseLiquidityParams calldata params) external payable returns (uint256 amount0, uint256 amount1);
    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);
    function positions(uint256 tokenId) external view returns (
        uint96 nonce,
        address operator,
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint256 feeGrowthInside0LastX128,
        uint256 feeGrowthInside1LastX128,
        uint128 tokensOwed0,
        uint128 tokensOwed1
    );
}

abstract contract Ownable {
    address private _owner;

    event OwnershipRenounced(address indexed previousOwner);
    
    constructor() {
        _owner = msg.sender;
    }
    
    function owner() public view returns (address) {
        return _owner;
    }
    
    modifier onlyOwner() {
        if(_owner != msg.sender) revert NotOwner();
        _;
    }
    
    function renounceOwnership() public onlyOwner {
        emit OwnershipRenounced(_owner);
        _owner = address(0);
    }
}

contract TURBOLOOP is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    
    IERC20 private immutable USDT;
    INonfungiblePositionManager private immutable positionManager;
    
    uint256 private immutable lpPositionId;
    bool public immutable usdtIsToken0;
    
    uint256 public launchDate;
    
    uint256 private constant MINIMUM_DEPOSIT = 1 ether; 
    uint256 private constant MINIMUM_WITHDRAW = 1 ether; 
    uint256 private constant MINIMUM_COMPOUND = 1 ether; 
    uint256 private constant REFERRAL_QUALIFICATION = 25 ether;
    uint16 private constant MAX_POSITIONS = 400;
    uint256 private constant SERVICE_FEE_PCT = 600;
    uint256 private constant PERCENTS_DIVIDER = 10000;
    uint256 public constant TIME_STEP = 1 days;
    
    uint8 private constant MAX_UPLINE_DEPTH = 100;
    uint8 private constant REFERRAL_DEPTH = 20;
    uint256 private constant MAX_LEADERSHIP_PCT = 1000; 
    
    uint256 private constant USDT_TO_LIQUIDITY_RATE = 21556434736483412668;
    
    struct PlanConfig {
        uint256 duration;
        uint256 totalROI;
    }
    
    PlanConfig[4] public plans;
    
    uint256[20] private REFERRAL_REWARDS = [
        1200, 800, 500, 400, 300, 200, 200, 200, 150, 150, 
        100, 100, 100, 100, 100, 100, 100, 100, 100, 100
    ];
    
    struct LevelRequirement {
        uint8 minDirects;
        uint256 minSelfAUM;
    }
    
    mapping(uint8 => LevelRequirement) public levelRequirements;
    
    struct RankConfig {
        uint256 rewardPct;
        uint32 teamCountNeeded;
        uint256 teamActiveDepositNeeded;
    }
    
    RankConfig[7] public ranks;
    
    struct Deposit {
        uint256 amount;
        uint256 startTime;
        uint256 lastRewardCalculation;
        uint256 calculatedROI;
        uint8 planId;
        bool claimed;
    }
    
    struct User {
        address referrer;
        string username;
        bool registered;
        uint256 userId;
        uint256 totalActiveDeposit;
        uint256 teamActiveDeposit;
        uint256 teamTotalDeposit;
        uint256 teamTotalCompound;
        uint256 totalDeposited;
        uint256 totalWithdrawn;
        uint256 totalCompounded;
        Deposit[] deposits;
    }
    
    struct UserExtra {
        uint256 networkRewardAvailable;
        uint256 dailyRewardReserve;
        uint256 totalReferralReward;
        uint256 totalROIEarned;
        uint256 totalLeadershipReward;
        uint32 teamCount;
        uint32 directsCount;
        uint32 qualifiedDirects; 
        uint8 currentRank;
        uint256 lastCalculationTime;
    }
    
    mapping(address => User) public users;
    mapping(address => UserExtra) public usersExtra;
    mapping(string => address) public usernameToAddress;
    mapping(string => bool) public usernameExists;
    mapping(uint256 => address) public userIdToAddress;
    mapping(uint256 => bool) public dailyRewardDayCompleted;
    mapping(uint256 => uint256) public dailyRewardUsersProcessed;
    mapping(uint256 => uint256) public dailyRewardTotalROI;
    mapping(address => mapping(uint8 => uint32)) public levelDownlineCount;
    mapping(address => mapping(uint8 => uint256)) public levelReferralEarned;
    
    uint256 public totalRegisteredUsers;
    uint256 public totalActiveUsers;
    uint256 private totalDeposited;
    uint256 private totalWithdrawn;
    uint256 public nextUserId;
    uint256 public dailyRewardCurrentDay;
    uint256 public dailyRewardLastProcessedUserId;

    address public constant SERVICE_FEE_WALLET = 0xC8D2701882A9A629e9a9332950Fef78EE4FFD9A9;
    

    event Registration(address indexed user, string username, address indexed referrer, string uplineUsername, uint256 timestamp);
    event Deposited(address indexed user, uint256 amount, uint8 planId, uint256 timestamp);
    event Claimed(address indexed user, uint256 amount, uint256 timestamp);
    event Compounded(address indexed user, uint256 amount, uint8 planId, uint256 timestamp);
    event ReferralReward(address indexed upline, address indexed downline, uint8 level, uint256 amount, uint256 timestamp);
    event LeadershipReward(address indexed upline, address indexed downline, uint8 rank, uint256 amount, uint256 timestamp);
    event RankUpgraded(address indexed user, uint8 newRank, uint256 timestamp);
    event DailyCalculationExecuted(address indexed user, uint256 referralReward, uint256 leadershipReward, uint256 timestamp);
    event DailyRewardsBatchProcessed(uint256 indexed day);
    
    constructor(uint256 _lpPositionId) {
        USDT = IERC20(0x55d398326f99059fF775485246999027B3197955);
        positionManager = INonfungiblePositionManager(0x46A15B0b27311cedF172AB29E4f4766fbE7F4364);
        
        lpPositionId = _lpPositionId;
        usdtIsToken0 = true;

        plans[0] = PlanConfig(7, 300);
        plans[1] = PlanConfig(14, 1000);
        plans[2] = PlanConfig(30, 2400);
        plans[3] = PlanConfig(60, 5400);
        
        levelRequirements[0] = LevelRequirement(1, 100 ether);
        levelRequirements[1] = LevelRequirement(2, 100 ether);
        levelRequirements[2] = LevelRequirement(3, 100 ether);
        levelRequirements[3] = LevelRequirement(3, 100 ether);
        levelRequirements[4] = LevelRequirement(3, 150 ether);
        levelRequirements[5] = LevelRequirement(3, 150 ether);
        levelRequirements[6] = LevelRequirement(3, 200 ether);
        levelRequirements[7] = LevelRequirement(5, 200 ether);
        levelRequirements[8] = LevelRequirement(5, 250 ether);
        levelRequirements[9] = LevelRequirement(5, 250 ether); 
        levelRequirements[10] = LevelRequirement(7, 300 ether);
        levelRequirements[11] = LevelRequirement(7, 300 ether);
        levelRequirements[12] = LevelRequirement(7, 350 ether);
        levelRequirements[13] = LevelRequirement(7, 350 ether);
        levelRequirements[14] = LevelRequirement(7, 400 ether);
        levelRequirements[15] = LevelRequirement(7, 400 ether);
        levelRequirements[16] = LevelRequirement(7, 450 ether);
        levelRequirements[17] = LevelRequirement(7, 450 ether);
        levelRequirements[18] = LevelRequirement(7, 500 ether);
        levelRequirements[19] = LevelRequirement(7, 500 ether);
        
        ranks[0] = RankConfig(100, 250, 10000 ether);   
        ranks[1] = RankConfig(200, 500, 25000 ether);   
        ranks[2] = RankConfig(300, 1000, 50000 ether);
        ranks[3] = RankConfig(400, 2500, 100000 ether);
        ranks[4] = RankConfig(600, 5000, 200000 ether);
        ranks[5] = RankConfig(800, 7500, 500000 ether);
        ranks[6] = RankConfig(1000, 10000, 1000000 ether);

        launchDate = 1773147600; // March 10, 2026 1:00 PM UTC

        nextUserId = 1;
        string memory ownerUsername = "TurboLoop";
        User storage ownerUser = users[SERVICE_FEE_WALLET];
        ownerUser.username = ownerUsername;
        ownerUser.referrer = address(0);
        ownerUser.registered = true;
        ownerUser.userId = nextUserId;
        
        userIdToAddress[nextUserId] = SERVICE_FEE_WALLET;
        nextUserId++;
        
        usernameToAddress[ownerUsername] = SERVICE_FEE_WALLET;
        usernameExists[ownerUsername] = true;
        
        totalRegisteredUsers++;
    }
    
    
    function register(string memory username, string memory referrerUsername) external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        if(users[msg.sender].registered) revert AlreadyRegistered();
        if(!_isValidUsername(username)) revert InvalidUsername();
        if(usernameExists[username]) revert UsernameTaken();
        
        address referrerAddr = usernameToAddress[referrerUsername];
        
        if(referrerAddr != SERVICE_FEE_WALLET) {
            if(referrerAddr == address(0)) revert ReferrerNotFound();
            if(referrerAddr == msg.sender) revert CannotSelfRefer();
            if(!users[referrerAddr].registered) revert ReferrerNotQualified();
            if(_getQualificationDeposit(referrerAddr) < REFERRAL_QUALIFICATION) revert ReferrerNotQualified();
        }
        
        User storage user = users[msg.sender];
        user.username = username;
        user.referrer = referrerAddr;
        user.registered = true;
        user.userId = nextUserId;
        
        userIdToAddress[nextUserId] = msg.sender;
        nextUserId++;
        
        usernameToAddress[username] = msg.sender;
        usernameExists[username] = true;
        
        totalRegisteredUsers++;
        
        emit Registration(msg.sender, username, referrerAddr, referrerUsername, block.timestamp);
    }
    
    function deposit(uint256 amount, uint8 planId) external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        if(amount < MINIMUM_DEPOSIT) revert BelowMinimum();
        if(planId >= 4) revert InvalidPlan();
        
        User storage user = users[msg.sender];
        if(!user.registered) revert MustRegisterFirst();
        if(user.deposits.length >= MAX_POSITIONS) revert MaxPositions();
        
        bool isFirstDeposit = (user.totalDeposited == 0);
        
        USDT.safeTransferFrom(msg.sender, address(this), amount);
        
        uint256 actualUsed = _addLiquidityToPool(amount);
        
        uint256 serviceFee = (actualUsed * SERVICE_FEE_PCT) / PERCENTS_DIVIDER;
        _withdrawFromPool(serviceFee, SERVICE_FEE_WALLET);

        user.deposits.push(Deposit({
            amount: actualUsed,
            startTime: block.timestamp,
            lastRewardCalculation: block.timestamp,
            calculatedROI: 0,
            planId: planId,
            claimed: false
        }));
        
        user.totalDeposited += actualUsed;
        user.totalActiveDeposit += actualUsed;
        
        totalDeposited += actualUsed;
        
        _updateTeamActiveDeposit(msg.sender, actualUsed, true, false);
        
        if(isFirstDeposit) {
            _updateTeamCounters(msg.sender);
            totalActiveUsers++;
        }
        
        emit Deposited(msg.sender, actualUsed, planId, block.timestamp);
    }
    
    function claimRewards(uint256 amount) external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        
        User storage user = users[msg.sender];
        UserExtra storage userExtra = usersExtra[msg.sender];
        if(!user.registered) revert NotRegistered();
        
        _calculateAndProcessDailyRewards(msg.sender);
        
        uint256 dailyAvailable = userExtra.dailyRewardReserve;
        uint256 networkAvailable = userExtra.networkRewardAvailable;
        uint256 totalAvailable = dailyAvailable + networkAvailable;
        
        if(totalAvailable == 0) revert NoRewards();
        
        if(amount == 0) {
            amount = totalAvailable;
        }
        
        if(amount > totalAvailable) revert InsufficientBalance();
        if(amount < MINIMUM_WITHDRAW) revert BelowMinimum();
        
        uint256 remaining = amount;
        
        if(dailyAvailable > 0 && remaining > 0) {
            if(remaining >= dailyAvailable) {
                remaining -= dailyAvailable;
                userExtra.dailyRewardReserve = 0;
            } else {
                userExtra.dailyRewardReserve -= remaining;
                remaining = 0;
            }
        }
        
        if(networkAvailable > 0 && remaining > 0) {
            if(remaining >= networkAvailable) {
                userExtra.networkRewardAvailable = 0;
            } else {
                userExtra.networkRewardAvailable -= remaining;
            }
            remaining = 0;
        }
        
        _withdrawFromPool(amount, msg.sender);
        
        user.totalWithdrawn += amount;
        totalWithdrawn += amount;
        
        emit Claimed(msg.sender, amount, block.timestamp);
    }
    
    function compoundRewards(uint256 amount, uint8 planId) external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        if(planId >= 4) revert InvalidPlan();
        
        User storage user = users[msg.sender];
        UserExtra storage userExtra = usersExtra[msg.sender];
        if(!user.registered) revert NotRegistered();
        if(user.deposits.length >= MAX_POSITIONS) revert MaxPositions();

        _calculateAndProcessDailyRewards(msg.sender);
        
        uint256 dailyAvailable = userExtra.dailyRewardReserve;
        uint256 networkAvailable = userExtra.networkRewardAvailable;
        uint256 totalAvailable = dailyAvailable + networkAvailable;
        
        if(totalAvailable == 0) revert NoRewards();
        
        if(amount == 0) {
            amount = totalAvailable;
        }
        
        if(amount > totalAvailable) revert InsufficientBalance();
        if(amount < MINIMUM_COMPOUND) revert BelowMinimum();
        
        uint256 remaining = amount;
        
        if(dailyAvailable > 0 && remaining > 0) {
            if(remaining >= dailyAvailable) {
                remaining -= dailyAvailable;
                userExtra.dailyRewardReserve = 0;
            } else {
                userExtra.dailyRewardReserve -= remaining;
                remaining = 0;
            }
        }
        
        if(networkAvailable > 0 && remaining > 0) {
            if(remaining >= networkAvailable) {
                userExtra.networkRewardAvailable = 0;
            } else {
                userExtra.networkRewardAvailable -= remaining;
            }
            remaining = 0;
        }

        uint256 serviceFee = (amount * SERVICE_FEE_PCT) / PERCENTS_DIVIDER;
        _withdrawFromPool(serviceFee, SERVICE_FEE_WALLET);
        
        user.deposits.push(Deposit({
            amount: amount,
            startTime: block.timestamp,
            lastRewardCalculation: block.timestamp,
            calculatedROI: 0,
            planId: planId,
            claimed: false
        }));
        
        user.totalCompounded += amount;
        user.totalActiveDeposit += amount;
        
        _updateTeamActiveDeposit(msg.sender, amount, true, true);
        
        emit Compounded(msg.sender, amount, planId, block.timestamp);
    }
    
    function calculateDailyRewards(uint256 length) external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        require(length > 0, "Length must be greater than 0");
        
        uint256 currentDay = (block.timestamp - launchDate) / TIME_STEP;
        if(currentDay == 0) return;
        
        if(dailyRewardCurrentDay == 0 || dailyRewardDayCompleted[dailyRewardCurrentDay]) {
            for(uint256 day = dailyRewardCurrentDay; day < currentDay; day++) {
                if(!dailyRewardDayCompleted[day]) {
                    dailyRewardCurrentDay = day;
                    dailyRewardLastProcessedUserId = 0;
                    break;
                }
            }
        }
        
        if(dailyRewardDayCompleted[dailyRewardCurrentDay]) {
            return;
        }
        
        uint256 processed = 0;
        uint256 startUserId = dailyRewardLastProcessedUserId == 0 ? 1 : dailyRewardLastProcessedUserId;
        uint256 processingDay = dailyRewardCurrentDay;
        
        uint256 dayEndTime = launchDate + ((processingDay + 1) * TIME_STEP);
        if(dayEndTime > block.timestamp) dayEndTime = block.timestamp;
        
        for(uint256 userId = startUserId; userId < nextUserId && processed < length; userId++) {
            address userAddr = userIdToAddress[userId];
            User storage user = users[userAddr];
            UserExtra storage userExtra = usersExtra[userAddr];
            
            if(!user.registered) {
                processed++;
                continue;
            }
            
            if(userExtra.lastCalculationTime >= dayEndTime) {
                processed++;
                continue;
            }
            
            uint256 userTotalROI = 0;
            
            for(uint256 i = 0; i < user.deposits.length; i++) {
                if(!user.deposits[i].claimed) {
                    uint256 planDuration = plans[user.deposits[i].planId].duration;
                    uint256 endTime = user.deposits[i].startTime + (planDuration * TIME_STEP);
                    uint256 lastCheckpoint = user.deposits[i].lastRewardCalculation;
                    
                    if(lastCheckpoint < endTime) {
                        uint256 calcUntil = dayEndTime < endTime ? dayEndTime : endTime;

                        if(calcUntil <= lastCheckpoint) continue;

                        uint256 timeElapsed = calcUntil - lastCheckpoint;
                        
                        if(timeElapsed > 0) {
                            uint256 roiEarned = (user.deposits[i].amount * plans[user.deposits[i].planId].totalROI * timeElapsed) / (PERCENTS_DIVIDER * planDuration * TIME_STEP);
                            userTotalROI += roiEarned;
                            
                            user.deposits[i].lastRewardCalculation = calcUntil;
                            user.deposits[i].calculatedROI += roiEarned;
                        }
                    }
                }
            }
            
            if(userTotalROI > 0) {
                _processReferralRewards(userAddr, userTotalROI);
                _processLeadershipRewards(userAddr, userTotalROI);
                dailyRewardTotalROI[processingDay] += userTotalROI;
            }
            
            userExtra.lastCalculationTime = dayEndTime;
            processed++;
            dailyRewardUsersProcessed[processingDay]++;
            
            emit DailyCalculationExecuted(userAddr, userTotalROI, 0, block.timestamp);
        }
        
        dailyRewardLastProcessedUserId = startUserId + processed;
        
        if(dailyRewardLastProcessedUserId >= nextUserId) {
            dailyRewardDayCompleted[processingDay] = true;
            if(dailyRewardTotalROI[processingDay] > 0) {
                uint256 serviceFee = (dailyRewardTotalROI[processingDay] * SERVICE_FEE_PCT) / PERCENTS_DIVIDER;
                _withdrawFromPool(serviceFee, SERVICE_FEE_WALLET);
            }
            dailyRewardLastProcessedUserId = 0;
        }
        
        emit DailyRewardsBatchProcessed(processingDay);
    }
    
    function processMyDailyRewards() external nonReentrant {
        if(launchDate == 0 || block.timestamp < launchDate) revert NotLaunched();
        if(!users[msg.sender].registered) revert NotRegistered();
        
        UserExtra storage userExtra = usersExtra[msg.sender];

        if(userExtra.lastCalculationTime >= block.timestamp) return;
        
        uint256 currentDay = (block.timestamp - launchDate) / TIME_STEP;
        uint256 startDay = userExtra.lastCalculationTime == 0
            ? 0
            : (userExtra.lastCalculationTime - launchDate) / TIME_STEP;
        
        uint256 totalAllDaysROI = 0;
        
        for(uint256 day = startDay; day <= currentDay; day++) {
            uint256 dayEndTime = launchDate + ((day + 1) * TIME_STEP);
            if(dayEndTime > block.timestamp) dayEndTime = block.timestamp;
            
            if(userExtra.lastCalculationTime >= dayEndTime) continue;
            
            uint256 dayROI = _processUserDayRewards(msg.sender, dayEndTime);
            totalAllDaysROI += dayROI;
            
            userExtra.lastCalculationTime = dayEndTime;
            emit DailyCalculationExecuted(msg.sender, dayROI, 0, block.timestamp);
        }
        
        if(totalAllDaysROI > 0) {
            _processReferralRewards(msg.sender, totalAllDaysROI);
            _processLeadershipRewards(msg.sender, totalAllDaysROI);        

            uint256 serviceFee = (totalAllDaysROI * SERVICE_FEE_PCT) / PERCENTS_DIVIDER;
            _withdrawFromPool(serviceFee, SERVICE_FEE_WALLET);
        }
    }
    
    function _processUserDayRewards(address userAddr, uint256 dayEndTime) internal returns (uint256 totalROI) {
        User storage user = users[userAddr];
        
        for(uint256 i = 0; i < user.deposits.length; i++) {
            if(!user.deposits[i].claimed) {
                uint256 duration = plans[user.deposits[i].planId].duration;
                uint256 endTime = user.deposits[i].startTime + (duration * TIME_STEP);
                
                if(user.deposits[i].lastRewardCalculation < endTime) {
                    uint256 calcUntil = dayEndTime < endTime ? dayEndTime : endTime;

                    if(calcUntil <= user.deposits[i].lastRewardCalculation) continue;

                    uint256 elapsed = calcUntil - user.deposits[i].lastRewardCalculation;
                    
                    if(elapsed > 0) {
                        uint256 roi = (user.deposits[i].amount * plans[user.deposits[i].planId].totalROI * elapsed) / (PERCENTS_DIVIDER * duration * TIME_STEP);
                        totalROI += roi;
                        user.deposits[i].lastRewardCalculation = calcUntil;
                        user.deposits[i].calculatedROI += roi;
                    }
                }
                
                if(dayEndTime >= endTime) {
                    uint256 expected = (user.deposits[i].amount * plans[user.deposits[i].planId].totalROI) / PERCENTS_DIVIDER;
                    if(user.deposits[i].calculatedROI < expected) {
                        uint256 remaining = expected - user.deposits[i].calculatedROI;
                        totalROI += remaining;
                        user.deposits[i].calculatedROI = expected;
                    }
                }
            }
        }
    }
    
    function _calculateAndProcessDailyRewards(address userAddr) internal returns (uint256 totalProfit) {
        User storage user = users[userAddr];
        UserExtra storage userExtra = usersExtra[userAddr];
        uint256 totalExpiredAmount = 0;
        uint256 remainDailyROI = 0;
        totalProfit = 0;
        
        for(uint256 i = 0; i < user.deposits.length; i++) {
            if(!user.deposits[i].claimed) {
                uint256 endTime = user.deposits[i].startTime + (plans[user.deposits[i].planId].duration * TIME_STEP);
                if(block.timestamp >= endTime) {
                    uint256 profit = user.deposits[i].amount + ((user.deposits[i].amount * plans[user.deposits[i].planId].totalROI) / PERCENTS_DIVIDER);
                    
                    uint256 totalROI = (user.deposits[i].amount * plans[user.deposits[i].planId].totalROI) / PERCENTS_DIVIDER;
                    if(totalROI > user.deposits[i].calculatedROI){
                        remainDailyROI += (totalROI - user.deposits[i].calculatedROI);
                    }

                    
                    
                    user.deposits[i].claimed = true;
                    
                    if(user.totalActiveDeposit >= user.deposits[i].amount) {
                        user.totalActiveDeposit -= user.deposits[i].amount;
                        totalExpiredAmount += user.deposits[i].amount;
                    }

                    userExtra.totalROIEarned += totalROI;
                    userExtra.dailyRewardReserve += profit;
                    totalProfit += profit;
                }
            }
        }

        if (totalExpiredAmount > 0) {
            _updateTeamActiveDeposit(userAddr, totalExpiredAmount, false, false);
        }
        if(remainDailyROI > 0){
            _processReferralRewards(userAddr, remainDailyROI);
            _processLeadershipRewards(userAddr, remainDailyROI);

            uint256 serviceFee = (remainDailyROI * SERVICE_FEE_PCT) / PERCENTS_DIVIDER;
            _withdrawFromPool(serviceFee, SERVICE_FEE_WALLET);
        }
        
        return totalProfit;
    }
    
    function _getAvailableROI(address userAddr) internal view returns (uint256 total) {
        User storage user = users[userAddr];
        UserExtra storage userExtra = usersExtra[userAddr];
        
        total = userExtra.dailyRewardReserve;
        
        for(uint256 i = 0; i < user.deposits.length; i++) {
            if(!user.deposits[i].claimed) {
                uint256 endTime = user.deposits[i].startTime + (plans[user.deposits[i].planId].duration * TIME_STEP);
                if(block.timestamp >= endTime) {
                    total += user.deposits[i].amount + ((user.deposits[i].amount * plans[user.deposits[i].planId].totalROI) / PERCENTS_DIVIDER);
                }
            }
        }
        
        return total;
    }
    
    function _processReferralRewards(address userAddr, uint256 dailyROI) internal {
        address current = users[userAddr].referrer;
        
        for(uint8 level = 0; level < REFERRAL_DEPTH && current != address(0); level++) {
            UserExtra storage uplineExtra = usersExtra[current];
            
            if(_isLevelUnlocked(current, level)) {
                uint256 reward = (dailyROI * REFERRAL_REWARDS[level]) / PERCENTS_DIVIDER;
                uplineExtra.networkRewardAvailable += reward;
                uplineExtra.totalReferralReward += reward;
                levelReferralEarned[current][level] += reward;
                
                emit ReferralReward(current, userAddr, level + 1, reward, block.timestamp);
            }
            
            current = users[current].referrer;
        }
    }
    
    function _processLeadershipRewards(address userAddr, uint256 dailyROI) internal {
        address current = users[userAddr].referrer;
        uint256 highestPctPaid = 0;
        
        for(uint8 depth = 0; depth < MAX_UPLINE_DEPTH && current != address(0); depth++) {
            User storage upline = users[current];
            UserExtra storage uplineExtra = usersExtra[current];
            
            uint8 currentRank = uplineExtra.currentRank;
            uint256 rankPct = 0;
            

            if(uplineExtra.teamCount >= ranks[currentRank].teamCountNeeded &&
               upline.teamActiveDeposit >= ranks[currentRank].teamActiveDepositNeeded) {
                rankPct = ranks[currentRank].rewardPct;
            }
            
            if(rankPct > highestPctPaid) {
                uint256 diff = rankPct - highestPctPaid;
                uint256 reward = (dailyROI * diff) / PERCENTS_DIVIDER;
                
                uplineExtra.networkRewardAvailable += reward;
                uplineExtra.totalLeadershipReward += reward;
                
                emit LeadershipReward(current, userAddr, currentRank, reward, block.timestamp);
                
                highestPctPaid = rankPct;
            }
            
            if(highestPctPaid >= MAX_LEADERSHIP_PCT) break;
            
            current = upline.referrer;
        }
    }
    
    function _isLevelUnlocked(address userAddr, uint8 level) internal view returns (bool) {
        if(level >= REFERRAL_DEPTH) return false;
        
        UserExtra storage userExtra = usersExtra[userAddr];
        LevelRequirement memory req = levelRequirements[level];
        
        return (userExtra.qualifiedDirects >= req.minDirects && 
                _getQualificationDeposit(userAddr) >= req.minSelfAUM);
    }
    
    function _updateTeamCounters(address userAddr) internal {
        address current = users[userAddr].referrer;
        
        if(current != address(0)) {
            usersExtra[current].directsCount++;
        }
        
        uint8 depth = 0;
        while(current != address(0) && depth < MAX_UPLINE_DEPTH) {
            usersExtra[current].teamCount++;
            
            if(depth < REFERRAL_DEPTH) {
                levelDownlineCount[current][depth]++;
            }
            
            _updateRank(current);
            
            current = users[current].referrer;
            depth++;
        }
    }
    
    function _updateTeamActiveDeposit(address userAddr, uint256 amount, bool isAdding, bool isCompound) internal {
        address current = users[userAddr].referrer;
        
        if(current != address(0)) {
            UserExtra storage sponsorExtra = usersExtra[current];
            uint256 userActive = users[userAddr].totalActiveDeposit;
            
            if(isAdding) {
                if(userActive >= REFERRAL_QUALIFICATION && 
                   userActive - amount < REFERRAL_QUALIFICATION) {
                    sponsorExtra.qualifiedDirects++;
                }
            } else {
                if(userActive < REFERRAL_QUALIFICATION && 
                   userActive + amount >= REFERRAL_QUALIFICATION) {
                    if(sponsorExtra.qualifiedDirects > 0) {
                        sponsorExtra.qualifiedDirects--;
                    }
                }
            }
        }
        
        uint8 depth = 0;
        while(current != address(0) && depth < MAX_UPLINE_DEPTH) {
            if(isAdding) {
                users[current].teamActiveDeposit += amount;
                if(isCompound) {
                    users[current].teamTotalCompound += amount;
                }else{
                    users[current].teamTotalDeposit += amount;
                }
            } else {
                if(users[current].teamActiveDeposit >= amount) {
                    users[current].teamActiveDeposit -= amount;
                } else {
                    users[current].teamActiveDeposit = 0;
                }
            }
            
            _updateRank(current);
            
            current = users[current].referrer;
            depth++;
        }
    }
    
    function _updateRank(address userAddr) internal {
        User storage user = users[userAddr];
        UserExtra storage userExtra = usersExtra[userAddr];
        uint8 newRank = userExtra.currentRank;
        
        for (uint8 i = 6; ; i--) {
            if (userExtra.teamCount >= ranks[i].teamCountNeeded &&
                user.teamActiveDeposit >= ranks[i].teamActiveDepositNeeded) {
                newRank = i;
                break;
            }
            if (i == 0) break;
        }
        
        if (newRank != userExtra.currentRank) {
            userExtra.currentRank = newRank;
            emit RankUpgraded(userAddr, newRank, block.timestamp);
        }
    }
    
    function _addLiquidityToPool(uint256 usdtAmount) internal returns (uint256 actualUsed) {
        if(usdtAmount == 0) return 0;
        
        USDT.forceApprove(address(positionManager), usdtAmount);
        
        uint256 amount0Desired = usdtIsToken0 ? usdtAmount : 0;
        uint256 amount1Desired = usdtIsToken0 ? 0 : usdtAmount;
        
        uint256 amount0Min = (amount0Desired * 99) / 100;
        uint256 amount1Min = (amount1Desired * 99) / 100;
        
        (, uint256 amount0Used, uint256 amount1Used) = positionManager.increaseLiquidity(
            INonfungiblePositionManager.IncreaseLiquidityParams({
                tokenId: lpPositionId,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: block.timestamp + 300
            })
        );
        
        actualUsed = usdtIsToken0 ? amount0Used : amount1Used;
        
        if(usdtAmount > actualUsed) {
            uint256 refund = usdtAmount - actualUsed;
            USDT.safeTransfer(msg.sender, refund);
        }
        
        return actualUsed;
    }
    
    function _withdrawFromPool(uint256 amountNeeded, address recipient) internal {
        if(amountNeeded == 0) return;
        
        (,,,,,,,uint128 liquidity,,,uint128 tokensOwed0, uint128 tokensOwed1) = positionManager.positions(lpPositionId);
        
        uint128 usdtOwed = usdtIsToken0 ? tokensOwed0 : tokensOwed1;
        
        if(usdtOwed < amountNeeded) {
            uint256 deficit = amountNeeded - usdtOwed;
            uint256 liquidityNeeded = (deficit * USDT_TO_LIQUIDITY_RATE) / 1 ether;
            uint128 liquidityToRemove = uint128(liquidityNeeded);
            
            if(liquidityToRemove == 0) liquidityToRemove = 1;
            require(liquidityToRemove <= liquidity, "Insufficient LP liquidity");
            
            positionManager.decreaseLiquidity(
                INonfungiblePositionManager.DecreaseLiquidityParams({
                    tokenId: lpPositionId,
                    liquidity: liquidityToRemove,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: block.timestamp + 300
                })
            );
        }
        
        positionManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: lpPositionId,
                recipient: recipient,
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
    }
    
    function _getQualificationDeposit(address userAddr) internal view returns (uint256) {
        User storage user = users[userAddr];
        return user.deposits.length >= MAX_POSITIONS ? user.totalDeposited : user.totalActiveDeposit;
    }
    
    function _isValidUsername(string memory username) internal pure returns (bool) {
        bytes memory b = bytes(username);
        if(b.length < 3 || b.length > 20) return false;
        
        for(uint256 i = 0; i < b.length; i++) {
            bytes1 char = b[i];
            if(!(char >= 0x30 && char <= 0x39) &&  // 0-9
               !(char >= 0x41 && char <= 0x5A) &&  // A-Z
               !(char >= 0x61 && char <= 0x7A))    // a-z
            {
                return false;
            }
        }
        return true;
    }
    
    // View functions
    
    function getUserInfoExtra(address userAddr) external view returns (uint256 realActiveDeposit, uint256 activeDepositsCount, uint8 rank) {
        User storage user = users[userAddr];
        UserExtra storage userExtra = usersExtra[userAddr];
        Deposit[] storage deposits = user.deposits;
        for(uint256 i = 0; i < deposits.length; i++) {
            if(deposits[i].claimed) continue;
            uint256 endTime = deposits[i].startTime + (plans[deposits[i].planId].duration * TIME_STEP);
            if(block.timestamp >= endTime) continue;
            realActiveDeposit += deposits[i].amount;
            activeDepositsCount++;
        }
        return (realActiveDeposit, activeDepositsCount, userExtra.currentRank);
    }
    
    function getUserInfo(address userAddr) external view returns (
        string memory username,
        address referrer,
        bool registered,
        uint256 _totalActiveDeposit,
        uint256 _totalDeposited,
        uint256 _totalWithdrawn,
        uint256 _totalCompounded
    ) {
        User storage user = users[userAddr];
        
        return (
            user.username,
            user.referrer,
            user.registered,
            user.totalActiveDeposit,
            user.totalDeposited,
            user.totalWithdrawn,
            user.totalCompounded
        );
    }
    
    function getUserTeamInfo(address userAddr) external view returns (
        uint256 teamActiveDeposit,
        uint256 teamTotalDeposit,
        uint32 teamCount,
        uint32 directsCount,
        uint32 qualifiedDirects,
        uint8 currentRank
    ) {
        User storage user = users[userAddr];
        UserExtra storage userExtra = usersExtra[userAddr];
        
        return (
            user.teamActiveDeposit,
            user.teamTotalDeposit,
            userExtra.teamCount,
            userExtra.directsCount,
            userExtra.qualifiedDirects,
            userExtra.currentRank
        );
    }
    
    function getDepositInfo(address userAddr, uint256 index) external view returns (
        uint256 amount,
        uint256 startTime,
        uint256 endTime,
        uint8 planId,
        bool claimed,
        bool isMatured,
        uint256 expectedROI,
        uint256 generatedROI
    ) {
        User storage user = users[userAddr];
        require(index < user.deposits.length, "Invalid index");
        
        Deposit storage dep = user.deposits[index];
        uint256 planDuration = plans[dep.planId].duration;
        uint256 _endTime = dep.startTime + (planDuration * TIME_STEP);
        uint256 roi = (dep.amount * plans[dep.planId].totalROI) / PERCENTS_DIVIDER;
        
        uint256 calcUntil = block.timestamp > _endTime ? _endTime : block.timestamp;
        uint256 timeElapsed = calcUntil > dep.startTime ? calcUntil - dep.startTime : 0;
        uint256 _generatedROI = timeElapsed > 0 ? (dep.amount * plans[dep.planId].totalROI * timeElapsed) / (PERCENTS_DIVIDER * planDuration * TIME_STEP) : 0;
        
        return (
            dep.amount,
            dep.startTime,
            _endTime,
            dep.planId,
            dep.claimed,
            block.timestamp >= _endTime,
            roi,
            _generatedROI
        );
    }
    
    function getLevelDownlines(address userAddr) external view returns (uint32[20] memory downlines) {
        for(uint8 i = 0; i < 20; i++) {
            downlines[i] = levelDownlineCount[userAddr][i];
        }
        return downlines;
    }
    
    function getLevelEarnings(address userAddr) external view returns (uint256[20] memory earnings) {
        for(uint8 i = 0; i < 20; i++) {
            earnings[i] = levelReferralEarned[userAddr][i];
        }
        return earnings;
    }
    
    function getAvailableRewards(address userAddr) external view returns (
        uint256 totalAvailable,
        uint256 dailyROIAvailable,
        uint256 dailyReserve,
        uint256 networkAvailable,
        uint256 totalReferral,
        uint256 totalLeadership
    ) {
        UserExtra storage userExtra = usersExtra[userAddr];
        uint256 dailyAvailable = _getAvailableROI(userAddr);
        uint256 netAvailable = userExtra.networkRewardAvailable;
        
        return (
            dailyAvailable + netAvailable,
            dailyAvailable,
            userExtra.dailyRewardReserve,
            userExtra.networkRewardAvailable,
            userExtra.totalReferralReward,
            userExtra.totalLeadershipReward
        );
    }
    
    function getDepositCount(address userAddr) external view returns (uint256) {
        return users[userAddr].deposits.length;
    }
    
    function getPlanInfo(uint8 planId) external view returns (uint256 duration, uint256 totalROI) {
        require(planId < 4, "Invalid plan");
        return (plans[planId].duration, plans[planId].totalROI);
    }
    
    function getRankInfo(uint8 rankIndex) external view returns (
        uint256 rewardPct,
        uint32 teamCountNeeded,
        uint256 teamActiveDepositNeeded
    ) {
        require(rankIndex < 7, "Invalid rank");
        RankConfig memory rank = ranks[rankIndex];
        return (rank.rewardPct, rank.teamCountNeeded, rank.teamActiveDepositNeeded);
    }
    
    function isValidUsername(string memory username) external view returns (bool) {
        if(!_isValidUsername(username)) return false;
        if(usernameExists[username]) return false;
        return true;
    }
    
    function getDailyRewardStatus() external view returns (
        uint256 currentDay,
        uint256 processingDay,
        uint256 lastProcessedUserId,
        uint256 totalUsers,
        uint256 remainingUsers
    ) {
        currentDay = (block.timestamp - launchDate) / TIME_STEP;
        processingDay = dailyRewardCurrentDay;
        lastProcessedUserId = dailyRewardLastProcessedUserId;
        totalUsers = nextUserId > 0 ? nextUserId - 1 : 0;
        uint256 firstUserId = lastProcessedUserId == 0 ? 1 : lastProcessedUserId;
        remainingUsers = nextUserId > firstUserId ? nextUserId - firstUserId : 0;
        
        return (currentDay, processingDay, lastProcessedUserId, totalUsers, remainingUsers);
    }
    
    function needsDailyRewardCalculation() external view returns (bool needCall, uint256 remainingUsers) {
        if(launchDate == 0 || block.timestamp < launchDate) return (false, 0);
        
        uint256 currentDay = (block.timestamp - launchDate) / TIME_STEP;
        if(currentDay == 0) return (false, 0);
        
        uint256 processingDay = dailyRewardCurrentDay;
        uint256 lastProcessed = dailyRewardLastProcessedUserId;
        
        if(processingDay == 0 || dailyRewardDayCompleted[processingDay]) {
            for(uint256 day = processingDay; day < currentDay; day++) {
                if(!dailyRewardDayCompleted[day]) {
                    processingDay = day;
                    lastProcessed = 0;
                    break;
                }
            }
        }
        
        if(dailyRewardDayCompleted[processingDay]) return (false, 0);
        
        uint256 firstUserId = lastProcessed == 0 ? 1 : lastProcessed;
        remainingUsers = nextUserId > firstUserId ? nextUserId - firstUserId : 0;
        return (remainingUsers > 0, remainingUsers);
    }
    
    function getDayInfo(uint256 day) external view returns (
        bool completed,
        uint256 usersProcessed,
        uint256 totalROI
    ) {
        return (
            dailyRewardDayCompleted[day],
            dailyRewardUsersProcessed[day],
            dailyRewardTotalROI[day]
        );
    }
    
    function isValidReferrer(string memory referrerUsername, address userAddr) external view returns (bool) {
        address referrerAddr = usernameToAddress[referrerUsername];
        
        if(referrerAddr == SERVICE_FEE_WALLET) return true;
        if(referrerAddr == address(0)) return false;
        if(referrerAddr == userAddr) return false;
        if(!users[referrerAddr].registered) return false;
        if(_getQualificationDeposit(referrerAddr) < REFERRAL_QUALIFICATION) return false;
        
        return true;
    }
    
    function getContractStats() external view returns (
        uint256 _totalRegisteredUsers,
        uint256 _totalActiveUsers,
        uint256 _launchDate
    ) {
        return (
            totalRegisteredUsers,
            totalActiveUsers,
            launchDate
        );
    }
}