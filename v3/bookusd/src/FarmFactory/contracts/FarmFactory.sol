// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./includes/CloneFactory.sol";
import "./FarmClonable.sol";

import "./interfaces/IBurningBooks.sol";

interface IBookToken {
    function burn(uint256 amount) external;

    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract FarmFactory is CloneFactory, Initializable, OwnableUpgradeable {
    struct PoolData {
        uint256 pid;
        uint256 allocPoint;
        address token;
    }

    FarmClonable[] public farmAddresses;

    address public masterFarm;

    address public token; // Book of Binance

    IBurningBooks public burningBooks;
    uint256 public startTime;

    // Track clones for each chapter
    mapping(uint256 => address) public chapterToFarm;

    // Mapping chapter to array of pools
    // mapping(uint256 => mapping(uint => PoolData)) public chapterPools;

    mapping(uint256 => PoolData[]) public chapterPools;

    // Mapping of chapter to the timestamp of the last reward calculation
    // Do not update this if rewards have been calculated after start time
    mapping(uint256 => uint256) public chapterLastRewardUpdate;

    uint256 public depositFee;
    uint256 public TOTAL_REWARDS;

    uint256 public minBurnToQualify;

    struct FarmPid {
        bool exists;
        uint256 pid;
    }

    // Mapping of chapter, to token, to PID
    mapping(uint256 => mapping(address => FarmPid)) public chapterTokenToPid;

    // mapping of chapters to number of pools created
    mapping(uint256 => uint256) public chapterPoolCount;

    event FarmCreated(FarmClonable farmAddress);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner, address _burningBooks) public initializer {
        __Ownable_init(initialOwner);
        depositFee = 100;
        TOTAL_REWARDS = 250_000_000 ether;

        minBurnToQualify = 10_000 ether;

        burningBooks = IBurningBooks(_burningBooks);
        token = address(burningBooks.token());
        startTime = burningBooks.startTime();
    }

    function createFarm(uint256 _chapter) public onlyOwner {
        require(chapterToFarm[_chapter] == address(0), "Farm already created for chapter");

        require(_chapter <= currentChapter() + 2, "Chapter too far in the future");

        uint256 _poolRunTime = burningBooks.CHAPTER_LENGTH();
        uint256 _poolStartTime = startTime + (_chapter * _poolRunTime);
        uint256 _totalRewards = _currentChapterReward();
        address _reserveFund = owner();

        address farmClone = _createFarmClone(_poolStartTime, _poolRunTime, _totalRewards, _reserveFund, depositFee);
        chapterToFarm[_chapter] = farmClone;
        IToken(token).transfer(farmClone, _totalRewards);
    }

    function configPools(uint256 _chapter) public onlyOwner {
        require(chapterToFarm[_chapter] != address(0), "Farm not created for chapter");
        require(
            chapterLastRewardUpdate[_chapter] < startTime + (_chapter * burningBooks.CHAPTER_LENGTH()),
            "Rewards already updated"
        );

        if (chapterPools[_chapter].length == 0) {
            _initializePools(_chapter);
        } else {
            _updatePoolRewards(_chapter);
        }

        chapterLastRewardUpdate[_chapter] = block.timestamp;
    }

    function burnTokens() public onlyOwner {
        // Burn tokens in the farm contract
        uint256 balance = tokenBalance();
        IBookToken(token).burn(balance);
    }

    // IMPORTANT
    // Track total number of added pools, and then update existing ones, use add for new ones

    // This is causing problems if more pools exist after the initial config

    // Can keep a mapping of token address to pid on the FarmClone
    // For each pool we will check the mapping and update the pid if it exists
    // Alternatively, keep track of which ones were created in this contract
    // It would require less external contract calls that way

    // Initialize pools for a chapter
    function _initializePools(uint256 _chapter) internal {
        require(chapterPools[_chapter].length == (0), "Pools already set for chapter");

        PoolData[] memory pools = _calculateChapterFarmRewards(_chapter);

        for (uint256 i = 0; i < pools.length; i++) {
            _addPool(_chapter, pools[i].allocPoint, pools[i].token, true);
            chapterPools[_chapter].push(pools[i]);
        }
    }

    function _updatePoolRewards(uint256 _chapter) internal {
        PoolData[] memory pools = _calculateChapterFarmRewards(_chapter);

        // FarmClonable farm = FarmClonable(chapterToFarm[_chapter]);
        for (uint256 i = 0; i < pools.length; i++) {
            // (bool exists, uint256 pid) = _checkPoolPid(pools[i].token, farm);
            (bool exists, uint256 pid) = _checkPoolPid(_chapter, pools[i].token);
            if (exists) {
                _setPool(_chapter, pid, pools[i].allocPoint);
            } else {
                _addPool(_chapter, pools[i].allocPoint, pools[i].token, false);
            }
        }
    }

    // function _checkPoolInternally(uint256 _chapter, address _token) internal view returns (bool, uint256) {
    //     for (uint256 i = 0; i < chapterPools[_chapter].length; i++) {
    //         if (chapterPools[_chapter][i].token == _token) {
    //             return (true, i);
    //         }
    //     }
    //     return (false, 0);
    // }

    function _checkPoolPid(uint256 _chapter, address _token) internal view returns (bool, uint256) {
        FarmPid memory pid = chapterTokenToPid[_chapter][_token];

        if (pid.exists) {
            return (true, pid.pid);
        } else {
            return (false, 0);
        }
    }

    // function _checkPoolPid(address _token, FarmClonable farm) internal view returns (bool, uint256) {
    //     uint256 depositPid = farm.depositTokenToPid(_token);
    //     if (depositPid == 0) {
    //         (IERC20 pooltoken, , , , ) = farm.poolInfo(0);
    //         if (address(pooltoken) == _token) {
    //             return (true, 0);
    //         } else {
    //             return (false, 0);
    //         }
    //     } else {
    //         return (true, depositPid);
    //     }
    // }

    function tokenBalance() public view returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    // Internal functions

    function _calculateChapterFarmRewards(uint256 _chapter) public view returns (PoolData[] memory) {
        // return an array of all pools that need to be created

        uint256 totalBurns = 0;
        uint256 qualifyingFarms = 0;

        TokenInfo[] memory tokenInfo = burningBooks.getAllPerChapter(_chapter);

        // Loop through to count total burns and total number of farms
        for (uint256 i = 0; i < tokenInfo.length; i++) {
            if (tokenInfo[i].enabled && tokenInfo[i].booksBurned > minBurnToQualify) {
                totalBurns += tokenInfo[i].booksBurned;
                qualifyingFarms++;
            }
        }

        PoolData[] memory pools = new PoolData[](qualifyingFarms);
        uint256 poolNumber = 0;
        for (uint256 i = 0; i < tokenInfo.length; i++) {
            if (tokenInfo[i].enabled && tokenInfo[i].booksBurned > minBurnToQualify) {
                uint256 allocPoint = ((tokenInfo[i].booksBurned + tokenInfo[i].permaBurns) * 1000) / totalBurns;
                pools[poolNumber] = PoolData({ pid: i, allocPoint: allocPoint, token: address(tokenInfo[i].token) });
                poolNumber++;
            }
        }

        return pools;
    }

    function _currentChapterReward() internal view returns (uint256 rewards_) {
        rewards_ = TOTAL_REWARDS / 52;
    }

    function currentChapter() public view returns (uint256) {
        return burningBooks.chapter();
    }

    function _createFarmClone(
        uint256 _poolStartTime,
        uint256 _poolRunTime,
        uint256 _totalRewards,
        address _reserveFund,
        uint256 _depositFee
    ) internal returns (address) {
        require(masterFarm != address(0), "Master farm not set");
        require(token != address(0), "Token not set");
        FarmClonable farm = FarmClonable(createClone(masterFarm));
        farm.initialize(token, _poolStartTime, _poolRunTime, _totalRewards, _reserveFund, _depositFee);
        farmAddresses.push(farm);
        emit FarmCreated(farm);

        return address(farm);
    }

    function _addPool(uint256 _farmIndex, uint256 allocPoint, address _token, bool _withUpdate) internal {
        FarmClonable farm = FarmClonable(chapterToFarm[_farmIndex]);
        farm.add(allocPoint, IERC20(_token), _withUpdate, 0);
        chapterPoolCount[_farmIndex]++;
        chapterTokenToPid[_farmIndex][_token] = FarmPid({ exists: true, pid: chapterPoolCount[_farmIndex] - 1 });
    }

    function _setPool(uint256 _farmIndex, uint256 pid, uint256 allocPoint) internal {
        FarmClonable farm = FarmClonable(chapterToFarm[_farmIndex]);
        farm.set(pid, allocPoint);
    }

    // admin set address functions

    function setMasterFarm(address _masterFarm) public onlyOwner {
        masterFarm = _masterFarm;
    }

    function setMinBurnToQualify(uint256 _minBurnToQualify) public onlyOwner {
        minBurnToQualify = _minBurnToQualify;
    }

    function setToken(address _token) public onlyOwner {
        token = _token;
    }

    function adminRetrieveToken(address _token, uint256 _amount) public onlyOwner {
        IERC20(_token).transfer(msg.sender, _amount);
    }

    function setBurningBooks(address _burningBooks) public onlyOwner {
        burningBooks = IBurningBooks(_burningBooks);
    }
}
