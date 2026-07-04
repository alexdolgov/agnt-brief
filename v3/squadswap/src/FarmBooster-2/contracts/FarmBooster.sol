// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IMasterChefV3.sol";
import "./libraries/IterateMapping.sol";
import "./interfaces/ISquadV3Pool.sol";
import "./interfaces/IBoostCalculateProvider.sol";

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract FarmBooster is Ownable, ReentrancyGuard {
    using IterableMapping for ItMap;

    /// @notice Squad token.
    address public immutable SQUAD;

    /// @notice Operator address.
    address public OPERATOR_ADDRESS;

    /// @notice MasterChef V3 contract.
    IMasterChefV3 public immutable MASTER_CHEF_V3;
    /// @notice Boost calculate provider contract.
    IBoostCalculateProvider public boostCalculateProvider;

    /// @notice Maximum allowed boosted position numbers
    uint256 public MAX_BOOST_POSITION;

    /// @notice limit max boost
    uint256 public cA;
    /// @notice include 1e4
    uint256 public constant MIN_CA = 1e4;
    /// @notice include 1e5
    uint256 public constant MAX_CA = 1e5;
    /// @notice cA precision
    uint256 public constant CA_PRECISION = 1e5;
    /// @notice controls difficulties
    uint256 public cB;
    /// @notice not include 0
    uint256 public constant MIN_CB = 0;
    /// @notice include 50
    uint256 public constant MAX_CB = 1e8;
    /// @notice cB precision
    uint256 public constant CB_PRECISION = 1e4;
    /// @notice MCV3 basic boost factor, none boosted user"s boost factor
    uint256 public constant BOOST_PRECISION = 100 * 1e10;
    /// @notice MCV3 Hard limit for maxmium boost factor
    uint256 public constant MAX_BOOST_PRECISION = 200 * 1e10;
    /// @notice Average boost ratio precision
    uint256 public constant BOOST_RATIO_PRECISION = 1e5;
    /// @notice Squad pool BOOST_WEIGHT precision
    uint256 public constant BOOST_WEIGHT_PRECISION = 100 * 1e10; // 100%

    uint256 public MAX_BOOST_USER_LIMIT = 100;

    /// @notice Override global cB for special pool pid.
    mapping(uint256 => uint256) public cBOverride;

    /// @notice The whitelist of pools allowed for farm boosting.
    mapping(uint256 => bool) public whiteList;

    /// @notice Record whether the farm booster has been turned on, in order to save gas.
    mapping(uint256 => bool) public everBoosted;

    /// @notice Info of each pool user.
    mapping(address => ItMap) public userInfo;

    /// @notice Record the number of boosted positions for each user.
    mapping(uint256 => uint256) public userBoostedPositionCount;

    /// @notice Maximum boostebla user limit for a single pool
    mapping(uint256 => uint256) public maxBoostUserLimits;

    event UpdateMaxBoostPosition(uint256 max);
    event UpdateCA(uint256 oldCA, uint256 newCA);
    event UpdateCB(uint256 oldCB, uint256 newCB);
    event UpdateCBOverride(uint256 pid, uint256 oldCB, uint256 newCB);
    event UpdateBoostFarms(uint256 pid, bool status);
    event ActiveFarmPool(address indexed user, uint256 indexed pid, uint256 indexed tokenId);
    event DeactiveFarmPool(address indexed user, uint256 indexed pid, uint256 indexed tokenId);
    event UpdatePoolBoostMultiplier(
        address indexed user,
        uint256 indexed pid,
        uint256 indexed tokenId,
        uint256 oldMultiplier,
        uint256 newMultiplier
    );
    event UpdateBoostCalculateProvider(address indexed provider);

    event UpdateMaxBoostUserLimit(uint256 pid, uint256 limit);
    event UpdateDefaultMaxBoostUserLimit(uint256 limit);

    /// @param _squad SQUAD token contract address.
    /// @param _v3 MasterChefV3 contract address.
    /// @param _max Maximum allowed boosted farm quantity.
    /// @param _cA Limit max boost.
    /// @param _cB Controls difficulties.
    constructor(address _squad, IMasterChefV3 _v3, uint256 _max, uint256 _cA, uint256 _cB) {
        require(_max > 0 && _cA >= MIN_CA && _cA <= MAX_CA && _cB > MIN_CB && _cB <= MAX_CB, "Invalid parameter");
        SQUAD = _squad;
        MASTER_CHEF_V3 = _v3;
        MAX_BOOST_POSITION = _max;
        cA = _cA;
        cB = _cB;
        OPERATOR_ADDRESS = msg.sender;
    }

    /// @notice Checks if the msg.sender is the MasterChef V3.
    modifier onlyMasterChefV3() {
        require(msg.sender == address(MASTER_CHEF_V3), "Not MasterChef V3");
        _;
    }

    modifier onlyOperator() {
        require(msg.sender == OPERATOR_ADDRESS, "Not operator");
        _;
    }

    modifier onlyOwnerOrOperator() {
        require(msg.sender == owner() || msg.sender == OPERATOR_ADDRESS, "Not owner or operator");
        _;
    }

    function setMaxBoostUserLimit(uint256 _pid, uint256 _limit) external onlyOwnerOrOperator {
        require(_limit > 0, "Can not be zero");
        maxBoostUserLimits[_pid] = _limit;
        emit UpdateMaxBoostUserLimit(_pid, _limit);
    }

    function setDefaultMaxBoostUserLimit(uint256 _limit) external onlyOwnerOrOperator {
        require(_limit > 0, "Can not be zero");
        MAX_BOOST_USER_LIMIT = _limit;
        emit UpdateDefaultMaxBoostUserLimit(_limit);
    }

    /// @notice set maximum allowed boosted position numbers.
    /// @param _max MAX_BOOST_POSITION.
    function setMaxBoostPosition(uint256 _max) external onlyOwnerOrOperator {
        require(_max > 0, "Can not be zero");
        MAX_BOOST_POSITION = _max;
        emit UpdateMaxBoostPosition(_max);
    }

    /// @notice Only allow whitelisted pids for farm boosting.
    /// @param _pid pool id(Masterchef V3 pool).
    /// @param _status farm pool allowed boosted or not.
    function setBoosterFarms(uint256 _pid, bool _status) external onlyOwnerOrOperator {
        if (_status && !everBoosted[_pid]) everBoosted[_pid] = true;
        whiteList[_pid] = _status;
        emit UpdateBoostFarms(_pid, _status);
    }

    /// @notice Limit max boost.
    /// @param _cA Max boost.
    function setCA(uint256 _cA) external onlyOwner {
        require(_cA >= MIN_CA && _cA <= MAX_CA, "Invalid cA");
        uint256 temp = cA;
        cA = _cA;
        emit UpdateCA(temp, cA);
    }

    /// @notice Controls difficulties.
    /// @param _cB Difficulties.
    function setCB(uint256 _cB) external onlyOwner {
        require(_cB > MIN_CB && _cB <= MAX_CB, "Invalid cB");
        uint256 temp = cB;
        cB = _cB;
        emit UpdateCB(temp, cB);
    }

    /// @notice Set cBOverride.
    /// @param _pid Pool pid.
    /// @param _cB Difficulties.
    function setCBOverride(uint256 _pid, uint256 _cB) external onlyOwner {
        // Can set cBOverride[pid] 0 when need to remove override value.
        require(_cB <= MAX_CB, "Invalid cB");
        uint256 temp = cB;
        cBOverride[_pid] = _cB;
        emit UpdateCBOverride(_pid, temp, cB);
    }

    function setOperator(address _operator) external onlyOwner {
        OPERATOR_ADDRESS = _operator;
    }

    /// @notice Set boost calculate provider.
    /// @param _provider The boost calculate provider address.
    function setBoostCalculateProvider(address _provider) external onlyOwner {
        boostCalculateProvider = IBoostCalculateProvider(_provider);
        emit UpdateBoostCalculateProvider(_provider);
    }

    /// @notice Update user boost multiplier, only for MasterChef V3.
    /// @param _tokenId Token Id of position NFT.
    function updatePositionBoostMultiplier(uint256 _tokenId) external onlyMasterChefV3 returns (uint256 _multiplier) {
        (uint128 liquidity, address user, uint256 pid, ) = getUserPositionInfo(_tokenId);
        // Set default multiplier
        _multiplier = BOOST_PRECISION;
        // In order to save gas, no need to check the farms which have never beed boosted.
        if (everBoosted[pid]) {
            ItMap storage itmap = userInfo[user];
            uint256 prevMultiplier = itmap.data[_tokenId];
            if (prevMultiplier == 0) return BOOST_PRECISION;
            if (!whiteList[pid]) {
                if (itmap.contains(_tokenId)) {
                    itmap.remove(_tokenId);
                    userBoostedPositionCount[pid]--;
                    emit DeactiveFarmPool(user, pid, _tokenId);
                }
            } else {
                _multiplier = _boostCalculate(pid, uint256(liquidity));
                itmap.insert(_tokenId, _multiplier);
            }
            emit UpdatePoolBoostMultiplier(user, pid, _tokenId, prevMultiplier, _multiplier);
        }
    }

    /// @notice Remove user boost multiplier when user withdraw or butn in MasterChef V3.
    /// @param _user User address.
    /// @param _tokenId Token Id of position NFT.
    /// @param _pid Id of MasterChef V3 farm pool.
    function removeBoostMultiplier(address _user, uint256 _tokenId, uint256 _pid) external onlyMasterChefV3 {
        // In order to save gas, no need to check the farms which have never beed boosted.
        if (everBoosted[_pid]) {
            ItMap storage itmap = userInfo[_user];
            if (itmap.contains(_tokenId)) {
                itmap.remove(_tokenId);
                userBoostedPositionCount[_pid]--;
                emit DeactiveFarmPool(_user, _pid, _tokenId);
            }
        }
    }

    /// @notice Active user farm pool.
    /// @param _tokenId Token Id of position NFT.
    function activate(uint256 _tokenId) external nonReentrant {
        (uint128 liquidity, address user, uint256 pid, ) = getUserPositionInfo(_tokenId);
        require(whiteList[pid], "Not boosted farm pool");
        require(user == msg.sender, "Not owner");
        ItMap storage itmap = userInfo[user];
        require(!itmap.contains(_tokenId), "Already boosted");
        uint256 userLimit = maxBoostUserLimits[pid] > 0 ? maxBoostUserLimits[pid] : MAX_BOOST_USER_LIMIT;
        require(userBoostedPositionCount[pid] < userLimit, "Position limit reached");
        require(itmap.keys.length < MAX_BOOST_POSITION, "Boosted positions reach to MAX");

        userBoostedPositionCount[pid]++;
        _updateBoostMultiplier(itmap, user, pid, _tokenId, uint256(liquidity));

        emit ActiveFarmPool(user, pid, _tokenId);
    }

    /// @notice Active user farm pool.
    /// @param _tokenId Token Id of position NFT.
    function autoActivate(uint256 _tokenId) external onlyMasterChefV3 {
        (uint128 liquidity, address user, uint256 pid, ) = getUserPositionInfo(_tokenId);
        if (!whiteList[pid]) return; // not boosted farm pool
        ItMap storage itmap = userInfo[user];
        if (itmap.contains(_tokenId)) return; // already boosted
        if (itmap.keys.length >= MAX_BOOST_POSITION) return; // boosted positions reach to MAX
        uint256 userLimit = maxBoostUserLimits[pid] > 0 ? maxBoostUserLimits[pid] : MAX_BOOST_USER_LIMIT;
        if (userBoostedPositionCount[pid] >= userLimit) return; // boosted positions reach to MAX

        userBoostedPositionCount[pid]++;
        _updateBoostMultiplier(itmap, user, pid, _tokenId, uint256(liquidity));

        emit ActiveFarmPool(user, pid, _tokenId);
    }

    /// @notice Deactive user farm pool.
    /// @param _tokenId Token Id of position NFT.
    function deactive(uint256 _tokenId) external nonReentrant {
        ItMap storage itmap = userInfo[msg.sender];
        require(itmap.contains(_tokenId), "None boost user");

        if (itmap.data[_tokenId] > BOOST_PRECISION) {
            MASTER_CHEF_V3.updateBoostMultiplier(_tokenId, BOOST_PRECISION);
        }
        itmap.remove(_tokenId);
        (, , uint256 pid, ) = getUserPositionInfo(_tokenId);
        userBoostedPositionCount[pid]--;
        emit DeactiveFarmPool(msg.sender, pid, _tokenId);
    }

    /// @param _user user address.
    /// @param _pid pool id.
    /// @param _tokenId token id.
    /// @param _liquidity position liquidity.
    function _updateBoostMultiplier(
        ItMap storage itmap,
        address _user,
        uint256 _pid,
        uint256 _tokenId,
        uint256 _liquidity
    ) internal {
        // Used to be boost farm pool and current is not, remove from mapping
        if (!whiteList[_pid]) {
            if (itmap.data[_tokenId] > BOOST_PRECISION) {
                // reset to BOOST_PRECISION
                MASTER_CHEF_V3.updateBoostMultiplier(_tokenId, BOOST_PRECISION);
            }
            itmap.remove(_tokenId);
            userBoostedPositionCount[_pid]--;
            emit DeactiveFarmPool(_user, _pid, _tokenId);
            return;
        }

        (, , , uint256 prevMultiplier) = getUserPositionInfo(_tokenId);
        uint256 multiplier = _boostCalculate(_pid, _liquidity);

        if (multiplier < BOOST_PRECISION) {
            multiplier = BOOST_PRECISION;
        } else if (multiplier > MAX_BOOST_PRECISION) {
            multiplier = MAX_BOOST_PRECISION;
        }

        // Update multiplier to MCV3
        if (multiplier != prevMultiplier) {
            MASTER_CHEF_V3.updateBoostMultiplier(_tokenId, multiplier);
        }
        itmap.insert(_tokenId, multiplier);

        emit UpdatePoolBoostMultiplier(_user, _pid, _tokenId, prevMultiplier, multiplier);
    }

    /// @notice Whether position boosted specific farm pool.
    /// @param _tokenId Token Id of position NFT.
    function isBoostedPool(uint256 _tokenId) external view returns (bool, uint256) {
        (, address user, uint256 pid, ) = getUserPositionInfo(_tokenId);
        return (userInfo[user].contains(_tokenId), pid);
    }

    /// @notice Actived position list.
    /// @param _user user address.
    function activedPositions(address _user) external view returns (uint256[] memory positions) {
        ItMap storage itmap = userInfo[_user];
        if (itmap.keys.length == 0) return positions;

        positions = new uint256[](itmap.keys.length);
        // solidity for-loop not support multiple variables initializae by "," separate.
        for (uint256 index = 0; index < itmap.keys.length; index++) {
            positions[index] = itmap.keys[index];
        }
    }

    function getUserPositionInfo(
        uint256 _tokenId
    ) internal view returns (uint128 liquidity, address user, uint256 pid, uint256 boostMultiplier) {
        (liquidity, , , , , , user, pid, boostMultiplier) = MASTER_CHEF_V3.userPositionInfos(_tokenId);
    }

    /// @notice Anyone can call this function, if you find some guys effectived multiplier is not fair
    /// for other users, just call "updateLiquidity" function in MasterChef V3.
    /// @param _tokenId Token Id of position NFT.
    /// @dev If return value not in range [BOOST_PRECISION, MAX_BOOST_PRECISION]
    /// the actual effectived multiplier will be the close to side boundry value.
    function getUserMultiplier(uint256 _tokenId) external view returns (uint256) {
        (uint128 liquidity, , uint256 pid, ) = getUserPositionInfo(_tokenId);
        if (!whiteList[pid]) {
            return BOOST_PRECISION;
        } else {
            return _boostCalculate(pid, uint256(liquidity));
        }
    }

    /// @notice Get the total liquidity.
    /// @dev Will use the smaller value between MasterChefV3 pool totalLiquidity and V3 pool liquidity.
    /// @param _pid pool id(MasterchefV3 pool).
    function _getTotalLiquidity(uint256 _pid) internal view returns (uint256) {
        (, address v3Pool, , , , uint256 totalLiquidity, ) = MASTER_CHEF_V3.poolInfo(_pid);
        uint256 v3PoolLiquidity = ISquadV3Pool(v3Pool).liquidity();
        if (totalLiquidity > v3PoolLiquidity) {
            totalLiquidity = v3PoolLiquidity;
        }
        return totalLiquidity;
    }

    /// @param _pid pool id(MasterchefV3 pool).
    /// @param _liquidity position liquidity.
    function _boostCalculate(uint256 _pid, uint256 _liquidity) internal view returns (uint256) {
        if (_liquidity == 0) return BOOST_PRECISION;

        // If boost calculate provider is set, use it
        if (address(boostCalculateProvider) != address(0)) {
            uint256 _realCB = cBOverride[_pid] > 0 ? cBOverride[_pid] : cB;
            uint256 _totalLiquidity = _getTotalLiquidity(_pid);

            BoostCalculateProps memory props = BoostCalculateProps({
                masterChefV3: address(MASTER_CHEF_V3),
                pid: _pid,
                positionLiquidity: _liquidity,
                totalLiquidity: _totalLiquidity,
                cA: cA,
                cB: _realCB,
                cBOverride: cBOverride[_pid],
                boostRatioPrecision: BOOST_RATIO_PRECISION,
                boostPrecision: BOOST_PRECISION,
                caPrecision: CA_PRECISION,
                cbPrecision: CB_PRECISION
            });

            uint256 _boost = boostCalculateProvider.calculateBoost(props);
            if (_boost < BOOST_PRECISION) {
                return BOOST_PRECISION;
            } else if (_boost > MAX_BOOST_PRECISION) {
                return MAX_BOOST_PRECISION;
            }
            return _boost;
        }

        // will use cBOverride[pid] If cBOverride[pid] is greater than 0, or will use global cB.
        uint256 realCB = cBOverride[_pid] > 0 ? cBOverride[_pid] : cB;

        // Calculate share as liquidity / totalLiquidity
        uint256 totalLiquidity = _getTotalLiquidity(_pid);
        if (totalLiquidity == 0) return BOOST_PRECISION;

        // Calculate share with BOOST_RATIO_PRECISION
        uint256 share = (_liquidity * BOOST_RATIO_PRECISION) / totalLiquidity;

        // Calculate boost according to formula:
        // BOOST_PRECISION + (MAX_BOOST_PRECISION - BOOST_PRECISION) * share / ((CA_PRECISION * realCB) / cA)
        uint256 boostRange = MAX_BOOST_PRECISION - BOOST_PRECISION;

        // Calculate denominator carefully to avoid precision loss
        uint256 denominator = (CA_PRECISION * realCB) / cA;
        if (denominator == 0) return MAX_BOOST_PRECISION;

        // Calculate boost with proper order of operations
        uint256 boost = (boostRange * share) / BOOST_RATIO_PRECISION;
        boost = (boost * CA_PRECISION) / denominator;

        // Cap the boost at boostRange
        if (boost > boostRange) {
            boost = boostRange;
        }

        return BOOST_PRECISION + boost;
    }
}
