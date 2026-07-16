// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./IBEP20.sol";
import "./SafeBEP20.sol";
import "./interfaces/IMasterChef.sol";
import "./interfaces/IBoostContract.sol";

import "hardhat/console.sol";

/// @notice The (older) MasterChef contract gives out a constant number of CAKE tokens per block.
/// It is the only address with minting rights for SUSHI.
/// The idea for this MasterChef V2 (MCV2) contract is therefore to be the owner of a dummy token
/// that is deposited into the MasterChef V1 (MCV1) contract.
/// The allocation point for this pool on MCV1 is the total allocation point for all pools that receive double incentives.
contract MasterChefV2 is Ownable {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    /// @notice Info of each MCV2 user.
    /// `amount` LP token amount the user has provided.
    /// `rewardDebt` The amount of CAKE entitled to the user.
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    /// @notice Info of each MCV2 pool.
    /// `allocPoint` The amount of allocation points assigned to the pool.
    /// Also known as the amount of CAKE to distribute per block.
    /// `accCakePerShare` Accumulated CAKEs per share, times 1e12. See below.
    //// `lastRewardBlock` Last block number that CAKEs distribution occurs.
    /// `isRegular` The flag to set pool is regular or special.
    /// `totalBoostedShare` The amount of lpToken calculate with boost buff.
    struct PoolInfo {
        uint256 accCakePerShare;
        uint256 lastRewardBlock;
        uint256 allocPoint;
        uint256 totalBoostedShare;
        bool isRegular;
    }

    /// @notice Address of MCV1 contract.
    IMasterChef public immutable MASTER_CHEF;
    /// @notice Address of CAKE contract.
    IBEP20 public immutable CAKE;
    /// @notice The index of MCV2 master pool in MCV1.
    uint256 public immutable MASTER_PID;

    /// @notice Info of each MCV2 pool.
    PoolInfo[] public poolInfo;
    /// @notice Address of the LP token for each MCV2 pool.
    IBEP20[] public lpToken;

    /// @notice Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    /// @notice Total regular allocation points. Must be the sum of all regular allocation points in all pools.
    uint256 public totalRegularAllocPoint;
    /// @notice Total special allocation points. Must be the sum of all special allocation points in all pools.
    uint256 public totalSpecialAllocPoint;

    uint256 private constant MASTERCHEF_CAKE_PER_BLOCK = 40 * 1e18;
    uint256 private constant ACC_CAKE_PRECISION = 1e12;
    uint256 private constant CAKE_RATE_TOTAL_PRECISION = 1e12;
    uint256 private constant BOOST_PRECISION = 100 * 1e10;
    uint256 public cakeRateToBurn = 75 * 1e10;
    uint256 public cakeRateToRegularFarm = 10 * 1e10;
    uint256 public cakeRateToSpecialFarm = 15 * 1e10;
    uint256 public maxBoostValue = 120 * 1e10;

    /// @notice The only address can withdraw all the burn CAKE.
    address public burnAdmin;
    /// @notice The last block number for burn CAKE.
    uint256 public lastBurnedBlock;
    /// @notice The white list of addresses can deposit in special farm.
    mapping(address => bool) public whiteListMapping;
    /// @notice The contract for boost in regular farm.
    address public boostContract;

    event Init();
    event AddPool(uint256 indexed pid, uint256 allocPoint, IBEP20 indexed lpToken, bool isRegular);
    event SetPool(uint256 indexed pid, uint256 allocPoint);
    event UpdatePool(uint256 indexed pid, uint256 lastRewardBlock, uint256 lpSupply, uint256 accCakePerShare);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    event UpdateCakeRate(uint256 burnRate, uint256 regularFarmRate, uint256 specialFarmRate);
    event UpdateBurnAdmin(address indexed oldAdmin, address indexed newAdmin);
    event UpdateWhiteList(address indexed user, bool isValid);
    event UpdateBoostContract(address indexed boostContract, uint256 maxBoostVal);
    event UpdateUserBoost(address indexed user, uint256 oldBoostVal, uint256 newBoostVal);

    /// @param _MASTER_CHEF The PancakeSwap MCV1 contract address.
    /// @param _cake The CAKE token contract address.
    /// @param _MASTER_PID The pool ID of the dummy token on the base MCV1 contract.
    /// @param _burnAdmin The burn admin address.
    constructor(
        IMasterChef _MASTER_CHEF,
        IBEP20 _cake,
        uint256 _MASTER_PID,
        address _burnAdmin
    ) public {
        MASTER_CHEF = _MASTER_CHEF;
        CAKE = _cake;
        MASTER_PID = _MASTER_PID;
        burnAdmin = _burnAdmin;
        lastBurnedBlock = block.number;
    }

    /**
     * @dev Throws if called by any account other than the boost contract.
     */
    modifier onlyBoostContract() {
        require(boostContract == msg.sender, "Ownable: caller is not the boost contract");
        _;
    }

    /// @notice Deposits a dummy token to `MASTER_CHEF` MCV1. This is required because MCV1 holds the mining rights for CAKE.
    /// Any balance of transaction sender in `dummyToken` is transferred.
    /// The allocation point for the pool on MCV1 is the total allocation point for all pools that receive double incentives.
    /// @param dummyToken The address of the ERC-20 token to deposit into MCV1.
    function init(IBEP20 dummyToken) external {
        uint256 balance = dummyToken.balanceOf(msg.sender);
        require(balance != 0, "MasterChefV2: Balance must exceed 0");
        dummyToken.safeTransferFrom(msg.sender, address(this), balance);
        dummyToken.approve(address(MASTER_CHEF), balance);
        MASTER_CHEF.deposit(MASTER_PID, balance);
        emit Init();
    }

    /// @notice Returns the number of MCV2 pools.
    function poolLength() public view returns (uint256 pools) {
        pools = poolInfo.length;
    }

    /// @notice Add a new LP to the pool. Can only be called by the owner.
    /// DO NOT add the same LP token more than once. Rewards will be messed up if you do.
    /// @param _allocPoint AP of the new pool.
    /// @param _lpToken Address of the LP ERC-20 token.
    /// @param _isRegular Whether the pool is regular farm or special farm. Should be Only ONE special farm, otherwise the shares will messed up.
    function add(
        uint256 _allocPoint,
        IBEP20 _lpToken,
        bool _isRegular,
        bool _withUpdate
    ) public onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock = block.number;
        if (_isRegular) {
            totalRegularAllocPoint = totalRegularAllocPoint.add(_allocPoint);
        } else {
            totalSpecialAllocPoint = totalSpecialAllocPoint.add(_allocPoint);
        }
        lpToken.push(_lpToken);

        poolInfo.push(
            PoolInfo({
        allocPoint: _allocPoint,
        lastRewardBlock: lastRewardBlock,
        accCakePerShare: 0,
        isRegular: _isRegular,
        totalBoostedShare: 0
        })
        );
        emit AddPool(lpToken.length.sub(1), _allocPoint, _lpToken, _isRegular);
    }

    /// @notice Update the given pool's CAKE allocation point and `IRewarder` contract. Can only be called by the owner.
    /// @param _pid The index of the pool. See `poolInfo`.
    /// @param _allocPoint New AP of the pool.
    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate
    ) public onlyOwner {
        // update this pool before change its allocPoint
        updatePool(_pid);

        if (_withUpdate) {
            massUpdatePools();
        }
        if (poolInfo[_pid].isRegular) {
            totalRegularAllocPoint = totalRegularAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);
        } else {
            totalSpecialAllocPoint = totalSpecialAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);
        }
        poolInfo[_pid].allocPoint = _allocPoint;
        emit SetPool(_pid, _allocPoint);
    }

    /// @notice View function to see pending CAKE on frontend.
    /// @param _pid The index of the pool. See `poolInfo`.
    /// @param _user Address of user.
    /// @return pending CAKE reward for a given user.
    function pendingCake(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo memory pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accCakePerShare = pool.accCakePerShare;
        uint256 lpSupply = pool.totalBoostedShare;

        if (block.number > pool.lastRewardBlock && lpSupply != 0) {
            uint256 multiplier = block.number.sub(pool.lastRewardBlock);

            uint256 cakeReward = multiplier.mul(cakePerBlock(pool.isRegular)).mul(pool.allocPoint).div(
                (pool.isRegular ? totalRegularAllocPoint : totalSpecialAllocPoint)
            );
            accCakePerShare = accCakePerShare.add(cakeReward.mul(ACC_CAKE_PRECISION).div(lpSupply));
        }

        uint256 boostedAmount = user.amount.mul(getBoostValue(_user, _pid)).div(BOOST_PRECISION);
        return boostedAmount.mul(accCakePerShare).div(ACC_CAKE_PRECISION).sub(user.rewardDebt);
    }

    /// @notice Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            PoolInfo memory pool = poolInfo[pid];
            if (pool.allocPoint != 0) {
                updatePool(pid);
            }
        }
    }

    /// @notice Calculates and returns the `amount` of CAKE per block.
    /// @param _isRegular The boolean flag to show if the pool is regular farm or special farm.
    function cakePerBlock(bool _isRegular) public view returns (uint256 amount) {
        if (_isRegular) {
            amount = uint256(MASTERCHEF_CAKE_PER_BLOCK).mul(cakeRateToRegularFarm).div(CAKE_RATE_TOTAL_PRECISION);
        } else {
            amount = uint256(MASTERCHEF_CAKE_PER_BLOCK).mul(cakeRateToSpecialFarm).div(CAKE_RATE_TOTAL_PRECISION);
        }
    }

    /// @notice Calculates and returns the `amount` of CAKE per block to burn.
    function cakePerBlockToBurn() public view returns (uint256 amount) {
        amount = (uint256(MASTERCHEF_CAKE_PER_BLOCK).mul(cakeRateToBurn).div(CAKE_RATE_TOTAL_PRECISION));
    }

    /// @notice Update reward variables of the given pool.
    /// @param _pid The index of the pool. See `poolInfo`.
    /// @return pool Returns the pool that was updated.
    function updatePool(uint256 _pid) public returns (PoolInfo memory pool) {
        pool = poolInfo[_pid];
        if (block.number > pool.lastRewardBlock) {
            uint256 lpSupply = pool.totalBoostedShare;

            if (lpSupply > 0) {
                uint256 multiplier = block.number.sub(pool.lastRewardBlock);
                uint256 cakeReward = multiplier.mul(cakePerBlock(pool.isRegular)).mul(pool.allocPoint).div(
                    (pool.isRegular ? totalRegularAllocPoint : totalSpecialAllocPoint)
                );

                pool.accCakePerShare = pool.accCakePerShare.add((cakeReward.mul(ACC_CAKE_PRECISION).div(lpSupply)));
            }
            pool.lastRewardBlock = block.number;
            poolInfo[_pid] = pool;
            emit UpdatePool(_pid, pool.lastRewardBlock, lpSupply, pool.accCakePerShare);
        }
    }

    /// @notice Deposit LP tokens to MCV2 for CAKE allocation.
    /// @param _pid The index of the pool. See `poolInfo`.
    /// @param _amount LP token amount to deposit.
    function deposit(uint256 _pid, uint256 _amount) public {
        PoolInfo memory pool = updatePool(_pid);
        UserInfo storage user = userInfo[_pid][msg.sender];

        require(
            pool.isRegular || whiteListMapping[msg.sender],
            "MasterChefV2: The address is not available to deposit in this pool"
        );

        uint256 boostVal = getBoostValue(msg.sender, _pid);

        if (user.amount > 0) {
            settlePendingCake(msg.sender, _pid, boostVal);
        }

        if (_amount > 0) {
            lpToken[_pid].safeTransferFrom(msg.sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
            // Update total boosted share in poolInfo
            poolInfo[_pid].totalBoostedShare = poolInfo[_pid].totalBoostedShare.add(
                _amount.mul(boostVal).div(BOOST_PRECISION)
            );
        }

        user.rewardDebt = user.amount.mul(boostVal).div(BOOST_PRECISION).mul(pool.accCakePerShare).div(
            ACC_CAKE_PRECISION
        );

        emit Deposit(msg.sender, _pid, _amount);
    }

    /// @notice Withdraw LP tokens from MCV2.
    /// @param _pid The index of the pool. See `poolInfo`.
    /// @param _amount LP token amount to withdraw.
    function withdraw(uint256 _pid, uint256 _amount) public {
        PoolInfo memory pool = updatePool(_pid);
        UserInfo storage user = userInfo[_pid][msg.sender];

        require(user.amount >= _amount, "withdraw: Insufficient");

        uint256 boostVal = getBoostValue(msg.sender, _pid);

        settlePendingCake(msg.sender, _pid, boostVal);

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            lpToken[_pid].safeTransfer(msg.sender, _amount);
        }

        user.rewardDebt = user.amount.mul(boostVal).div(BOOST_PRECISION).mul(pool.accCakePerShare).div(
            ACC_CAKE_PRECISION
        );
        poolInfo[_pid].totalBoostedShare = poolInfo[_pid].totalBoostedShare.sub(
            _amount.mul(boostVal).div(BOOST_PRECISION)
        );

        emit Withdraw(msg.sender, _pid, _amount);
    }

    /// @notice settle pending cake for specific user in the pool
    /// @param _user The user address which is going to settle cake.
    /// @param _pid The pool id
    function settlePendingCake(
        address _user,
        uint256 _pid,
        uint256 _boostVal
    ) internal {
        UserInfo storage user = userInfo[_pid][_user];

        uint256 boostedAmount = user.amount.mul(_boostVal).div(BOOST_PRECISION);
        uint256 accCake = boostedAmount.mul(poolInfo[_pid].accCakePerShare).div(ACC_CAKE_PRECISION);
        uint256 pending = accCake.sub(user.rewardDebt);

        if (pending > 0) {
            // Check CAKE balance is enough to transfer
            if (CAKE.balanceOf(address(this)) < pending) {
                harvestFromMasterChef();
            }
            CAKE.safeTransfer(_user, pending);
        }
    }

    /// @notice Harvests CAKE from `MASTER_CHEF` MCV1 and pool `MASTER_PID` to this MCV2 contract.
    function harvestFromMasterChef() public {
        MASTER_CHEF.deposit(MASTER_PID, 0);
    }

    /// @notice Withdraw without caring about rewards. EMERGENCY ONLY.
    /// @param _pid The index of the pool. See `poolInfo`.
    function emergencyWithdraw(uint256 _pid) public {
        updatePool(_pid);
        UserInfo storage user = userInfo[_pid][msg.sender];

        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        uint256 boostVal = getBoostValue(msg.sender, _pid);
        poolInfo[_pid].totalBoostedShare = poolInfo[_pid].totalBoostedShare.sub(amount.mul(boostVal).div(BOOST_PRECISION));

        //Note: transfer can fail or succeed if `amount` is zero.
        lpToken[_pid].safeTransfer(msg.sender, amount);
        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    /// @notice BurnCake send amount to a specific burn address.
    function burnCake() public {
        // update all pools to make sure balance is correct
        massUpdatePools();

        uint256 blocks = block.number.sub(lastBurnedBlock);
        uint256 _pendingCakeToBurn = blocks.mul(cakePerBlockToBurn());
        lastBurnedBlock = block.number;

        if (_pendingCakeToBurn > 0) {
            if (CAKE.balanceOf(address(this)) < _pendingCakeToBurn) {
                harvestFromMasterChef();
            }
            CAKE.safeTransfer(burnAdmin, _pendingCakeToBurn);
        }
    }

    /// @notice Update cake rate for burn, regular farm and special farm.
    /// @param _burnRate The burn rate in cake emission.
    /// @param _regularFarmRate The regular farm rate in cake emission.
    /// @param _specialFarmRate The special farm rate in cake emission.
    function updateCakeRate(
        uint256 _burnRate,
        uint256 _regularFarmRate,
        uint256 _specialFarmRate
    ) external onlyOwner {
        massUpdatePools();

        require(
            _burnRate > 0 && _regularFarmRate > 0 && _specialFarmRate > 0,
            "MasterChefV2: Rate parameters must be exceed than zero"
        );
        require(
            _burnRate.add(_regularFarmRate).add(_specialFarmRate) == CAKE_RATE_TOTAL_PRECISION,
            "MasterChefV2: Total rate must equal to total precision"
        );
        cakeRateToBurn = _burnRate;
        cakeRateToRegularFarm = _regularFarmRate;
        cakeRateToSpecialFarm = _specialFarmRate;

        emit UpdateCakeRate(_burnRate, _regularFarmRate, _specialFarmRate);
    }

    /// @notice Update burn admin address.
    /// @param _newAdmin The new burn admin address.
    function updateBurnAdmin(address _newAdmin) external onlyOwner {
        require(_newAdmin != address(0), "MasterChefV2: Burn admin address must be valid");
        require(_newAdmin != burnAdmin, "MasterChefV2: Burn admin address is the same with current address");
        address _oldAdmin = burnAdmin;
        burnAdmin = _newAdmin;
        emit UpdateBurnAdmin(_oldAdmin, _newAdmin);
    }

    /// @notice Update white list address.
    /// @param _user The new address which is going to add into white list.
    /// @param _isValid The flag is valid or invalid.
    function updateWhiteList(address _user, bool _isValid) external onlyOwner {
        require(_user != address(0), "MasterChefV2: The address must be valid");

        whiteListMapping[_user] = _isValid;
        emit UpdateWhiteList(_user, _isValid);
    }

    /// @notice Update boost contract address and max value.
    /// @param _newBoostContract The new address which for user boost in regular farm.
    /// @param _maxBoostVal The max value for boost in regular farm.
    function updateBoostContract(address _newBoostContract, uint256 _maxBoostVal) external onlyOwner {
        require(_newBoostContract != address(0), "MasterChefV2: The address must be valid");
        require(_maxBoostVal >= BOOST_PRECISION, "MasterChefV2: The boost value must be exceed 0");

        boostContract = _newBoostContract;
        maxBoostValue = _maxBoostVal;
        emit UpdateBoostContract(_newBoostContract, _maxBoostVal);
    }

    /// @notice Update user boost value.
    /// @param _user The new address which is going to update boost value.
    /// @param _pid The pool id to update boost value.
    function updateUserBoost(address _user, uint256 _pid) external onlyBoostContract {
        require(_user != address(0), "MasterChefV2: The address must be valid");
        uint256 prevBoostVal = IBoostContract(boostContract).getPreviousBoostValByUser(_user, _pid);
        require(
            prevBoostVal >= BOOST_PRECISION && prevBoostVal <= maxBoostValue,
            "MasterChefV2: Invalid previous boost value"
        );
        uint256 boostVal = IBoostContract(boostContract).getBoostValByUser(_user, _pid);
        require(boostVal >= BOOST_PRECISION && boostVal <= maxBoostValue, "MasterChefV2: Invalid new boost value");

        PoolInfo memory pool = updatePool(_pid);
        UserInfo storage user = userInfo[_pid][_user];

        settlePendingCake(_user, _pid, prevBoostVal);
        user.rewardDebt = user.amount.mul(boostVal).div(BOOST_PRECISION).mul(pool.accCakePerShare).div(
            ACC_CAKE_PRECISION
        );

        pool.totalBoostedShare = pool.totalBoostedShare.sub(user.amount.mul(prevBoostVal).div(BOOST_PRECISION)).add(
            user.amount.mul(boostVal).div(BOOST_PRECISION)
        );
        poolInfo[_pid] = pool;

        emit UpdateUserBoost(_user, prevBoostVal, boostVal);
    }

    /// @notice Get boost value.
    /// @param _user The new address which is going to update boost value.
    /// @param _pid The pool id to update boost value.
    function getBoostValue(address _user, uint256 _pid) public view returns (uint256) {
        PoolInfo memory pool = poolInfo[_pid];

        uint256 val = BOOST_PRECISION;

        if (pool.isRegular && boostContract != address(0)) {
            val = IBoostContract(boostContract).getBoostValByUser(_user, _pid);
            if (val > maxBoostValue || val < BOOST_PRECISION) {
                val = BOOST_PRECISION;
            }
        }
        return val;
    }
}
