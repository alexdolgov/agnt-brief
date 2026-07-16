// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "./libraries/IterateMapping.sol";
import "./interfaces/IVECake.sol";
import "./interfaces/IWrapper.sol";

contract FarmBooster is Ownable {
    using IterableMapping for ItMap;

    /// @notice Each wrapper will have one smart contract, so we define one wrapper as one pool.
    struct PoolInfo {
        uint256 poolId; // Pool id , start from 1
        address wrapper; // Wrapper smart contract address
        address stakedToken; // staked token address in wrapper
        address rewardToken; // reward token address in wrapper
    }

    /// @notice Pool length
    uint256 public poolLength;

    /// @notice Wrapper smart contract pool id
    /// @notice wrapperPoolIds[Wrapper address] => pool id
    mapping(address => uint256) public wrapperPoolIds;

    /// @notice pools[pool id] => PoolInfo
    mapping(uint256 => PoolInfo) public pools;

    /// @notice VECake.
    address public immutable VECake;
    /// @notice VECake caller, this smart contract will trigger depositFor and unlock.
    address public VECakeCaller;

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
    /// @notice MCV3 Hard limit for maximum boost factor
    uint256 public constant MAX_BOOST_PRECISION = 300 * 1e10;

    /// @notice Override global cB for special pool pid.
    mapping(uint256 => uint256) public cBOverride;

    /// @notice The whitelist of pools allowed for farm boosting.
    mapping(uint256 => bool) public whiteList;

    /// @notice Record whether the farm booster has been turned on, in order to save gas.
    mapping(uint256 => bool) public everBoosted;

    /// @notice Info of each pool user.
    mapping(address => ItMap) public userInfo;

    event UpdateCA(uint256 oldCA, uint256 newCA);
    event UpdateCB(uint256 oldCB, uint256 newCB);
    event UpdateCBOverride(uint256 indexed pid, uint256 oldCB, uint256 newCB);
    event UpdateBoostFarms(uint256 indexed pid, address wrapper, bool status);
    event NewPool(uint256 indexed pid, address indexed wrapper, address indexed stakedToken, address rewardToken);
    event UpdatePoolBoostMultiplier(
        address indexed user,
        uint256 indexed pid,
        address indexed wrapper,
        uint256 oldMultiplier,
        uint256 newMultiplier
    );
    event UpdateVECakeCaller(address VECakeCaller);

    /// @param _VECake VECake contract address.
    /// @param _cA Limit max boost.
    /// @param _cB Controls difficulties.
    constructor(
        address _VECake,
        uint256 _cA,
        uint256 _cB
    ) {
        require(_cA >= MIN_CA && _cA <= MAX_CA && _cB > MIN_CB && _cB <= MAX_CB, "Invalid parameter");
        VECake = _VECake;
        cA = _cA;
        cB = _cB;
    }

    /// @notice Checks if the msg.sender is the vecake caller.
    modifier onlyVECakeCaller() {
        require(msg.sender == VECakeCaller, "Not vecake caller");
        _;
    }

    /// @notice set VECake caller.
    /// @param _VECakeCaller VECake caller.
    function setVECakeCaller(address _VECakeCaller) external onlyOwner {
        VECakeCaller = _VECakeCaller;
        emit UpdateVECakeCaller(_VECakeCaller);
    }

    struct BoosterWrapperConfig {
        address wrapper;
        bool status;
    }

    /// @notice Only allow whitelisted wrapper for farm boosting.
    /// @param _boosterWrappers Booster wrappers config
    function setBoosterFarms(BoosterWrapperConfig[] calldata _boosterWrappers) external onlyOwner {
        for (uint256 i = 0; i < _boosterWrappers.length; i++) {
            BoosterWrapperConfig memory wrapperInfo = _boosterWrappers[i];

            uint256 poolId = wrapperPoolIds[wrapperInfo.wrapper];
            // if pool id is 0 , we need to add pool
            if (poolId == 0) {
                // Pool id start from 1
                poolLength++;

                wrapperPoolIds[wrapperInfo.wrapper] = poolLength;
                PoolInfo storage pool = pools[poolLength];
                pool.poolId = poolLength;
                pool.wrapper = wrapperInfo.wrapper;
                // If wrapper smart contract do not have stakedToken and rewardToken , will revert.
                // Use this to check if it is a valid wrapper address
                pool.stakedToken = IWrapper(wrapperInfo.wrapper).stakedToken();
                pool.rewardToken = IWrapper(wrapperInfo.wrapper).rewardToken();

                poolId = poolLength;
                emit NewPool(poolId, pool.wrapper, pool.stakedToken, pool.rewardToken);
            }
            if (wrapperInfo.status && !everBoosted[poolId]) everBoosted[poolId] = true;
            whiteList[poolId] = wrapperInfo.status;
            emit UpdateBoostFarms(poolId, wrapperInfo.wrapper, wrapperInfo.status);
        }
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
    /// @param _poolId Pool pid.
    /// @param _cB Difficulties.
    function setCBOverride(uint256 _poolId, uint256 _cB) external onlyOwner {
        // Can set cBOverride[pid] 0 when need to remove override value.
        require((_cB > MIN_CB && _cB <= MAX_CB) || _cB == 0, "Invalid cB");
        uint256 temp = cB;
        cBOverride[_poolId] = _cB;
        emit UpdateCBOverride(_poolId, temp, cB);
    }

    /// @notice Update user boost multiplier
    /// @dev Only whitelist wrapper can call this function, if not , will return BOOST_PRECISION
    /// @param _user User address
    function updatePositionBoostMultiplier(address _user) external returns (uint256 _multiplier) {
        address wrapper = msg.sender;
        uint256 poolId = wrapperPoolIds[wrapper];
        // will return BOOST_PRECISION when pool does not exist
        if (poolId == 0) {
            return BOOST_PRECISION;
        }

        // Set the default multiplier
        _multiplier = BOOST_PRECISION;
        // In order to save gas, do not need to check the pools that have never been boosted.
        if (everBoosted[poolId]) {
            ItMap storage itmap = userInfo[_user];
            uint256 prevMultiplier = itmap.data[poolId];

            // if userStakedAmount is zero, it means the user withdraw all token from wrapper smart contract , we will remove the pool id
            (uint256 userStakedAmount, , , , ) = IWrapper(wrapper).userInfo(_user);
            if (!whiteList[poolId] || userStakedAmount == 0) {
                if (itmap.contains(poolId)) {
                    itmap.remove(poolId);
                }
            } else {
                _multiplier = _boostCalculate(_user, poolId);
                itmap.insert(poolId, _multiplier);
            }
            emit UpdatePoolBoostMultiplier(_user, poolId, wrapper, prevMultiplier, _multiplier);
        }
    }

    /// @notice VECake operation(deposit/withdraw) automatically call this function.
    /// @param _for User address.
    /// @param _amount The amount to deposit
    /// @param _unlockTime New time to unlock Cake. Pass 0 if no change.
    /// @param _prevLockedAmount Existed locks[_for].amount
    /// @param _prevLockedEnd Existed locks[_for].end
    /// @param _actionType The action that user did as this internal function shared among
    /// @param _isCakePoolUser This user is cake pool user or not
    function depositFor(
        address _for,
        uint256 _amount,
        uint256 _unlockTime,
        int128 _prevLockedAmount,
        uint256 _prevLockedEnd,
        uint256 _actionType,
        bool _isCakePoolUser
    ) external onlyVECakeCaller {
        _updateUserAllBoostMultiplier(_for);
    }

    /// @notice Function to perform withdraw and unlock Cake for a user
    /// @param _user The address to be unlocked
    /// @param _prevLockedAmount Existed locks[_user].amount
    /// @param _prevLockedEnd Existed locks[_user].end
    /// @param _withdrawAmount Cake amount
    function unlock(
        address _user,
        int128 _prevLockedAmount,
        uint256 _prevLockedEnd,
        uint256 _withdrawAmount
    ) external onlyVECakeCaller {
        _updateUserAllBoostMultiplier(_user);
    }

    function _updateUserAllBoostMultiplier(address _user) internal {
        ItMap storage itmap = userInfo[_user];
        uint256 length = itmap.keys.length;
        if (length > 0) {
            for (uint256 i = 0; i < length; i++) {
                uint256 poolId = itmap.keys[i];
                _updateBoostMultiplier(itmap, _user, poolId);
            }
        }
    }

    /// @param _user user address.
    /// @param _poolId pool id.
    function _updateBoostMultiplier(
        ItMap storage itmap,
        address _user,
        uint256 _poolId
    ) internal {
        PoolInfo memory pool = pools[_poolId];
        // Used to be boosted farm pool and current is not, remove from mapping
        if (!whiteList[_poolId]) {
            if (itmap.data[_poolId] > BOOST_PRECISION) {
                // reset to BOOST_PRECISION
                IWrapper(pool.wrapper).updateBoostMultiplier(_user, BOOST_PRECISION);
            }
            itmap.remove(_poolId);
            return;
        }

        (, , uint256 prevMultiplier, , ) = IWrapper(pool.wrapper).userInfo(_user);
        uint256 multiplier = _boostCalculate(_user, _poolId);

        if (multiplier < BOOST_PRECISION) {
            multiplier = BOOST_PRECISION;
        } else if (multiplier > MAX_BOOST_PRECISION) {
            multiplier = MAX_BOOST_PRECISION;
        }

        // Update multiplier in pool wrapper
        if (multiplier != prevMultiplier) {
            IWrapper(pool.wrapper).updateBoostMultiplier(_user, multiplier);
        }
        itmap.insert(_poolId, multiplier);

        emit UpdatePoolBoostMultiplier(_user, _poolId, pool.wrapper, prevMultiplier, multiplier);
    }

    /// @notice Whether position boosted specific farm pool.
    /// @param _user user address.
    /// @param _poolId pool id.
    function isBoostedPool(address _user, uint256 _poolId) external view returns (bool) {
        return userInfo[_user].contains(_poolId);
    }

    /// @notice Whether position boosted specific wrapper smart contract.
    /// @param _user user address.
    /// @param _wrapper wrapper address.
    function isBoostedWrapper(address _user, address _wrapper) external view returns (bool) {
        return userInfo[_user].contains(wrapperPoolIds[_wrapper]);
    }

    /// @notice Whether the wrapper is in whiteList.
    /// @param _wrapper wrapper address.
    function whiteListWrapper(address _wrapper) external view returns (bool) {
        return whiteList[wrapperPoolIds[_wrapper]];
    }

    /// @notice Get PoolInfo by wrapper address.
    /// @param _wrapper wrapper address.
    function wrapperPools(address _wrapper) external view returns (PoolInfo memory) {
        return pools[wrapperPoolIds[_wrapper]];
    }

    /// @notice Actived pool list.
    /// @param _user user address.
    function activedPools(address _user)
        external
        view
        returns (uint256[] memory poolList, address[] memory wrapperList)
    {
        ItMap storage itmap = userInfo[_user];
        uint256 len = itmap.keys.length;
        if (len == 0) return (poolList, wrapperList);

        poolList = new uint256[](len);
        wrapperList = new address[](len);
        // solidity for-loop not support multiple variables initialized by "," separate.
        for (uint256 index = 0; index < len; index++) {
            uint256 poolId = itmap.keys[index];
            poolList[index] = poolId;
            wrapperList[index] = pools[poolId].wrapper;
        }
    }

    /// @notice Anyone can call this function, if you find some guys effected multiplier is not fair
    /// for other users, just call "updateBoostMultiplierByUser" function in wrapper.
    /// @param _user user address.
    /// @param _poolId pool id.
    /// @dev If return value not in range [BOOST_PRECISION, MAX_BOOST_PRECISION]
    /// the actual effected multiplier will be the close to side boundry value.
    function getUserMultiplier(address _user, uint256 _poolId) external view returns (uint256) {
        if (!whiteList[_poolId] || _poolId == 0) {
            return BOOST_PRECISION;
        } else {
            return _boostCalculate(_user, _poolId);
        }
    }

    /// @notice Anyone can call this function, if you find some guys effected multiplier is not fair
    /// for other users, just call "updateBoostMultiplierByUser" function in wrapper.
    /// @param _user user address.
    /// @param _wrapper wrapper address.
    /// @dev If return value not in range [BOOST_PRECISION, MAX_BOOST_PRECISION]
    /// the actual effected multiplier will be the close to side boundry value.
    function getUserMultiplierByWrapper(address _user, address _wrapper) external view returns (uint256) {
        uint256 poolId = wrapperPoolIds[_wrapper];
        if (!whiteList[poolId] || poolId == 0) {
            return BOOST_PRECISION;
        } else {
            return _boostCalculate(_user, poolId);
        }
    }

    /// @param _user user address.
    /// @param _poolId pool id.
    function _boostCalculate(address _user, uint256 _poolId) internal view returns (uint256) {
        PoolInfo memory pool = pools[_poolId];
        (uint256 userStakedAmount, , , , ) = IWrapper(pool.wrapper).userInfo(_user);

        uint256 dB = (cA * userStakedAmount) / CA_PRECISION;
        // dB == 0 means _liquidity close to 0
        if (dB == 0) return BOOST_PRECISION;

        uint256 totalLiquidity = IERC20(pool.stakedToken).balanceOf(pool.wrapper);

        // will use cBOverride[pid] If cBOverride[pid] is greater than 0 , or will use global cB.
        uint256 realCB = cBOverride[_poolId] > 0 ? cBOverride[_poolId] : cB;
        uint256 totalSupplyInVECake = IVECake(VECake).totalSupply();
        if (totalSupplyInVECake == 0) return BOOST_PRECISION;
        uint256 aB = (totalLiquidity * IVECake(VECake).balanceOf(_user) * realCB) / totalSupplyInVECake / CB_PRECISION;
        return ((userStakedAmount <= (dB + aB) ? userStakedAmount : (dB + aB)) * BOOST_PRECISION) / dB;
    }
}
