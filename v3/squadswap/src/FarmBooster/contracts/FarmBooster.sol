// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./interfaces/IMasterChef.sol";
import "./interfaces/IBEP20.sol";
import "./ReentrancyGuard.sol";
import "./SafeBEP20.sol";

import "./interfaces/IBoostCalculateProvider.sol";

contract FarmBooster is ReentrancyGuard {
    using SafeBEP20 for IBEP20;

    struct UserInfo {
        uint256[] activatedPools; // Activated pool ids
        mapping(uint256 => bool) isActivated; // Pool id => is activated
    }

    struct BoostPool {
        uint256 cA; // Boost pool cA
        uint256 cB; // Boost pool cB
        bool isActivated; // Is boost pool activated
        uint256 maxBoostedUserLimit; // Max boosted user limit
    }

    // Constants aligned with MasterChef V2
    uint256 public constant BOOST_PRECISION = 100 * 1e10;
    uint256 public constant MAX_BOOST_PRECISION = 200 * 1e10;
    uint256 public constant CA_PRECISION = 1 ether;
    uint256 public constant CB_PRECISION = 1 ether;

    // State variables
    address public immutable MASTER_CHEF;
    IBEP20 public immutable SQUAD;
    address public owner;
    address public operator;
    address public masterChef;
    uint256 public maxActivatedPools;
    uint256 public maxBoostedUserLimit;
    uint256 public cA;
    uint256 public cB;

    // Mappings
    mapping(address => UserInfo) private _userInfo;
    mapping(uint256 => BoostPool) public boostPools;
    mapping(uint256 => uint256) public boostedUsersCount;

    // boostCalculateProvider;
    IBoostCalculateProvider public boostCalculateProvider;

    // Events
    event ActivatePool(address indexed user, uint256 indexed pid);
    event DeactivatePool(address indexed user, uint256 indexed pid);
    event NewOwner(address indexed owner);
    event NewOperator(address indexed operator);
    event NewMaxActivatedPools(uint256 maxActivatedPools);
    event NewMaxBoostedUserLimit(uint256 maxBoostedUserLimit);
    event NewCA(uint256 cA);
    event NewCB(uint256 cB);
    event NewBoostPool(uint256 indexed pid, uint256 cA, uint256 cB);
    event DeactivatedBoostPool(uint256 indexed pid);

    // Modifiers
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    modifier onlyOwnerOrOperator() {
        require(
            msg.sender == owner || msg.sender == operator,
            "Only owner or operator"
        );
        _;
    }

    modifier onlyMasterChef() {
        require(msg.sender == MASTER_CHEF, "Only MasterChef");
        _;
    }

    constructor(
        address _masterChef,
        IBEP20 _squad,
        uint256 _maxActivatedPools,
        uint256 _cA,
        uint256 _cB,
        uint256 _maxBoostedUserLimit
    ) {
        MASTER_CHEF = _masterChef;
        SQUAD = _squad;
        owner = msg.sender;
        operator = msg.sender;
        maxActivatedPools = _maxActivatedPools;
        cA = _cA;
        cB = _cB;
        maxBoostedUserLimit = _maxBoostedUserLimit;
    }

    // Admin functions
    function setOwner(address _owner) external onlyOwner {
        require(_owner != address(0), "Zero address");
        owner = _owner;
        emit NewOwner(_owner);
    }

    function setOperator(address _operator) external onlyOwner {
        require(_operator != address(0), "Zero address");
        operator = _operator;
        emit NewOperator(_operator);
    }

    function setMaxActivatedPools(
        uint256 _maxActivatedPools
    ) external onlyOwner {
        maxActivatedPools = _maxActivatedPools;
        emit NewMaxActivatedPools(_maxActivatedPools);
    }

    function setBoostCalculateProvider(
        address _boostCalculateProvider
    ) external onlyOwner {
        boostCalculateProvider = IBoostCalculateProvider(
            _boostCalculateProvider
        );
    }

    function setMaxBoostedUserLimit(
        uint256 _maxBoostedUserLimit
    ) external onlyOwner {
        require(
            _maxBoostedUserLimit > 0,
            "Max boosted user limit must be greater than 0"
        );
        maxBoostedUserLimit = _maxBoostedUserLimit;
        emit NewMaxBoostedUserLimit(_maxBoostedUserLimit);
    }

    function setCA(uint256 _cA) external onlyOwner {
        require(_cA <= CA_PRECISION, "Too high");
        cA = _cA;
        emit NewCA(_cA);
    }

    function setCB(uint256 _cB) external onlyOwner {
        require(_cB <= CB_PRECISION, "Too high");
        cB = _cB;
        emit NewCB(_cB);
    }

    function setBoostPool(
        uint256 _pid,
        uint256 _cA,
        uint256 _cB,
        uint256 _maxBoostedUserLimit
    ) external onlyOwnerOrOperator {
        require(_cA <= CA_PRECISION, "Too high cA");
        require(_cB <= CB_PRECISION, "Too high cB");
        boostPools[_pid] = BoostPool({
            cA: _cA,
            cB: _cB,
            isActivated: true,
            maxBoostedUserLimit: _maxBoostedUserLimit
        });
        emit NewBoostPool(_pid, _cA, _cB);
    }

    function deactivateBoostPool(uint256 _pid) external onlyOwnerOrOperator {
        boostPools[_pid].isActivated = false;
        emit DeactivatedBoostPool(_pid);
    }

    function autoActivatePool(
        address _user,
        uint256 _pid
    ) external onlyMasterChef {
        if (!boostPools[_pid].isActivated) return; // If pool is not activated, do nothing

        UserInfo storage user = _userInfo[_user];

        if (user.isActivated[_pid]) return; // If pool is already activated, do nothing

        uint256 userLimit = boostPools[_pid].maxBoostedUserLimit > 0
            ? boostPools[_pid].maxBoostedUserLimit
            : maxBoostedUserLimit;

        if (boostedUsersCount[_pid] >= userLimit) return; // If user has reached max boosted users, do nothing

        if (user.activatedPools.length >= maxActivatedPools) return; // If user has reached max activated pools, do nothing

        user.activatedPools.push(_pid);
        boostedUsersCount[_pid]++;
        user.isActivated[_pid] = true;

        emit ActivatePool(_user, _pid);
    }

    function updateBoostMultiplier(
        address _user,
        uint256 _pid
    ) external onlyMasterChef {
        if (!boostPools[_pid].isActivated) return; // If pool is not activated, do nothing
        uint256 multiplier = this.getMultiplier(_user, _pid);
        if (multiplier == BOOST_PRECISION) {
            _autoDeactivatePool(_user, _pid);
        } else {
            IMasterChef(MASTER_CHEF).updateBoostMultiplier(
                _user,
                _pid,
                multiplier
            );
        }
    }

    // User functions
    function activatePool(uint256 _pid) external nonReentrant {
        require(boostPools[_pid].isActivated, "Pool not activated");
        UserInfo storage user = _userInfo[msg.sender];
        require(!user.isActivated[_pid], "Pool already activated");

        uint256 userLimit = boostPools[_pid].maxBoostedUserLimit > 0
            ? boostPools[_pid].maxBoostedUserLimit
            : maxBoostedUserLimit;

        require(boostedUsersCount[_pid] < userLimit, "Max boosted users");
        require(user.activatedPools.length < maxActivatedPools, "Max pools");

        user.activatedPools.push(_pid);
        boostedUsersCount[_pid]++;
        user.isActivated[_pid] = true;

        // Update boost multiplier in MasterChefV2
        uint256 multiplier = this.getMultiplier(msg.sender, _pid);
        IMasterChef(MASTER_CHEF).updateBoostMultiplier(
            msg.sender,
            _pid,
            multiplier
        );

        emit ActivatePool(msg.sender, _pid);
    }

    function deactivatePool(uint256 _pid) external nonReentrant {
        UserInfo storage user = _userInfo[msg.sender];
        require(user.isActivated[_pid], "Pool not activated");

        uint256 length = user.activatedPools.length;
        uint256 index;
        for (uint256 i = 0; i < length; i++) {
            if (user.activatedPools[i] == _pid) {
                index = i;
                break;
            }
        }

        if (index < length - 1) {
            user.activatedPools[index] = user.activatedPools[length - 1];
        }
        user.activatedPools.pop();
        boostedUsersCount[_pid]--;
        user.isActivated[_pid] = false;

        // Reset boost multiplier in MasterChefV2 to base precision
        IMasterChef(MASTER_CHEF).updateBoostMultiplier(
            msg.sender,
            _pid,
            BOOST_PRECISION
        );

        emit DeactivatePool(msg.sender, _pid);
    }

    function _autoDeactivatePool(address _user, uint256 _pid) internal {
        UserInfo storage user = _userInfo[_user];
        if (!user.isActivated[_pid]) return;

        uint256 length = user.activatedPools.length;
        uint256 index;
        for (uint256 i = 0; i < length; i++) {
            if (user.activatedPools[i] == _pid) {
                index = i;
                break;
            }
        }

        if (index < length - 1) {
            user.activatedPools[index] = user.activatedPools[length - 1];
        }
        user.activatedPools.pop();
        boostedUsersCount[_pid]--;
        user.isActivated[_pid] = false;

        // Reset boost multiplier in MasterChefV2 to base precision
        IMasterChef(MASTER_CHEF).updateBoostMultiplier(
            msg.sender,
            _pid,
            BOOST_PRECISION
        );

        emit DeactivatePool(msg.sender, _pid);
    }

    // View functions
    function getActivatedPools(
        address _user
    ) external view returns (uint256[] memory) {
        return _userInfo[_user].activatedPools;
    }

    function isPoolActivated(
        address _user,
        uint256 _pid
    ) external view returns (bool) {
        return _userInfo[_user].isActivated[_pid];
    }

    function getMultiplier(
        address _user,
        uint256 _pid
    ) external view returns (uint256) {
        if (
            !boostPools[_pid].isActivated || !_userInfo[_user].isActivated[_pid]
        ) {
            return BOOST_PRECISION;
        }

        address lpToken = IMasterChef(MASTER_CHEF).lpToken(_pid);
        uint256 totalLiquidity = IBEP20(lpToken).totalSupply();

        if (totalLiquidity == 0) {
            return BOOST_PRECISION;
        }

        // Get user info from MasterChef V2
        (uint256 amount, ) = IMasterChef(MASTER_CHEF).userInfo(_pid, _user);
        if (amount == 0) {
            return BOOST_PRECISION;
        }

        uint256 _cA = boostPools[_pid].cA > 0 ? boostPools[_pid].cA : cA;
        uint256 _cB = boostPools[_pid].cB > 0 ? boostPools[_pid].cB : cB;

        uint256 boost = _boostCalculate(totalLiquidity, amount, _cA, _cB);

        return boost;
    }

    function _boostCalculate(
        uint256 _totalLiquidity,
        uint256 _amount,
        uint256 _cA,
        uint256 _cB
    ) internal view returns (uint256) {
        if (address(boostCalculateProvider) != address(0)) {
            BoostCalculateProps memory props = BoostCalculateProps({
                masterChefV2: MASTER_CHEF,
                _totalLiquidity: _totalLiquidity,
                _amount: _amount,
                _cA: _cA,
                _cB: _cB
            });
            return boostCalculateProvider.calculateBoost(props);
        }

        if (_amount == 0) return BOOST_PRECISION;
        if (_totalLiquidity == 0) return BOOST_PRECISION;
        uint256 share = (_amount * BOOST_PRECISION) / _totalLiquidity;

        if (share == 0) return BOOST_PRECISION;

        // Calculate final boost with range limit
        uint256 boostRange = MAX_BOOST_PRECISION - BOOST_PRECISION;

        uint256 denominator = (CA_PRECISION * _cB) / _cA;
        if (denominator == 0) return MAX_BOOST_PRECISION;

        uint256 boost = (boostRange * share) / BOOST_PRECISION;
        if (boost > boostRange) {
            boost = boostRange;
        }

        boost += BOOST_PRECISION;

        if (boost > MAX_BOOST_PRECISION) {
            boost = MAX_BOOST_PRECISION;
        }

        return boost;
    }
}
