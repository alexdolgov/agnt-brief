// SPDX-License-Identifier: MIT

pragma solidity =0.6.6;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/ERC721Holder.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/utils/EnumerableSet.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';

import './ICommonStakeERC721EarnERC20.sol';

contract CommonStakeERC721EarnERC20 is ICommonStakeERC721EarnERC20, ERC721Holder, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using SafeERC20 for ERC20;
    using SafeMath for uint256;
    using Address for address;
    using EnumerableSet for EnumerableSet.UintSet;

    // Info of each user.
    struct UserInfo {
        uint256 stakingPower;
        uint256 rewardDebt;
    }

    // Info of each pool.
    struct PoolInfo {
        uint256 allocPoint; // How many allocation points assigned to this pool. TOKENs to distribute per block.
        uint256 lastRewardBlock; // Last block number that TOKENs distribution occurs.
        uint256 accTokenPerShare; // Accumulated TOKENs per share, times 1e12. See below.
        uint256 totalStakingPower; // total has deposit to pool stakingPower
        bool exists; //
    }
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;
    // The block number when TOKEN mining starts.
    uint256 public startBlock;
    // TOKEN tokens created per block.
    uint256 public tokenPerBlock;
    // Accumulated TOKENs per share, times 1e12.
    uint256 public constant accTokenPerShareMultiple = 1E20;
    uint256 public constant ONE_POWER_EIGHTEEN = 1E18;
    // total TOKEN to be mint amount
    uint256 public totalToBeMintAmount = 0;
    // minted TOKEN amount
    uint256 public mintedAmount = 0;
    // The TOKEN TOKEN!
    ERC20 public token;
    address[] public poolAddresses;
    // Info of each pool.
    mapping(address => PoolInfo) public poolInfoMap;
    mapping(address => mapping(uint256 => uint256)) public nftTokenStakingPowerMap;
    mapping(address => mapping(address => UserInfo)) private _poolUserInfoMap;
    mapping(address => mapping(address => EnumerableSet.UintSet)) private _poolUserStakingTokens;

    constructor(
        address _token,
        uint256 _startBlock,
        uint256 _tokenPerBlock
    ) public {
        token = ERC20(_token);
        startBlock = _startBlock;
        tokenPerBlock = _tokenPerBlock;
    }

    function setStartBlock(uint256 _startBlock) public onlyOwner {
        require(block.number <= _startBlock && startBlock >= block.number, 'FORBIDDEN');
        startBlock = _startBlock;
    }

    // *** POOL MANAGER ***
    function poolLength() external view override returns (uint256) {
        return poolAddresses.length;
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // XXX DO NOT add the same LP token more than once. Rewards will be messed up if you do.
    function add(
        uint256 _allocPoint,
        address _pair,
        bool _withUpdate
    ) external override onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        PoolInfo storage pool = poolInfoMap[_pair];
        require(!pool.exists, 'pool already exists');
        uint256 lastRewardBlock = block.number > startBlock ? block.number : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolInfoMap[_pair] = PoolInfo({
            allocPoint: _allocPoint,
            lastRewardBlock: lastRewardBlock,
            accTokenPerShare: 0,
            totalStakingPower: 0,
            exists: true
        });
        poolAddresses.push(_pair);
    }

    // Update the given pool's TOKEN allocation point. Can only be called by the owner.
    function set(address _pair, uint256 _allocPoint) external override onlyOwner {
        PoolInfo storage pool = poolInfoMap[_pair];
        require(pool.exists, 'pool not exists');
        massUpdatePools();
        totalAllocPoint = totalAllocPoint.sub(pool.allocPoint).add(_allocPoint);
        pool.allocPoint = _allocPoint;
    }

    function setLastRewardBlock(address _pair, uint256 _lastRewardBlock) external override onlyOwner {
        PoolInfo storage pool = poolInfoMap[_pair];
        require(pool.exists, 'POOL NOT EXISTS');
        require(
            pool.accTokenPerShare == 0 && _lastRewardBlock >= block.number && pool.lastRewardBlock >= block.number,
            'err'
        );
        pool.lastRewardBlock = _lastRewardBlock;
    }

    function setTokenPerBlock(uint256 _tokenPerBlock) external override onlyOwner {
        require(tokenPerBlock != _tokenPerBlock, ' NOT NEED UPDATE');
        massUpdatePools();
        emit SetTokenPerBlock(_msgSender(), _tokenPerBlock);
        tokenPerBlock = _tokenPerBlock;
    }

    function addTotalToBeMintAmount(uint256 _pendingTotalToBeMintAmount) external override onlyOwner {
        require(_pendingTotalToBeMintAmount != 0);
        massUpdatePools();
        token.safeTransferFrom(_msgSender(), address(this), _pendingTotalToBeMintAmount);
        totalToBeMintAmount = totalToBeMintAmount.add(_pendingTotalToBeMintAmount);
        emit AddTotalToBeMintAmount(_msgSender(), _pendingTotalToBeMintAmount, totalToBeMintAmount);
    }

    // Return total reward over the given _from to _to block.
    function getTotalReward(uint256 _from, uint256 _to) public view override returns (uint256 totalReward) {
        if (_to <= startBlock || mintedAmount >= totalToBeMintAmount) {
            return 0;
        }
        if (_from < startBlock) {
            _from = startBlock;
        }
        return Math.min(totalToBeMintAmount.sub(mintedAmount), _to.sub(_from).mul(tokenPerBlock));
    }

    // View function to see pending TOKENs on frontend.
    function pendingToken(address _pair, address _user) external view override returns (uint256) {
        PoolInfo memory pool = poolInfoMap[_pair];
        if (!pool.exists) {
            return 0;
        }
        UserInfo storage userInfo = _poolUserInfoMap[_pair][_user];
        uint256 accTokenPerShare = pool.accTokenPerShare;
        uint256 stakingPower = pool.totalStakingPower.mul(10**uint256(token.decimals())).div(ONE_POWER_EIGHTEEN);
        if (block.number > pool.lastRewardBlock && stakingPower != 0) {
            uint256 totalReward = getTotalReward(pool.lastRewardBlock, block.number);
            uint256 tokenReward = totalReward.mul(pool.allocPoint).div(totalAllocPoint);
            accTokenPerShare = accTokenPerShare.add(tokenReward.mul(accTokenPerShareMultiple).div(stakingPower));
        }
        return
            userInfo
                .stakingPower
                .mul(accTokenPerShare)
                .mul(10**uint256(token.decimals()))
                .div(ONE_POWER_EIGHTEEN)
                .div(accTokenPerShareMultiple)
                .sub(userInfo.rewardDebt);
    }

    // Update reward vairables for all pools. Be careful of gas spending!
    function massUpdatePools() public override {
        uint256 length = poolAddresses.length;
        for (uint256 i = 0; i < length; ++i) {
            updatePool(poolAddresses[i]);
        }
    }

    function setNftTokenStakingPower(
        address _token,
        uint256 _tokenId,
        uint256 _stakingPower
    ) public onlyOwner {
        nftTokenStakingPowerMap[_token][_tokenId] = _stakingPower;
    }

    function setNftTokenStakingPowerFromTo(
        address _token,
        uint256 _fromTokenId,
        uint256 _toTokenId,
        uint256 _stakingPower
    ) public onlyOwner {
        for (; _fromTokenId <= _toTokenId; _fromTokenId++) {
            setNftTokenStakingPower(_token, _fromTokenId, _stakingPower);
        }
    }

    function batchSetNftTokenStakingPower(
        address _token,
        uint256[] memory _tokenIds,
        uint256[] memory _stakingPowers
    ) public onlyOwner {
        require(_tokenIds.length == _stakingPowers.length, 'LENGTH ERROR');
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            setNftTokenStakingPower(_token, _tokenIds[i], _stakingPowers[i]);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function _updatePool(PoolInfo storage pool) internal {
        if (!pool.exists || block.number <= pool.lastRewardBlock) {
            return;
        }
        uint256 stakingPower = pool.totalStakingPower.mul(10**uint256(token.decimals())).div(ONE_POWER_EIGHTEEN);
        if (stakingPower == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        if (mintedAmount >= totalToBeMintAmount) {
            return;
        }
        uint256 totalReward = getTotalReward(pool.lastRewardBlock, block.number);
        uint256 tokenReward = totalReward.mul(pool.allocPoint).div(totalAllocPoint);
        mintedAmount = mintedAmount.add(tokenReward);
        pool.accTokenPerShare = pool.accTokenPerShare.add(tokenReward.mul(accTokenPerShareMultiple).div(stakingPower));
        pool.lastRewardBlock = block.number;
    }

    function updatePool(address _pair) public override {
        _updatePool(poolInfoMap[_pair]);
    }

    function _harvest(
        address _pair,
        PoolInfo storage pool,
        UserInfo storage userInfo
    ) internal {
        _updatePool(pool);
        if (userInfo.stakingPower != 0) {
            uint256 pending = userInfo
                .stakingPower
                .mul(pool.accTokenPerShare)
                .mul(10**uint256(token.decimals()))
                .div(ONE_POWER_EIGHTEEN)
                .div(accTokenPerShareMultiple)
                .sub(userInfo.rewardDebt);
            if (pending != 0) {
                safeTokenTransfer(_msgSender(), pending);
                emit Harvest(_msgSender(), _pair, pending);
            }
        }
    }

    function harvest(address _pair) external override nonReentrant {
        PoolInfo storage pool = poolInfoMap[_pair];
        UserInfo storage userInfo = _poolUserInfoMap[_pair][_msgSender()];
        _harvest(_pair, pool, userInfo);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(pool.accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
    }

    // Stake LP tokens to TokenMaster for TOKEN allocation.
    function stake(address _pair, uint256 _tokenId) public override nonReentrant whenNotPaused {
        PoolInfo storage pool = poolInfoMap[_pair];
        UserInfo storage userInfo = _poolUserInfoMap[_pair][_msgSender()];
        _harvest(_pair, pool, userInfo);
        uint256 stakingPower = nftTokenStakingPowerMap[_pair][_tokenId];
        IERC721(_pair).safeTransferFrom(_msgSender(), address(this), _tokenId);
        if (stakingPower == 0) {
            stakingPower = ONE_POWER_EIGHTEEN;
            nftTokenStakingPowerMap[_pair][_tokenId] = stakingPower;
        }
        userInfo.stakingPower = userInfo.stakingPower.add(stakingPower);
        _poolUserStakingTokens[_pair][_msgSender()].add(_tokenId);
        pool.totalStakingPower = pool.totalStakingPower.add(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(pool.accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit Stake(_msgSender(), _pair, _tokenId, stakingPower);
    }

    function batchStake(address _pair, uint256[] calldata _tokenIds) external override whenNotPaused {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            stake(_pair, _tokenIds[i]);
        }
    }

    // Unstake LP tokens from TokenMaster.
    function unstake(address _pair, uint256 _tokenId) public override nonReentrant {
        require(_poolUserStakingTokens[_pair][_msgSender()].contains(_tokenId), 'UNSTAKE FORBIDDEN');
        PoolInfo storage pool = poolInfoMap[_pair];
        UserInfo storage userInfo = _poolUserInfoMap[_pair][_msgSender()];
        _harvest(_pair, pool, userInfo);
        uint256 stakingPower = nftTokenStakingPowerMap[_pair][_tokenId];
        userInfo.stakingPower = userInfo.stakingPower.sub(stakingPower);
        _poolUserStakingTokens[_pair][_msgSender()].remove(_tokenId);
        IERC721(_pair).safeTransferFrom(address(this), _msgSender(), _tokenId);
        pool.totalStakingPower = pool.totalStakingPower.sub(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(pool.accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit Unstake(_msgSender(), _pair, _tokenId, stakingPower);
    }

    function batchUnstake(address _pair, uint256[] calldata _tokenIds) external override {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            unstake(_pair, _tokenIds[i]);
        }
    }

    function unstakeAll(address _pair) external override {
        EnumerableSet.UintSet storage stakingTokens = _poolUserStakingTokens[_pair][_msgSender()];
        uint256 length = stakingTokens.length();
        for (uint256 i = 0; i < length; ++i) {
            unstake(_pair, stakingTokens.at(0));
        }
    }

    function emergencyUnstake(address _pair, uint256 _tokenId) public override nonReentrant {
        require(_poolUserStakingTokens[_pair][_msgSender()].contains(_tokenId), ' EMERGENCY UNSTAKE FORBIDDEN');
        PoolInfo storage pool = poolInfoMap[_pair];
        require(pool.exists, 'POOL NOT EXISTS');
        UserInfo storage userInfo = _poolUserInfoMap[_pair][_msgSender()];
        uint256 stakingPower = nftTokenStakingPowerMap[_pair][_tokenId];
        userInfo.stakingPower = userInfo.stakingPower.sub(stakingPower);
        _poolUserStakingTokens[_pair][_msgSender()].remove(_tokenId);
        IERC721(_pair).safeTransferFrom(address(this), _msgSender(), _tokenId);
        pool.totalStakingPower = pool.totalStakingPower.sub(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(pool.accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit EmergencyUnstake(_msgSender(), _pair, _tokenId, stakingPower);
    }

    function emergencyUnstakeAll(address _pair) external override {
        EnumerableSet.UintSet storage stakingTokens = _poolUserStakingTokens[_pair][_msgSender()];
        uint256 length = stakingTokens.length();
        for (uint256 i = 0; i < length; ++i) {
            emergencyUnstake(_pair, stakingTokens.at(0));
        }
    }

    // Safe token transfer function, just in case if rounding error causes pool to not have enough TOKENs.
    function safeTokenTransfer(address _to, uint256 _amount) internal {
        uint256 tokenBal = token.balanceOf(address(this));
        if (_amount > tokenBal) {
            token.safeTransfer(_to, tokenBal);
        } else {
            token.safeTransfer(_to, _amount);
        }
    }

    function pauseStake() external override onlyOwner whenNotPaused {
        _pause();
    }

    function unpauseStake() external override onlyOwner whenPaused {
        _unpause();
    }

    function getUserInfo(address _pair, address user)
        public
        view
        returns (
            uint256,
            uint256,
            uint256[] memory
        )
    {
        UserInfo memory userInfo = _poolUserInfoMap[_pair][user];
        uint256[] memory tokenIds = new uint256[](_poolUserStakingTokens[_pair][user].length());
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            tokenIds[i] = _poolUserStakingTokens[_pair][user].at(i);
        }
        return (userInfo.stakingPower, userInfo.rewardDebt, tokenIds);
    }
}
