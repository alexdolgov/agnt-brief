// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/security/ReentrancyGuard.sol";
import "./libraries/IterateMapping.sol";
import "./interfaces/IVECake.sol";
import "./interfaces/IMasterChefV3.sol";
import "./interfaces/IPancakeV3Pool.sol";
import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/IPancakeV3Factory.sol";

// Vecake user can delegate VECake to another address for boosting in MasterChef V3 in FarmBooster version three.
contract FarmBoosterV3 is Ownable, ReentrancyGuard {
    using IterableMapping for ItMap;

    /// @notice VECake.
    address public immutable VECake;
    /// @notice VECake caller, this smart contract will trigger depositFor and unlock.
    address public VECakeCaller;
    /// @notice MasterChef V3 contract.
    IMasterChefV3 public immutable MASTER_CHEF_V3;

    /// @notice NonfungiblePositionManager contract.
    INonfungiblePositionManager public immutable NonfungiblePositionManager;

    /// @notice PancakeV3Factory contract.
    IPancakeV3Factory public immutable PancakeV3Factory;

    /// @notice Record user token position liquidity
    /// @dev Only record the positions which have updated after fram booster set in MasterChef V3.
    mapping(address => mapping(uint256 => uint256)) public userPositionLiquidity;

    /// @notice Record user total liquidity in MasterChef V3 pool
    mapping(address => mapping(uint256 => uint256)) public userPoolTotalLiquidity;

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
    uint256 public constant MAX_BOOST_PRECISION = 200 * 1e10;

    /// @notice Override global cB for special pool pid.
    mapping(uint256 => uint256) public cBOverride;

    /// @notice The whitelist of pools allowed for farm boosting.
    mapping(uint256 => bool) public whiteList;

    /// @notice Record whether the farm booster has been turned on, in order to save gas.
    mapping(uint256 => bool) public everBoosted;

    /// @notice Info of each pool user.
    mapping(address => ItMap) public userInfo;

    /// @notice VECake delegator address in MasterChef V3.
    /// @dev User can delegate VECake to another address for boosted in MasterChef V3.
    /// Mapping from VECake account to MasterChef V3 delegator account.
    mapping(address => address) public delegator;

    /// @notice The MasterChef V3 account which was delegated by VECake account.
    /// Mapping from MasterChef V3 delegator account to VECake account.
    mapping(address => address) public delegated;

    /// @notice Gives permission to VECake account.
    /// @dev Avoid malicious attacks.
    /// The approval is cleared when the delegator was setted.
    /// Mapping from MasterChef V3 delegator account to VECake account.
    mapping(address => address) public delegatorApprove;

    event UpdateCA(uint256 oldCA, uint256 newCA);
    event UpdateCB(uint256 oldCB, uint256 newCB);
    event UpdateCBOverride(uint256 pid, uint256 oldCB, uint256 newCB);
    event UpdateBoostFarms(uint256 pid, bool status);
    event UpdatePoolBoostMultiplier(
        address indexed user,
        uint256 indexed pid,
        uint256 indexed tokenId,
        uint256 oldMultiplier,
        uint256 newMultiplier
    );
    event UpdateVECakeCaller(address VECakeCaller);
    event UpdateDelegator(address indexed user, address indexed oldDelegator, address indexed delegator);
    event Approve(address indexed delegator, address indexed VECakeUser);

    /// @param _VECake VECake contract address.
    /// @param _v3 MasterChefV3 contract address.
    /// @param _cA Limit max boost.
    /// @param _cB Controls difficulties.
    constructor(
        address _VECake,
        IMasterChefV3 _v3,
        uint256 _cA,
        uint256 _cB
    ) {
        require(_cA >= MIN_CA && _cA <= MAX_CA && _cB > MIN_CB && _cB <= MAX_CB, "Invalid parameter");
        VECake = _VECake;
        MASTER_CHEF_V3 = _v3;
        cA = _cA;
        cB = _cB;

        NonfungiblePositionManager = INonfungiblePositionManager(MASTER_CHEF_V3.nonfungiblePositionManager());

        PancakeV3Factory = IPancakeV3Factory(NonfungiblePositionManager.factory());
    }

    /// @notice Checks if the msg.sender is the MasterChef V3.
    modifier onlyMasterChefV3() {
        require(msg.sender == address(MASTER_CHEF_V3), "Not MasterChef V3");
        _;
    }

    /// @notice Checks if the msg.sender is the vecake caller.
    modifier onlyVECakeCaller() {
        require(msg.sender == VECakeCaller, "Not vecake caller");
        _;
    }

    struct DelegatorConfig {
        address VECakeUser;
        address delegator;
    }

    /// @notice set VECake delegators.
    /// @dev In case VECake partner contract can not upgrade, owner can set delegator.
    /// The delegator address can not have any position in MasterChef V3.
    /// The old delegator address can not have any position in MasterChef V3.
    /// @param _delegatorConfigs VECake delegator config.
    function setDelegators(DelegatorConfig[] calldata _delegatorConfigs) external onlyOwner {
        for (uint256 i = 0; i < _delegatorConfigs.length; i++) {
            DelegatorConfig memory delegatorConfig = _delegatorConfigs[i];
            require(
                delegatorConfig.VECakeUser != address(0) && delegatorConfig.delegator != address(0),
                "Invalid address"
            );
            // The delegator need to approve VECake contract.
            require(delegatorApprove[delegatorConfig.delegator] == delegatorConfig.VECakeUser, "Not approved");

            address oldDelegator = delegatorConfig.VECakeUser;
            if (delegator[delegatorConfig.VECakeUser] != address(0)) {
                oldDelegator = delegator[delegatorConfig.VECakeUser];
            }
            // clear old delegated information
            delegated[oldDelegator] = address(0);

            uint256 oldDelegatorBalanceInMCV3 = MASTER_CHEF_V3.balanceOf(oldDelegator);
            uint256 delegatorBalanceInMCV3 = MASTER_CHEF_V3.balanceOf(delegatorConfig.delegator);
            require(
                oldDelegatorBalanceInMCV3 == 0 && delegatorBalanceInMCV3 == 0,
                "Please withdraw all positions in MasterChef V3"
            );

            delegator[delegatorConfig.VECakeUser] = delegatorConfig.delegator;
            delegated[delegatorConfig.delegator] = delegatorConfig.VECakeUser;
            delegatorApprove[delegatorConfig.delegator] = address(0);
            emit UpdateDelegator(delegatorConfig.VECakeUser, oldDelegator, delegatorConfig.delegator);
        }
    }

    /// @notice Gives permission to VECake account.
    /// @dev Only a single account can be approved at a time, so approving the zero address clears previous approvals.
    /// The approval is cleared when the delegator is set.
    /// @param _VECakeUser VECake account address.
    function approveToVECakeUser(address _VECakeUser) external nonReentrant {
        require(delegated[msg.sender] == address(0), "Delegator already has VECake account");

        delegatorApprove[msg.sender] = _VECakeUser;
        emit Approve(msg.sender, _VECakeUser);
    }

    /// @notice set VECake delegator address for MasterChef V3.
    /// @dev The delegator address can not have any position in MasterChef V3.
    /// The old delegator address can not have any position in MasterChef V3.
    /// @param _delegator MasterChef V3 delegator address.
    function setDelegator(address _delegator) external nonReentrant {
        require(_delegator != address(0), "Invalid address");
        // The delegator need to approve VECake contract.
        require(delegatorApprove[_delegator] == msg.sender, "Not approved");

        address oldDelegator = msg.sender;
        if (delegator[msg.sender] != address(0)) {
            oldDelegator = delegator[msg.sender];
        }
        // clear old delegated information
        delegated[oldDelegator] = address(0);

        uint256 oldDelegatorBalanceInMCV3 = MASTER_CHEF_V3.balanceOf(oldDelegator);
        uint256 delegatorBalanceInMCV3 = MASTER_CHEF_V3.balanceOf(_delegator);
        require(
            oldDelegatorBalanceInMCV3 == 0 && delegatorBalanceInMCV3 == 0,
            "Please withdraw all positions in MasterChef V3"
        );

        delegator[msg.sender] = _delegator;
        delegated[_delegator] = msg.sender;
        delegatorApprove[_delegator] = address(0);

        emit UpdateDelegator(msg.sender, oldDelegator, _delegator);
    }

    /// @notice Remove VECake delegator address for MasterChef V3.
    /// @dev The old delegator address can not have any position in MasterChef V3.
    function removeDelegator() external nonReentrant {
        address oldDelegator = delegator[msg.sender];
        require(oldDelegator != address(0), "No delegator");
        uint256 oldDelegatorBalanceInMCV3 = MASTER_CHEF_V3.balanceOf(oldDelegator);
        require(oldDelegatorBalanceInMCV3 == 0, "Please withdraw all positions in MasterChef V3");

        delegated[oldDelegator] = address(0);
        delegator[msg.sender] = address(0);
        emit UpdateDelegator(msg.sender, oldDelegator, address(0));
    }

    /// @notice set VECake caller.
    /// @param _VECakeCaller VECake caller.
    function setVECakeCaller(address _VECakeCaller) external onlyOwner {
        VECakeCaller = _VECakeCaller;
        emit UpdateVECakeCaller(_VECakeCaller);
    }

    struct BoosterFarmConfig {
        uint256 pid;
        bool status;
    }

    /// @notice Only allow whitelisted pids for farm boosting.
    /// @param _boosterFarms Booster farms config
    function setBoosterFarms(BoosterFarmConfig[] calldata _boosterFarms) external onlyOwner {
        for (uint256 i = 0; i < _boosterFarms.length; i++) {
            BoosterFarmConfig memory farm = _boosterFarms[i];
            if (farm.status && !everBoosted[farm.pid]) everBoosted[farm.pid] = true;
            whiteList[farm.pid] = farm.status;
            emit UpdateBoostFarms(farm.pid, farm.status);
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
    /// @param _pid Pool pid.
    /// @param _cB Difficulties.
    function setCBOverride(uint256 _pid, uint256 _cB) external onlyOwner {
        // Can set cBOverride[pid] 0 when need to remove override value.
        require((_cB > MIN_CB && _cB <= MAX_CB) || _cB == 0, "Invalid cB");
        uint256 temp = cB;
        cBOverride[_pid] = _cB;
        emit UpdateCBOverride(_pid, temp, cB);
    }

    /// @notice Update user pool liquidity.
    /// @dev This will update the user total liquidity in pool.
    /// @param _user User address.
    /// @param _tokenId token id.
    /// @param _pid pool id.
    /// @param _liquidity token liquidity.
    function updateUserPoolLiquidity(
        address _user,
        uint256 _tokenId,
        uint256 _pid,
        uint256 _liquidity
    ) internal {
        // update total liquidity in this pool
        userPoolTotalLiquidity[_user][_pid] =
            userPoolTotalLiquidity[_user][_pid] -
            userPositionLiquidity[_user][_tokenId] +
            _liquidity;
        userPositionLiquidity[_user][_tokenId] = _liquidity;
    }

    /// @notice Update user boost multiplier, only for MasterChef V3.
    /// @param _tokenId Token Id of position NFT.
    function updatePositionBoostMultiplier(uint256 _tokenId) external onlyMasterChefV3 returns (uint256 _multiplier) {
        (
            uint128 liquidity,
            uint128 boostLiquidity,
            ,
            ,
            ,
            ,
            address user,
            uint256 pid,
            uint256 boostMultiplier
        ) = MASTER_CHEF_V3.userPositionInfos(_tokenId);
        // Do not allow user to increase liquidity after removed all liquidity in MasterChef V3.
        if (boostLiquidity == 0 && boostMultiplier > 0) {
            revert();
        }
        // Set default multiplier
        _multiplier = BOOST_PRECISION;
        // In order to save gas, no need to check the farms which have never been boosted.
        if (everBoosted[pid]) {
            updateUserPoolLiquidity(user, _tokenId, pid, liquidity);

            ItMap storage itmap = userInfo[user];
            uint256 prevMultiplier = itmap.data[_tokenId];

            if (!whiteList[pid]) {
                if (itmap.contains(_tokenId)) {
                    itmap.remove(_tokenId);
                }
            } else {
                _multiplier = _boostCalculate(user, pid, userPoolTotalLiquidity[user][pid], 0, true);
                itmap.insert(_tokenId, _multiplier);
            }
            emit UpdatePoolBoostMultiplier(user, pid, _tokenId, prevMultiplier, _multiplier);
        }
    }

    /// @notice Remove user boost multiplier when user withdraw or burn in MasterChef V3.
    /// @param _user User address.
    /// @param _tokenId Token Id of position NFT.
    /// @param _pid Id of MasterChef V3 farm pool.
    function removeBoostMultiplier(
        address _user,
        uint256 _tokenId,
        uint256 _pid
    ) external onlyMasterChefV3 {
        // In order to save gas, no need to check the farms which have never been boosted.
        if (everBoosted[_pid]) {
            updateUserPoolLiquidity(_user, _tokenId, _pid, 0);

            ItMap storage itmap = userInfo[_user];
            if (itmap.contains(_tokenId)) {
                itmap.remove(_tokenId);
            }
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
                uint256 tokenId = itmap.keys[i];
                (, address user, uint256 pid, ) = getUserPositionInfo(tokenId);
                if (_user == user) _updateBoostMultiplier(itmap, user, pid, tokenId);
            }
        }
    }

    /// @param _user user address.
    /// @param _pid pool id.
    /// @param _tokenId token id.
    function _updateBoostMultiplier(
        ItMap storage itmap,
        address _user,
        uint256 _pid,
        uint256 _tokenId
    ) internal {
        // Used to be boosted farm pool and current is not, remove from mapping
        if (!whiteList[_pid]) {
            if (itmap.data[_tokenId] > BOOST_PRECISION) {
                // reset to BOOST_PRECISION
                MASTER_CHEF_V3.updateBoostMultiplier(_tokenId, BOOST_PRECISION);
            }
            itmap.remove(_tokenId);
            return;
        }

        (, , , uint256 prevMultiplier) = getUserPositionInfo(_tokenId);
        uint256 multiplier = _boostCalculate(_user, _pid, userPoolTotalLiquidity[_user][_pid], 0, true);

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
        // solidity for-loop not support multiple variables initialized by "," separate.
        for (uint256 index = 0; index < itmap.keys.length; index++) {
            positions[index] = itmap.keys[index];
        }
    }

    function getUserPositionInfo(uint256 _tokenId)
        internal
        view
        returns (
            uint128 liquidity,
            address user,
            uint256 pid,
            uint256 boostMultiplier
        )
    {
        (liquidity, , , , , , user, pid, boostMultiplier) = MASTER_CHEF_V3.userPositionInfos(_tokenId);
    }

    /// @notice Anyone can call this function, if you find some guys effected multiplier is not fair
    /// for other users, just call "updateLiquidity" function in MasterChef V3.
    /// @param _tokenId Token Id of position NFT.
    /// @dev If return value not in range [BOOST_PRECISION, MAX_BOOST_PRECISION]
    /// the actual effected multiplier will be the close to side boundry value.
    function getUserMultiplier(uint256 _tokenId) external view returns (uint256) {
        (uint256 liquidity, address user, uint256 pid, ) = getUserPositionInfo(_tokenId);
        // Default is true
        bool isStaked = true;
        // positions did not stake in MasterChefV3 when pid is equal to 0.
        // Check positions in NonfungiblePositionManager
        if (pid == 0) {
            (
                ,
                ,
                address token0,
                address token1,
                uint24 fee,
                ,
                ,
                uint128 positionLiquidity,
                ,
                ,
                ,

            ) = NonfungiblePositionManager.positions(_tokenId);

            liquidity = uint256(positionLiquidity);
            user = NonfungiblePositionManager.ownerOf(_tokenId);
            address v3PoolAddress = PancakeV3Factory.getPool(token0, token1, fee);
            pid = MASTER_CHEF_V3.v3PoolAddressPid(v3PoolAddress);

            if (pid > 0) {
                isStaked = false;
            }
        }
        if (!whiteList[pid]) {
            return BOOST_PRECISION;
        } else {
            uint256 totalLiquidityInPool = userPoolTotalLiquidity[user][pid] -
                userPositionLiquidity[user][_tokenId] +
                liquidity;
            return _boostCalculate(user, pid, totalLiquidityInPool, liquidity, isStaked);
        }
    }

    /// @notice Get the total liquidity.
    /// @dev Will use the smaller value between MasterChefV3 pool totalLiquidity and V3 pool liquidity.
    /// @param _pid pool id(MasterchefV3 pool).
    /// @param _positionLiquidity Position liquidity of tokenId
    /// @param _isStaked The position had staked in MasterChefV3 or not
    function _getTotalLiquidity(
        uint256 _pid,
        uint256 _positionLiquidity,
        bool _isStaked
    ) internal view returns (uint256) {
        (, address v3Pool, , , , uint256 totalLiquidity, ) = MASTER_CHEF_V3.poolInfo(_pid);
        if (!_isStaked) {
            totalLiquidity += _positionLiquidity;
        }
        uint256 v3PoolLiquidity = IPancakeV3Pool(v3Pool).liquidity();
        if (totalLiquidity > v3PoolLiquidity) {
            totalLiquidity = v3PoolLiquidity;
        }
        return totalLiquidity;
    }

    /// @param _user user address.
    /// @param _pid pool id(MasterchefV3 pool).
    /// @param _userTotalLiquidity User total liquidity in MasterChef V3 pool
    /// @param _positionLiquidity Position liquidity of tokenId
    /// @param _isStaked The position had staked in MasterChefV3 or not
    function _boostCalculate(
        address _user,
        uint256 _pid,
        uint256 _userTotalLiquidity,
        uint256 _positionLiquidity,
        bool _isStaked
    ) internal view returns (uint256) {
        // If this user has delegator , but the delegator is not the same user in MasterChef V3, use default boost factor.
        if (delegator[_user] != address(0) && delegator[_user] != _user) {
            return BOOST_PRECISION;
        }

        // If MasterChef V3 user has delegated VECake account, use delegated VECake account balance to calculate boost factor.
        address VEcakeUser = _user;
        if (delegated[_user] != address(0)) {
            VEcakeUser = delegated[_user];
        }

        uint256 dB = (cA * _userTotalLiquidity) / CA_PRECISION;
        // dB == 0 means _liquidity close to 0
        if (dB == 0) return BOOST_PRECISION;

        uint256 totalLiquidity = _getTotalLiquidity(_pid, _positionLiquidity, _isStaked);

        // will use cBOverride[pid] If cBOverride[pid] is greater than 0 , or will use global cB.
        uint256 realCB = cBOverride[_pid] > 0 ? cBOverride[_pid] : cB;
        uint256 totalSupplyInVECake = IVECake(VECake).totalSupply();
        if (totalSupplyInVECake == 0) return BOOST_PRECISION;

        uint256 aB = (totalLiquidity * IVECake(VECake).balanceOf(VEcakeUser) * realCB) /
            totalSupplyInVECake /
            CB_PRECISION;
        return ((_userTotalLiquidity <= (dB + aB) ? _userTotalLiquidity : (dB + aB)) * BOOST_PRECISION) / dB;
    }
}
