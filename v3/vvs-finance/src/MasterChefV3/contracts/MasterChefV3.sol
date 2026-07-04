// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import './interfaces/INonfungiblePositionManager.sol';
import './interfaces/INonfungiblePositionManagerStruct.sol';
import './interfaces/IVVSV3Pool.sol';
import './interfaces/IVVSV3LmPool.sol';
import './interfaces/IVVSV3LmPoolDeployer.sol';
import './interfaces/ICraftsman.sol';
import './utils/Multicall.sol';
import './Enumerable.sol';

contract MasterChefV3 is
    INonfungiblePositionManagerStruct,
    UUPSUpgradeable,
    Multicall,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    Enumerable
{
    using SafeERC20 for IERC20;
    
    struct PoolInfo {
        IVVSV3Pool v3Pool; // V3 pool address
        address token0; // V3 pool token0 address
        address token1; // V3 pool token1 address
        uint24 fee; // V3 pool fee
        uint256 totalLiquidity; // total liquidity staking in the pool
        uint256 depositTokenPid; // pool dedicated to collecting vvs rewards, These awards belong to the master chef
        IERC20 depositToken; // each pool corresponds to one token
        ICraftsman craftsman; // the address of craftsman
    }

    struct UserPositionInfo {
        uint128 liquidity; // liquidity deposited by user
        int24 tickLower; // The lower tick boundary of the position
        int24 tickUpper; // The upper tick boundary of the position
        uint256 rewardGrowthInside; // accumulate rewards per share, inside the position's tick boundaries
        uint256 reward; // accumulated unclaimed rewards
        address user; // the address of user
        uint256 pid; // the farm pool id
    }

    /// @notice the pool length
    uint256 public poolLength;

    /// @notice Info of each MCV3 pool.
    mapping(uint256 => PoolInfo) public poolInfo;

    /// @notice userPositionInfos[tokenId] => UserPositionInfo
    /// @dev TokenId is unique, and we can query the pid by tokenId.
    mapping(uint256 => UserPositionInfo) public userPositionInfos;

    /// @notice v3PoolPid[token0][token1][fee] => pid
    mapping(address => mapping(address => mapping(uint24 => uint256))) v3PoolPid;

    /// @notice v3PoolAddressPid[v3PoolAddress] => pid
    mapping(address => uint256) public v3PoolAddressPid;

    /// @notice Address of liquidity mining pool deployer contract.
    IVVSV3LmPoolDeployer public lmPoolDeployer;

    /// @notice Address of vvs contract.
    IERC20 public immutable vvs;

    /// @notice Address of WETH contract.
    address public immutable WETH;

    INonfungiblePositionManager public immutable nonfungiblePositionManager;

    uint256 constant Q128 = 0x100000000000000000000000000000000;

    uint256 constant MAX_U256 = type(uint256).max;

    error ZeroAddress();
    error NotVVSNFT();
    error InvalidNFT();
    error WrongReceiver();
    error NotOwner();
    error NoLiquidity();
    error NoLMPool();
    error InvalidPid();
    error DuplicatedPool();
    error NotEmpty();
    error InconsistentAmount();

    event AddPool(uint256 indexed pid, uint256 depositTokenPid, IVVSV3Pool indexed v3Pool, IVVSV3LmPool indexed lmPool);
    event Withdraw(address indexed from, address to, uint256 indexed pid, uint256 indexed tokenId);
    event Harvest(address indexed sender, address to, uint256 indexed pid, uint256 indexed tokenId, uint256 reward);
    event NewLmPoolDeployerAddress(address deployer);
    event Deposit(
        address indexed from,
        uint256 indexed pid,
        uint256 indexed tokenId,
        uint256 liquidity,
        int24 tickLower,
        int24 tickUpper
    );
    event UpdateLiquidity(
        address indexed from,
        uint256 indexed pid,
        uint256 indexed tokenId,
        int128 liquidity,
        int24 tickLower,
        int24 tickUpper
    );

    modifier onlyValidPid(uint256 _pid) {
        if (_pid == 0 || _pid > poolLength) revert InvalidPid();
        _;
    }

    /// @param _vvs                         - the vvs token contract address.
    /// @param _nonfungiblePositionManager  - the NFT position manager contract address.
    constructor(IERC20 _vvs, address _WETH, INonfungiblePositionManager _nonfungiblePositionManager) {
        vvs = _vvs;
        WETH = _WETH;
        nonfungiblePositionManager = _nonfungiblePositionManager;
        _disableInitializers();
    }

    ///@dev Added to fulfill UUPSUpgradeable interface
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
    }

    /// @notice OWNER ONLY: Deposits deposit token to craftman to harvest vvs rewards
    /// @dev Deposit tokens need to be transfered into this contract before in a separate tx
    /// @param _pid         - Id of the v3 farm pool
    /// @param _amount      - Amount of deposit token to deposit
    function depositTokenToFarm(uint256 _pid, uint256 _amount) external onlyOwner {
        PoolInfo memory curPoolInfo = poolInfo[_pid];
        curPoolInfo.depositToken.approve(address(curPoolInfo.craftsman), _amount);
        curPoolInfo.craftsman.deposit(curPoolInfo.depositTokenPid, _amount);
    }

    /// @notice OWNER ONLY: Withdraw deposit tokens from craftsman to specified receiver address
    /// @param _pid          - Id of the v3 farm pool
    /// @param _receiver     - Address to receive the deposit token
    /// @param _amount       - Amount of deposit tokens to withdraw
    function withdrawDepositToken(uint256 _pid, address _receiver, uint256 _amount) external onlyOwner {
        PoolInfo memory curPoolInfo = poolInfo[_pid];
        curPoolInfo.craftsman.withdraw(curPoolInfo.depositTokenPid, _amount);
        curPoolInfo.depositToken.transfer(_receiver, _amount);
    }

    /// @notice OWNER ONLY: set lm pool deployer
    /// @param _lmPoolDeployer     - the lm pool deployer address
    function setLmPoolDeployer(IVVSV3LmPoolDeployer _lmPoolDeployer) external onlyOwner {
        if (address(_lmPoolDeployer) == address(0)) revert ZeroAddress();
        lmPoolDeployer = _lmPoolDeployer;
        emit NewLmPoolDeployerAddress(address(_lmPoolDeployer));
    }

    /// @notice Add a new pool. Can only be called by the owner.
    /// @notice One v3 pool can only create one pool.
    /// @param _depositTokenPid   - Must be added to craftsman
    /// @param _depositToken      - Each depositTokenPid corresponds to a new address
    /// @param _craftsman         - Address of the craftsman.
    /// @param _v3Pool            - Address of the V3 pool.
    /// @param _withUpdate        - Whether call "massUpdatePools" operation.
    function add(
        uint256 _depositTokenPid,
        IERC20 _depositToken,
        ICraftsman _craftsman,
        IVVSV3Pool _v3Pool,
        bool _withUpdate
    ) external onlyOwner {
        // check params
        if (address(_v3Pool) == address(0) || address(_craftsman) == address(0) || address(_depositToken) == address(0))
            revert ZeroAddress();
        if (_depositTokenPid == 0) revert InvalidPid();

        // update all pool
        if (_withUpdate) massUpdatePools();

        // deploy lm pool
        IVVSV3LmPool lmPool = lmPoolDeployer.deploy(_v3Pool);
        address token0 = _v3Pool.token0();
        address token1 = _v3Pool.token1();
        uint24 fee = _v3Pool.fee();
        if (v3PoolPid[token0][token1][fee] != 0) revert DuplicatedPool();
        // approve Max token to nonfungiblePositionManager
        if (IERC20(token0).allowance(address(this), address(nonfungiblePositionManager)) == 0)
            IERC20(token0).safeApprove(address(nonfungiblePositionManager), MAX_U256);
        if (IERC20(token1).allowance(address(this), address(nonfungiblePositionManager)) == 0)
            IERC20(token1).safeApprove(address(nonfungiblePositionManager), MAX_U256);
        unchecked {
            poolLength++;
        }
        poolInfo[poolLength] = PoolInfo({
            v3Pool: _v3Pool,
            token0: token0,
            token1: token1,
            fee: fee,
            totalLiquidity: 0,
            depositTokenPid: _depositTokenPid,
            depositToken: _depositToken,
            craftsman: _craftsman
        });

        v3PoolPid[token0][token1][fee] = poolLength;
        v3PoolAddressPid[address(_v3Pool)] = poolLength;
        emit AddPool(poolLength, _depositTokenPid, _v3Pool, lmPool);
    }

    struct DepositCache {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint128 liquidity;
    }

    /// @notice Upon receiving a ERC721
    function onERC721Received(
        address,
        address _from,
        uint256 _tokenId,
        bytes calldata
    ) external nonReentrant returns (bytes4) {
        if (msg.sender != address(nonfungiblePositionManager)) revert NotVVSNFT();
        DepositCache memory cache;
        (
            ,
            ,
            cache.token0,
            cache.token1,
            cache.fee,
            cache.tickLower,
            cache.tickUpper,
            cache.liquidity,
            ,
            ,
            ,

        ) = nonfungiblePositionManager.positions(_tokenId);
        if (cache.liquidity == 0) revert NoLiquidity();
        uint256 pid = v3PoolPid[cache.token0][cache.token1][cache.fee];
        if (pid == 0) revert InvalidNFT();
        PoolInfo memory pool = poolInfo[pid];
        IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
        if (address(lmPool) == address(0)) revert NoLMPool();

        UserPositionInfo storage positionInfo = userPositionInfos[_tokenId];
        positionInfo.tickLower = cache.tickLower;
        positionInfo.tickUpper = cache.tickUpper;
        positionInfo.user = _from;
        positionInfo.pid = pid;
        // Need to update LMPool.
        lmPool.accumulateLmReward(uint32(block.timestamp));
        // update liquidity
        updateLiquidityOperation(positionInfo, _tokenId);

        positionInfo.rewardGrowthInside = lmPool.getRewardGrowthInside(cache.tickLower, cache.tickUpper);

        // Update Enumerable
        addToken(_from, _tokenId);
        emit Deposit(_from, pid, _tokenId, cache.liquidity, cache.tickLower, cache.tickUpper);

        return this.onERC721Received.selector;
    }

    /// @notice harvest vvs from pool.
    /// @dev it can also use the callStatic.harvest method to display the user's pending rewards
    /// @param _tokenId  - Token Id of NFT.
    /// @param _to       - Harvest rewards to address.
    /// @return reward   - Pending vvs rewards.
    function harvest(uint256 _tokenId, address _to) external nonReentrant returns (uint256 reward) {
        UserPositionInfo storage positionInfo = userPositionInfos[_tokenId];
        if (positionInfo.user != msg.sender) revert NotOwner();
        if (positionInfo.liquidity == 0 && positionInfo.reward == 0) revert NoLiquidity();
        reward = harvestOperation(positionInfo, _tokenId, _to);
    }

    function harvestOperation(
        UserPositionInfo storage positionInfo,
        uint256 _tokenId,
        address _to
    ) internal virtual returns (uint256 reward) {
        PoolInfo memory pool = poolInfo[positionInfo.pid];
        IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
        if (address(lmPool) != address(0)) {
            // Update rewardGrowthInside
            lmPool.accumulateLmReward(uint32(block.timestamp));
            uint256 rewardGrowthInside = lmPool.getRewardGrowthInside(positionInfo.tickLower, positionInfo.tickUpper);
            /**
             *  There will be cases where positionInfo.rewardGrowthInside is negative. And rewardGrowthInside is a positive number
             *  such as. positionInfo.rewardGrowthInside = 115792089237316195423570985008687907853269891874177233573921004335273380904312
             *           rewardGrowthInside = 95802306881456129567098867256180502
             */
            uint256 rewardGrowthInsideDelta;
            unchecked {
                rewardGrowthInsideDelta = rewardGrowthInside - positionInfo.rewardGrowthInside;
            }
            reward = (rewardGrowthInsideDelta * positionInfo.liquidity) / Q128;
            positionInfo.rewardGrowthInside = rewardGrowthInside;
        }
        // Cumulative reward
        reward += positionInfo.reward;

        if (reward > 0) {
            if (_to != address(0)) {
                positionInfo.reward = 0;
                vvs.safeTransfer(_to, reward);
                emit Harvest(msg.sender, _to, positionInfo.pid, _tokenId, reward);
            } else {
                positionInfo.reward = reward;
            }
        }
    }

    /// @notice Withdraw LP tokens from pool.
    /// @param _tokenId     - Token Id of NFT to deposit.
    /// @param _to          - Address to which NFT token to withdraw.
    /// @return reward      - Pending vvs rewards.
    function withdraw(uint256 _tokenId, address _to) external nonReentrant returns (uint256 reward) {
        if (_to == address(this) || _to == address(0)) revert WrongReceiver();
        UserPositionInfo storage positionInfo = userPositionInfos[_tokenId];
        if (positionInfo.user != msg.sender) revert NotOwner();
        // Harvest rewards
        reward = harvestOperation(positionInfo, _tokenId, _to);
        uint256 pid = positionInfo.pid;
        PoolInfo storage pool = poolInfo[pid];
        IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
        if (address(lmPool) != address(0)) {
            // Remove all liquidity from liquidity mining pool.
            int128 liquidityDelta = -int128(positionInfo.liquidity);
            // Update position info
            lmPool.updatePosition(positionInfo.tickLower, positionInfo.tickUpper, liquidityDelta);
            emit UpdateLiquidity(
                msg.sender,
                pid,
                _tokenId,
                liquidityDelta,
                positionInfo.tickLower,
                positionInfo.tickUpper
            );
        }
        pool.totalLiquidity -= positionInfo.liquidity;

        delete userPositionInfos[_tokenId];
        // Update Enumerable
        removeToken(msg.sender, _tokenId);
        nonfungiblePositionManager.safeTransferFrom(address(this), _to, _tokenId);
        emit Withdraw(msg.sender, _to, pid, _tokenId);
    }

    /// @notice  Update liquidity for the NFT position.
    /// @dev     This method is called only when the user increase liquidity through NonfungiblePositionManager 
    ///          without notifying masterChefv3. If this happens, the user needs to do it manually.
    /// @param _tokenId   - Token Id of NFT to update.
    function updateLiquidity(uint256 _tokenId) external nonReentrant {
        UserPositionInfo storage positionInfo = userPositionInfos[_tokenId];
        if (positionInfo.pid == 0) revert InvalidNFT();
        harvestOperation(positionInfo, _tokenId, address(0));
        updateLiquidityOperation(positionInfo, _tokenId);
    }

    function updateLiquidityOperation(UserPositionInfo storage positionInfo, uint256 _tokenId) internal virtual {
        (, , , , , int24 tickLower, int24 tickUpper, uint128 liquidity, , , , ) = nonfungiblePositionManager.positions(
            _tokenId
        );
        PoolInfo storage pool = poolInfo[positionInfo.pid];
        int128 liquidityDelta;
        if (positionInfo.liquidity != liquidity) {
            pool.totalLiquidity = pool.totalLiquidity - positionInfo.liquidity + liquidity;
            liquidityDelta = int128(liquidity) - int128(positionInfo.liquidity);
            positionInfo.liquidity = liquidity;
        }

        if (liquidityDelta != 0) {
            IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
            if (address(lmPool) == address(0)) revert NoLMPool();
            lmPool.updatePosition(tickLower, tickUpper, liquidityDelta);
            emit UpdateLiquidity(msg.sender, positionInfo.pid, _tokenId, liquidityDelta, tickLower, tickUpper);
        }
    }

    /// @notice Increases the amount of liquidity in a position, with tokens paid by the `msg.sender`
    /// @param params tokenId The ID of the token for which liquidity is being increased,
    /// amount0Desired The desired amount of token0 to be spent,
    /// amount1Desired The desired amount of token1 to be spent,
    /// amount0Min The minimum amount of token0 to spend, which serves as a slippage check,
    /// amount1Min The minimum amount of token1 to spend, which serves as a slippage check,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return liquidity The new liquidity amount as a result of the increase
    /// @return amount0 The amount of token0 to acheive resulting liquidity
    /// @return amount1 The amount of token1 to acheive resulting liquidity
    function increaseLiquidity(
        IncreaseLiquidityParams calldata params
    ) external payable nonReentrant returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        UserPositionInfo storage positionInfo = userPositionInfos[params.tokenId];
        if (positionInfo.pid == 0) revert InvalidNFT();
        PoolInfo memory pool = poolInfo[positionInfo.pid];
        pay(pool.token0, params.amount0Desired);
        pay(pool.token1, params.amount1Desired);
        if (pool.token0 != WETH && pool.token1 != WETH && msg.value > 0) revert();
        (liquidity, amount0, amount1) = nonfungiblePositionManager.increaseLiquidity{value: msg.value}(params);
        uint256 token0Left = params.amount0Desired - amount0;
        uint256 token1Left = params.amount1Desired - amount1;
        if (token0Left > 0) {
            refund(pool.token0, token0Left);
        }
        if (token1Left > 0) {
            refund(pool.token1, token1Left);
        }
        harvestOperation(positionInfo, params.tokenId, address(0));
        updateLiquidityOperation(positionInfo, params.tokenId);
    }

    /// @notice Pay.
    /// @param _token The token to pay
    /// @param _amount The amount to pay
    function pay(address _token, uint256 _amount) internal {
        if (_token == WETH && msg.value > 0) {
            if (msg.value != _amount) revert InconsistentAmount();
        } else {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        }
    }

    /// @notice Refund.
    /// @param _token   - The token to refund
    /// @param _amount  - The amount to refund
    function refund(address _token, uint256 _amount) internal {
        if (_token == WETH && msg.value > 0) {
            nonfungiblePositionManager.refundETH();
            safeTransferETH(msg.sender, address(this).balance);
        } else {
            IERC20(_token).safeTransfer(msg.sender, _amount);
        }
    }

    /// @notice Decreases the amount of liquidity in a position and accounts it to the position
    /// @param params tokenId The ID of the token for which liquidity is being decreased,
    ///        amount The amount by which liquidity will be decreased,
    ///        - amount0Min The minimum amount of token0 that should be accounted for the burned liquidity,
    ///        - amount1Min The minimum amount of token1 that should be accounted for the burned liquidity,
    ///        - deadline The time by which the transaction must be included to effect the change
    /// @return amount0  - The amount of token0 accounted to the position's tokens owed
    /// @return amount1  - The amount of token1 accounted to the position's tokens owed
    function decreaseLiquidity(
        DecreaseLiquidityParams calldata params
    ) external nonReentrant returns (uint256 amount0, uint256 amount1) {
        UserPositionInfo storage positionInfo = userPositionInfos[params.tokenId];
        if (positionInfo.user != msg.sender) revert NotOwner();
        (amount0, amount1) = nonfungiblePositionManager.decreaseLiquidity(params);
        harvestOperation(positionInfo, params.tokenId, address(0));
        updateLiquidityOperation(positionInfo, params.tokenId);
    }

    /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient
    /// @param params tokenId The ID of the NFT for which tokens are being collected,
    ///        - recipient The account that should receive the tokens,
    ///        - amount0Max The maximum amount of token0 to collect,
    ///        - amount1Max The maximum amount of token1 to collect
    /// @return amount0  - The amount of fees collected in token0
    /// @return amount1  - The amount of fees collected in token1
    function collect(CollectParams memory params) external nonReentrant returns (uint256 amount0, uint256 amount1) {
        UserPositionInfo memory positionInfo = userPositionInfos[params.tokenId];
        if (positionInfo.user != msg.sender) revert NotOwner();
        if (params.recipient == address(0)) revert ZeroAddress();
        (amount0, amount1) = nonfungiblePositionManager.collect(params);
    }

    /// @notice Burns a token ID, which deletes it from the NFT contract.
    ///         The token must have 0 liquidity and all tokens. must be collected first.
    /// @param _tokenId The ID of the token that is being burned
    function burn(uint256 _tokenId) external nonReentrant {
        UserPositionInfo memory positionInfo = userPositionInfos[_tokenId];
        if (positionInfo.user != msg.sender) revert NotOwner();
        if (positionInfo.reward > 0 || positionInfo.liquidity > 0) revert NotEmpty();
        delete userPositionInfos[_tokenId];
        // Update Enumerable
        removeToken(msg.sender, _tokenId);
        nonfungiblePositionManager.burn(_tokenId);
        emit Withdraw(msg.sender, address(0), positionInfo.pid, _tokenId);
    }

    /// @notice Update vvs reward for all the liquidity mining pool.
    function massUpdatePools() internal {
        uint32 currentTime = uint32(block.timestamp);
        for (uint256 pid = 1; pid <= poolLength; pid++) {
            PoolInfo memory pool = poolInfo[pid];
            IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
            if (address(lmPool) != address(0)) {
                lmPool.accumulateLmReward(currentTime);
            }
        }
    }

    /// @notice Update vvs reward for the liquidity mining pool.
    /// @dev Avoid too many pools, and a single transaction cannot be fully executed for all pools.
    function updatePools(uint256[] calldata pids) external onlyOwner {
        uint32 currentTime = uint32(block.timestamp);
        for (uint256 i = 0; i < pids.length; i++) {
            PoolInfo memory pool = poolInfo[pids[i]];
            IVVSV3LmPool lmPool = IVVSV3LmPool(pool.v3Pool.lmPool());
            if (address(lmPool) != address(0)) {
                lmPool.accumulateLmReward(currentTime);
            }
        }
    }

    /// @notice Transfer ETH in a safe way
    /// @param to      - address to transfer ETH to
    /// @param value   - ETH amount to transfer (in wei)
    function safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}('');
        if (!success) revert();
    }

    /// @notice harvest vvs reward from craftsman pool
    /// @dev Only lmPool calls are allowed
    /// @param v3PoolAddress  - The v3 pool address
    function harvestVVSFromCraftsman(address v3PoolAddress) external virtual returns (uint256 vvsReceived) {
        PoolInfo memory pidPoolInfo = poolInfo[v3PoolAddressPid[v3PoolAddress]];
        require(msg.sender == pidPoolInfo.v3Pool.lmPool(), 'only lmPool calls are allowed');
        if (pidPoolInfo.totalLiquidity == 0) {
            return 0;
        }
        uint256 vvsBalanceBefore = vvs.balanceOf(address(this));
        pidPoolInfo.craftsman.deposit(pidPoolInfo.depositTokenPid, 0);
        vvsReceived = vvs.balanceOf(address(this)) - vvsBalanceBefore;
    }

    /// @notice Notify rewarders when the tick is crossed due to swap
    /// @dev This method needs to be implemented when the contract is upgraded. Only lmPool calls are allowed.
    ///      There will be a need to add rewarder contract to v3 farm in the future
    /// @param v3PoolAddress    - The v3 pool address
    /// @param tick             - The tick that was crossed
    /// @param zeroForOne       - Direction of trade
    function onCrossTick(address v3PoolAddress, int24 tick, bool zeroForOne) public virtual {}

    receive() external payable {
        if (msg.sender != address(nonfungiblePositionManager)) revert();
    }
}
