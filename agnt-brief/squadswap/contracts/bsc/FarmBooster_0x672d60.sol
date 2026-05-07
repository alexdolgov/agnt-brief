// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// ============================================================
// FILE: contracts/FarmBooster.sol
// ============================================================

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

// ============================================================
// FILE: contracts/interfaces/IBoostCalculateProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

struct BoostCalculateProps {
    address masterChefV3;
    uint256 pid;
    uint256 positionLiquidity;
    uint256 totalLiquidity;
    uint256 cA;
    uint256 cB;
    uint256 cBOverride;
    uint256 boostRatioPrecision;
    uint256 boostPrecision;
    uint256 caPrecision;
    uint256 cbPrecision;
}

interface IBoostCalculateProvider {
    function calculateBoost(BoostCalculateProps memory _props) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IMasterChefV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IMasterChefV3 {
    function latestPeriodEndTime() external view returns (uint256);

    function latestPeriodStartTime() external view returns (uint256);

    function upkeep(uint256 amount, uint256 duration, bool withUpdate) external;

    function updateBoostMultiplier(uint256 _tokenId, uint256 _multiplier) external;

    function userPositionInfos(
        uint256 _tokenId
    )
        external
        view
        returns (
            uint128 liquidity,
            uint128 boostLiquidity,
            int24 tickLower,
            int24 tickUpper,
            uint256 rewardGrowthInside,
            uint256 reward,
            address user,
            uint256 pid,
            uint256 boostMultiplier
        );

    function poolInfo(
        uint256 _pid
    )
        external
        view
        returns (
            uint256 allocPoint,
            address v3Pool,
            address token0,
            address token1,
            uint24 fee,
            uint256 totalLiquidity,
            uint256 totalBoostLiquidity
        );
}

// ============================================================
// FILE: contracts/interfaces/ISquadV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

interface ISquadV3Pool {
    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function defaultFee() external view returns (uint24);

    function lmPool() external view returns (address);

    function liquidity() external view returns (uint128);
}

// ============================================================
// FILE: contracts/libraries/IterateMapping.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

struct ItMap {
    // pid => boost
    mapping(uint256 => uint256) data;
    // pid => index
    mapping(uint256 => uint256) indexs;
    // array of pid
    uint256[] keys;
    // never use it, just for keep compile success.
    uint256 size;
}

library IterableMapping {
    function insert(ItMap storage self, uint256 key, uint256 value) internal {
        uint256 keyIndex = self.indexs[key];
        self.data[key] = value;
        if (keyIndex > 0) return;
        else {
            self.indexs[key] = self.keys.length + 1;
            self.keys.push(key);
            return;
        }
    }

    function remove(ItMap storage self, uint256 key) internal {
        uint256 index = self.indexs[key];
        if (index == 0) return;
        uint256 lastKey = self.keys[self.keys.length - 1];
        if (key != lastKey) {
            self.keys[index - 1] = lastKey;
            self.indexs[lastKey] = index;
        }
        delete self.data[key];
        delete self.indexs[key];
        self.keys.pop();
    }

    function contains(ItMap storage self, uint256 key) internal view returns (bool) {
        return self.indexs[key] > 0;
    }
}
