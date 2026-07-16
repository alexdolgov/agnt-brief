// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface IEtherVistaFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);
    function routerSetter() external view returns (address);
    function router() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
    function setRouterSetter(address) external;
    function setRouter(address) external;
}

contract HARDSTAKE is ReentrancyGuard {
    uint256 public constant LOCK_TIME = 14 days; // lock duration
    uint256 private constant bigNumber = 10**20;

    address private immutable factory;

    event TokenRewardsContributed(
        address indexed stakingToken,
        address indexed from,
        uint256 amount,
        uint256 newPoolBalance,
        uint256 newTotalCollected,
        uint256 timestamp
    );

    event EthRewardsContributed(
        address indexed stakingToken,
        address indexed from,
        uint256 amount,
        uint256 newEthPoolBalance,
        uint256 newTotalEthCollected,
        uint256 timestamp
    );

    event TotalSupplyUpdated(
        address indexed stakingToken,
        uint256 newTotalSupply,
        uint256 timestamp
    );

    event RewardsClaimed(
        address indexed stakingToken,
        address indexed user,
        uint256 tokenReward,
        uint256 ethReward,
        uint256 timestamp
    );

    // -----------------------------
    // DAILY CHARTING (PER TOKEN)
    // -----------------------------
    uint32 public constant HISTORY_DAYS = 365;
    struct DailyContrib {
        uint32 day;      // day index since tokenStartTimestamp[token]
        uint256 eth;     // ETH contributed on that day
        uint256 tokens;  // token contributed on that day
    }
    mapping(address => uint64) public tokenStartTimestamp;
    mapping(address => mapping(uint32 => DailyContrib)) private _daily;
    function _ensureTokenStart(address token) internal {
        if (tokenStartTimestamp[token] == 0) {
            tokenStartTimestamp[token] = uint64(block.timestamp);
        }
    }
    function daySinceStart(address token) public view returns (uint32) {
        uint64 start = tokenStartTimestamp[token];
        require(start != 0, "HARDSTAKE: TOKEN_NOT_STARTED");
        return uint32((block.timestamp - start) / 1 days);
    }

    function _recordDaily(address token, uint256 ethAmount, uint256 tokenAmount) internal {
        // tokenStartTimestamp[token] MUST be set before calling
        uint32 day = uint32((block.timestamp - tokenStartTimestamp[token]) / 1 days);
        uint32 idx = day % HISTORY_DAYS;

        DailyContrib storage d = _daily[token][idx];
        if (d.day != day) {
            d.day = day;
            d.eth = 0;
            d.tokens = 0;
        }

        d.eth += ethAmount;
        d.tokens += tokenAmount;
    }

    //Gapless daily series for the last `count` days (missing days return 0).
    function getLastDailyContrib(address token, uint32 count) external view returns (DailyContrib[] memory out) {
        require(count > 0 && count <= HISTORY_DAYS, "HARDSTAKE: BAD_COUNT");

        uint64 start = tokenStartTimestamp[token];
        require(start != 0, "HARDSTAKE: TOKEN_NOT_STARTED");

        uint32 today = uint32((block.timestamp - start) / 1 days);

        uint32 n = count;
        if (today + 1 < n) n = today + 1;

        uint32 startDay = today - (n - 1);
        out = new DailyContrib[](n);

        for (uint32 i = 0; i < n; i++) {
            uint32 day = startDay + i;
            DailyContrib storage s = _daily[token][day % HISTORY_DAYS];
            if (s.day == day) out[i] = s;
            else out[i] = DailyContrib(day, 0, 0);
        }
    }

    // -----------------------------
    // PER-STAKING-TOKEN ACCOUNTING
    // -----------------------------
    mapping(address => uint256) public totalSupply;        // users stake tokens
    mapping(address => uint256) public totalCollected;     // token rewards ever contributed
    mapping(address => uint256) public poolBalance;        // token rewards still in pool
    mapping(address => uint256) public totalEthCollected;  // ETH rewards ever contributed
    mapping(address => uint256) public ethPoolBalance;     // ETH rewards still in pool

    // ensures contribute() is fully funded
    mapping(address => uint256) public trackedTokenBalance;

    // TOKEN/ETH rewards euler per staking token
    mapping(address => uint256[]) public euler;
    mapping(address => uint256[]) public eulerEth;

    struct Staker {
        uint256 amountStaked;
        uint256 stakingTime;
        uint256 euler0;     // token rewards checkpoint
        uint256 eulerEth0;  // ETH rewards checkpoint
    }

    // stakers[stakingToken][user]
    mapping(address => mapping(address => Staker)) public stakers;

    constructor(address _factory) {
        factory = _factory;
    }

    function _syncTrackedTokenBalance(address token) internal {
        trackedTokenBalance[token] = IERC20(token).balanceOf(address(this));
    }

    function updateEuler(address token, uint256 fee) internal {
        uint256 supply = totalSupply[token];
        require(supply > 0, "HARDSTAKE: NO_STAKE");

        uint256[] storage eArr = euler[token];
        uint256 increment = (fee * bigNumber) / supply;

        if (eArr.length == 0) {
            eArr.push(increment);
        } else {
            eArr.push(eArr[eArr.length - 1] + increment);
        }
    }

    function updateEulerEth(address token, uint256 fee) internal {
        uint256 supply = totalSupply[token];
        require(supply > 0, "HARDSTAKE: NO_SUPPLY");

        uint256[] storage eArrEth = eulerEth[token];
        uint256 increment = (fee * bigNumber) / supply;

        if (eArrEth.length == 0) {
            eArrEth.push(increment);
        } else {
            eArrEth.push(eArrEth[eArrEth.length - 1] + increment);
        }
    }

    // -----------------------------
    // REWARD CONTRIBUTIONS
    // -----------------------------
    // IMPORTANT: token = msg.sender (token is both ERC20 and protocol)

    // we allow excess deposits; only `value` is accounted.
    function contribute(uint256 value) external nonReentrant {
        address token = msg.sender; // staking token that owns this pool
        _ensureTokenStart(token);

        uint256 currentBal = IERC20(token).balanceOf(address(this));
        require(currentBal >= trackedTokenBalance[token] + value, "HARDSTAKE: UNFUNDED_CONTRIBUTE");
        trackedTokenBalance[token] = currentBal;

        poolBalance[token] += value;
        totalCollected[token] += value;

        updateEuler(token, value);

        // daily charting
        _recordDaily(token, 0, value);

        emit TokenRewardsContributed(
            token,
            msg.sender,
            value,
            poolBalance[token],
            totalCollected[token],
            block.timestamp
        );
    }

    function contributeETH(uint256 value) external payable nonReentrant {
        address token = msg.sender; // staking token that owns this pool
        _ensureTokenStart(token);

        require(value == msg.value, "HARDSTAKE: BAD_ETH_VALUE");

        ethPoolBalance[token] += value;
        totalEthCollected[token] += value;

        updateEulerEth(token, value);

        // daily charting
        _recordDaily(token, value, 0);

        emit EthRewardsContributed(
            token,
            msg.sender,
            value,
            ethPoolBalance[token],
            totalEthCollected[token],
            block.timestamp
        );
    }

    // -----------------------------
    // STAKING LOGIC
    // -----------------------------

    /// @dev Only the EtherVista router is allowed to call this.
    ///      Router is responsible for transferring the staking tokens into this contract.
    function stake(uint256 _amount, address user, address token) external nonReentrant {
        require(msg.sender == IEtherVistaFactory(factory).router(), "EtherVista: FORBIDDEN");
        _ensureTokenStart(token);

        totalSupply[token] += _amount;

        Staker storage staker = stakers[token][user];
        staker.amountStaked += _amount;
        staker.stakingTime = block.timestamp;

        // Token rewards checkpoint
        uint256[] storage eArr = euler[token];
        staker.euler0 = (eArr.length == 0) ? 0 : eArr[eArr.length - 1];

        // ETH rewards checkpoint
        uint256[] storage eArrEth = eulerEth[token];
        staker.eulerEth0 = (eArrEth.length == 0) ? 0 : eArrEth[eArrEth.length - 1];

        _syncTrackedTokenBalance(token);

        emit TotalSupplyUpdated(token, totalSupply[token], block.timestamp);
    }

    function withdraw(uint256 _amount, address token) external nonReentrant {
        Staker storage staker = stakers[token][msg.sender];
        require(staker.amountStaked >= _amount, "Insufficient staked amount");
        require(block.timestamp >= staker.stakingTime + LOCK_TIME, "Tokens are still locked");

        staker.amountStaked -= _amount;
        totalSupply[token] -= _amount;

        require(IERC20(token).transfer(msg.sender, _amount), "Transfer failed");

        if (staker.amountStaked == 0) {
            delete stakers[token][msg.sender];
        } else {
            staker.stakingTime = block.timestamp;

            // Reset both checkpoints to latest, so remaining stake only earns new rewards
            uint256[] storage eArr = euler[token];
            staker.euler0 = (eArr.length == 0) ? 0 : eArr[eArr.length - 1];

            uint256[] storage eArrEth = eulerEth[token];
            staker.eulerEth0 = (eArrEth.length == 0) ? 0 : eArrEth[eArrEth.length - 1];
        }

        _syncTrackedTokenBalance(token);
        emit TotalSupplyUpdated(token, totalSupply[token], block.timestamp);
    }

    /// @notice Claim pending TOKEN + ETH rewards for a specific staking token
    function claimShare(address token) public nonReentrant {
        Staker storage staker = stakers[token][msg.sender];
        uint256 balance = staker.amountStaked;
        require(balance > 0, "HARDSTAKE: NO_STAKE");

        uint256 time = staker.stakingTime;

        // TOKEN rewards
        uint256 tokenShare = 0;
        uint256[] storage eArr = euler[token];
        if (eArr.length > 0) {
            tokenShare = (balance * (eArr[eArr.length - 1] - staker.euler0)) / bigNumber;
        }

        // ETH rewards
        uint256 ethShare = 0;
        uint256[] storage eArrEth = eulerEth[token];
        if (eArrEth.length > 0) {
            ethShare = (balance * (eArrEth[eArrEth.length - 1] - staker.eulerEth0)) / bigNumber;
        }

        require(tokenShare > 0 || ethShare > 0, "HARDSTAKE: NOTHING_TO_CLAIM");

        // Update checkpoints
        uint256 newEuler0 = (eArr.length > 0) ? eArr[eArr.length - 1] : staker.euler0;
        uint256 newEulerEth0 = (eArrEth.length > 0) ? eArrEth[eArrEth.length - 1] : staker.eulerEth0;
        stakers[token][msg.sender] = Staker(balance, time, newEuler0, newEulerEth0);

        // TOKEN payout: paying in the SAME token that is being staked
        if (tokenShare > 0) {
            poolBalance[token] -= tokenShare;
            require(IERC20(token).transfer(msg.sender, tokenShare), "HARDSTAKE: TOKEN_TRANSFER_FAILED");
        }

        // ETH payout
        if (ethShare > 0) {
            ethPoolBalance[token] -= ethShare;
            (bool sent, ) = payable(msg.sender).call{value: ethShare}("");
            require(sent, "HARDSTAKE: ETH_TRANSFER_FAILED");
        }

        _syncTrackedTokenBalance(token);

        emit RewardsClaimed(token, msg.sender, tokenShare, ethShare, block.timestamp);
    }

    // -----------------------------
    // VIEW HELPERS
    // -----------------------------

    function getStakerInfo(address token, address _staker) public view returns (
        uint256 amountStaked,
        uint256 timeLeftToUnlock,
        uint256 currentTokenShare,
        uint256 currentEthShare
    ) {
        Staker storage staker = stakers[token][_staker];

        amountStaked = staker.amountStaked;

        if (block.timestamp < staker.stakingTime + LOCK_TIME) {
            timeLeftToUnlock = (staker.stakingTime + LOCK_TIME) - block.timestamp;
        } else {
            timeLeftToUnlock = 0;
        }

        uint256[] storage eArr = euler[token];
        if (eArr.length > 0 && staker.amountStaked > 0) {
            currentTokenShare = (staker.amountStaked * (eArr[eArr.length - 1] - staker.euler0)) / bigNumber;
        } else {
            currentTokenShare = 0;
        }

        uint256[] storage eArrEth = eulerEth[token];
        if (eArrEth.length > 0 && staker.amountStaked > 0) {
            currentEthShare = (staker.amountStaked * (eArrEth[eArrEth.length - 1] - staker.eulerEth0)) / bigNumber;
        } else {
            currentEthShare = 0;
        }
    }

    function getPoolInfo(address token) public view returns (
        uint256 _totalSupply,
        uint256 _totalCollected,
        uint256 _poolBalance,
        uint256 _totalEthCollected,
        uint256 _ethPoolBalance
    ) {
        return (
            totalSupply[token],
            totalCollected[token],
            poolBalance[token],
            totalEthCollected[token],
            ethPoolBalance[token]
        );
    }
}

