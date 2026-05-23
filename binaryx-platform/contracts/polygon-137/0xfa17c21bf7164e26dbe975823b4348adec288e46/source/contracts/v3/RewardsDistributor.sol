// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/ICommissionsDistributor.sol";

contract RewardsDistributor is IRewardsDistributor, Initializable {
    using SafeERC20 for IERC20;
    uint256 private constant COMMISSION_PRECISION = 10000; // 100%
    IAddressesProvider public addressesProvider;
    IERC20 public rewardToken;
    uint256 public immutable rewardTokenDecimals = 1e6;

    address[] public registeredAssets;

    // token => Pool Info for that token.
    mapping(address => PoolInfo) public poolInfo;

    // token => Array of Emission point structs.
    mapping(address => EmissionPoint[]) public emissionSchedule;

    // token => user => Info of each user that stakes LP tokens.
    mapping(address => mapping(address => UserInfo)) public userInfo;

    // user => assets
    mapping(address => address[]) public userToRewards;
    // user => token => hasOrNot
    mapping(address => mapping(address => bool)) public userToRewardUniq;

    modifier onlyOwner() {
        require(msg.sender == addressesProvider.getRewardsDistributorAdmin(), "RewardsDistributor: caller is not the RewardsDistributorAdmin");
        _;
    }

    function initialize(IERC20 _rewardToken, IAddressesProvider _addressesProvider) public initializer {
        require(address(_addressesProvider) != address(0), "RewardsDistributor: addresses provider is the zero address");
        require(address(_rewardToken) != address(0), "RewardsDistributor: reward token is the zero address");
        addressesProvider = _addressesProvider;
        rewardToken = _rewardToken;
    }

    function getVersion() external pure returns (uint256) {
        return 2;
    }

    function getRewardToken() external view override returns (address) {
        return address(rewardToken);
    }

    function getPoolInfo(address _token) external view override returns (PoolInfo memory) {
        return poolInfo[_token];
    }

    function poolLength() external view override returns (uint256) {
        return registeredAssets.length;
    }

    function emissionScheduleLength(address _token) external view override returns (uint256) {
        return emissionSchedule[_token].length;
    }

    function getEmissionPoints(address _token, uint256 startIndex) external view override returns (EmissionPoint[] memory emissionPoints) {
        uint256 length = emissionSchedule[_token].length;
        emissionPoints = new EmissionPoint[](length - startIndex);
        for (uint256 i = 0; i < length - startIndex; i++) {
            emissionPoints[i] = emissionSchedule[_token][i + startIndex];
        }
    }

    function claimableRewards(address _user, address[] calldata _tokens) external view override returns (uint256[] memory) {
        uint256[] memory claimable = new uint256[](_tokens.length);
        for (uint256 i = 0; i < _tokens.length; i++) {
            address token = _tokens[i];
            PoolInfo memory pool = poolInfo[token];
            uint256 firstEmissionPoint = pool.currentEmissionPoint;
            uint256 lastEmissionPoint = calculateActualEmissionPointPerPool(token);
            if (emissionSchedule[token].length == 0) {
                continue;
            }
            if (firstEmissionPoint == 0 && emissionSchedule[token][firstEmissionPoint].startTime > block.timestamp) {
                pool.lastRewardTime = block.timestamp;
                continue;
            }
            if (firstEmissionPoint == lastEmissionPoint) {
                EmissionPoint memory emissionPoint = emissionSchedule[token][pool.currentEmissionPoint];
                uint256 startTime = emissionPoint.startTime > pool.lastRewardTime ? emissionPoint.startTime : pool.lastRewardTime;
                uint256 endTime = emissionPoint.endTime > block.timestamp ? block.timestamp : emissionPoint.endTime;
                uint256 duration = startTime > endTime ? 0 : endTime - startTime;
                uint256 reward = duration * emissionPoint.rewardsPerSecond;
                pool.accRewardPerShare = pool.accRewardPerShare + ((reward * 1e12) / ((pool.totalSupply * rewardTokenDecimals) / pool.decimals));
                pool.lastRewardTime = endTime;
            } else {
                for (uint256 j = firstEmissionPoint; j <= lastEmissionPoint; j++) {
                    EmissionPoint memory emissionPoint = emissionSchedule[token][j];
                    uint256 startTime = emissionPoint.startTime > pool.lastRewardTime ? emissionPoint.startTime : pool.lastRewardTime;
                    uint256 endTime = emissionPoint.endTime > block.timestamp ? block.timestamp : emissionPoint.endTime;
                    uint256 duration = startTime > endTime ? 0 : endTime - startTime;
                    uint256 reward = duration * emissionPoint.rewardsPerSecond;
                    pool.accRewardPerShare =
                        pool.accRewardPerShare +
                        ((reward * 1e12) / ((pool.totalSupply * rewardTokenDecimals) / pool.decimals));
                    pool.lastRewardTime = endTime;
                }
            }
            UserInfo memory user = userInfo[token][_user];
            claimable[i] = (((user.amount * rewardTokenDecimals) / pool.decimals) * pool.accRewardPerShare) / 1e12 - user.rewardDebt;
        }
        return claimable;
    }

    function addPool(address _token, uint256 decimals, uint256 _totalSupply) external override onlyOwner {
        require(poolInfo[_token].lastRewardTime == 0, "Pool already exists");
        registeredAssets.push(_token);
        poolInfo[_token] = PoolInfo({
            totalSupply: _totalSupply,
            lastRewardTime: block.timestamp,
            accRewardPerShare: 0,
            currentEmissionPoint: 0,
            isInitialized: false,
            decimals: 10 ** decimals
        });
        emit PoolAdded(_token, _totalSupply);
    }

    function getUserRewards(address _user) external view override returns (address[] memory) {
        return userToRewards[_user];
    }

    function getUserInfo(address _token, address _user) external view override returns (UserInfo memory) {
        return userInfo[_token][_user];
    }

    function initializePool(address _token) public override onlyOwner {
        require(!poolInfo[_token].isInitialized, "Pool already initialized");
        poolInfo[_token].isInitialized = true;
        emit PoolInitialized(_token);
    }

    function onUserBalanceChanged(address _user, uint256 _balance) external override {
        // note: msg.sender here is token's address
        PoolInfo storage pool = poolInfo[msg.sender];
        require(pool.lastRewardTime > 0, "Pool not found");
        _updatePool(msg.sender);
        UserInfo storage user = userInfo[msg.sender][_user];

        if (!userToRewardUniq[_user][msg.sender]) {
            userToRewards[_user].push(msg.sender);
            userToRewardUniq[_user][msg.sender] = true;
        }

        if (user.amount > 0) {
            uint256 pending = (((user.amount * rewardTokenDecimals) / pool.decimals) * pool.accRewardPerShare) / 1e12 - user.rewardDebt;
            if (pending > 0) {
                user.baseClaimable += pending;
            }
        }
        user.amount = _balance;
        user.rewardDebt = (((_balance * rewardTokenDecimals) / pool.decimals) * pool.accRewardPerShare) / 1e12;

        emit UserBalanceUpdated(msg.sender, _user, _balance);
    }

    function claim(address _user, address[] calldata _tokens) external override {
        uint256 pending;
        for (uint i = 0; i < _tokens.length; i++) {
            PoolInfo storage pool = poolInfo[_tokens[i]];
            require(pool.lastRewardTime > 0, "Pool not found");
            _updatePool(_tokens[i]);

            UserInfo storage user = userInfo[_tokens[i]][_user];
            uint256 currentRewardDebt = (((user.amount * rewardTokenDecimals) / pool.decimals) * pool.accRewardPerShare) / 1e12;
            uint rewardFromThisAsset = (currentRewardDebt - user.rewardDebt) + user.baseClaimable;
            user.claimed += rewardFromThisAsset;
            pending = pending + rewardFromThisAsset;
            user.baseClaimable = 0;
            user.rewardDebt = currentRewardDebt;
        }
        safeRewardTokenTransfer(_user, pending);
        emit Claimed(_user, pending, block.timestamp);
    }

    function calculateActualEmissionPointPerPool(address _token) public view override returns (uint256) {
        uint256 currentEmissionPoint = poolInfo[_token].currentEmissionPoint;
        EmissionPoint[] storage schedule = emissionSchedule[_token];
        if (schedule.length == 0) {
            return 0;
        }
        for (uint256 i = currentEmissionPoint; i < schedule.length; i++) {
            if (schedule[i].startTime <= block.timestamp && block.timestamp < schedule[i].endTime) {
                return i;
            }
        }
        return schedule.length - 1;
    }

    function payForRent(address token, uint256 amount, uint128 startTime, uint128 endTime) public override onlyOwner {
        require(poolInfo[token].isInitialized, "Pool not initialized");
        require(amount > 0, "Asset: amount must be greater than 0");
        require(startTime < endTime, "Asset: startTime must be less than endTime");
        if (emissionSchedule[token].length != 0) {
            require(
                emissionSchedule[token][emissionSchedule[token].length - 1].endTime <= startTime,
                "Asset: startTime must be greater or equal to last emission endTime"
            );
        }
        rewardToken.safeTransferFrom(msg.sender, address(this), amount);
        ICommissionsDistributor commissionDistributor = ICommissionsDistributor(addressesProvider.getCommissionsDistributor());
        uint256 commission = commissionDistributor.getPayForRentCommissionAmount(token, amount);
        rewardToken.safeApprove(address(commissionDistributor), commission);
        uint256 totalCommission = commissionDistributor.payRentCommission(token, address(rewardToken), amount);
        uint128 duration = endTime - startTime;
        uint256 rewardsPerSecond = (amount - totalCommission) / duration;
        EmissionPoint memory emissionPoint = EmissionPoint(startTime, endTime, rewardsPerSecond);
        emissionSchedule[token].push(emissionPoint);
        _updatePool(token);
        emit PaidRent(msg.sender, token, amount, startTime, endTime, block.timestamp);
    }

    function _updatePool(address _token) internal {
        PoolInfo storage pool = poolInfo[_token];
        if (block.timestamp <= pool.lastRewardTime || !pool.isInitialized || emissionSchedule[_token].length == 0) {
            return;
        }
        uint256 firstEmissionPoint = pool.currentEmissionPoint;
        uint256 lastEmissionPoint = calculateActualEmissionPointPerPool(_token);
        if (firstEmissionPoint == 0 && emissionSchedule[_token][firstEmissionPoint].startTime > block.timestamp) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        if (firstEmissionPoint == lastEmissionPoint) {
            EmissionPoint memory emissionPoint = emissionSchedule[_token][pool.currentEmissionPoint];
            uint256 startTime = emissionPoint.startTime > pool.lastRewardTime ? emissionPoint.startTime : pool.lastRewardTime;
            uint256 endTime = emissionPoint.endTime > block.timestamp ? block.timestamp : emissionPoint.endTime;
            uint256 duration = startTime > endTime ? 0 : endTime - startTime;
            uint256 reward = duration * emissionPoint.rewardsPerSecond;
            pool.accRewardPerShare = pool.accRewardPerShare + ((reward * 1e12) / ((pool.totalSupply * rewardTokenDecimals) / pool.decimals));
            pool.lastRewardTime = endTime;
        } else {
            for (uint256 i = firstEmissionPoint; i <= lastEmissionPoint; i++) {
                EmissionPoint memory emissionPoint = emissionSchedule[_token][i];
                uint256 endTime = emissionPoint.endTime > block.timestamp ? block.timestamp : emissionPoint.endTime;
                uint256 startTime = emissionPoint.startTime > pool.lastRewardTime ? emissionPoint.startTime : pool.lastRewardTime;
                uint256 duration = startTime > endTime ? 0 : endTime - startTime;
                uint256 reward = duration * emissionPoint.rewardsPerSecond;
                pool.accRewardPerShare = pool.accRewardPerShare + ((reward * 1e12) / ((pool.totalSupply * rewardTokenDecimals) / pool.decimals));
                pool.lastRewardTime = endTime;
            }
            pool.currentEmissionPoint = lastEmissionPoint;
        }
    }

    function safeRewardTokenTransfer(address _to, uint256 _amount) private {
        uint256 rewardTokenBalance = rewardToken.balanceOf(address(this));
        if (_amount > rewardTokenBalance) {
            rewardToken.safeTransfer(_to, rewardTokenBalance);
        } else {
            rewardToken.safeTransfer(_to, _amount);
        }
    }
}
