//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "../interfaces/IVBuni.sol";
import "./Authorization.sol";

contract SyrupStakingPool is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Authorization testnet
    // Authorization public constant AUTHORIZATION_CONTRACT = Authorization(0xF83A9436D7099D4FC3088f927901BaaEE7380a28);

    // Authorization mainnet
    Authorization public constant AUTHORIZATION_CONTRACT = Authorization(0x97620C562b732bF52ed191dFcBE813F5F0ceDDFF);

    // Vest time lock
    uint256 public constant VEST_TIME_LOCK = 30 days;

    // Whether a limit is set for users
    bool public hasUserLimit;

    // Accrued token per share
    uint256 public accTokenPerShare;

    // The block number when token mining ends.
    uint256 public bonusEndBlock;

    // The block number when token mining starts.
    uint256 public startBlock;

    // The block number of the last pool update
    uint256 public lastRewardBlock;

    // The pool limit (0 if none)
    uint256 public poolLimitPerUser;

    // token tokens created per block.
    uint256 public rewardPerBlock;

    // The precision factor
    uint256 public PRECISION_FACTOR;

    // The staked token
    IERC20 public stakedToken;

    // The reward token
    IVBuni public nftReward;

    // Deposit fee
    uint256 public depositFeeRate;
    // Deposit BASIS POINT
    uint256 public constant BASIS_POINT = 1000;
    // Info of each user that stakes tokens (stakedToken)
    mapping(address => UserInfo) public userInfo;
    // 
    mapping (address => WithdrawAppoint) public withdrawAppoints;
    mapping (address => uint256) public unclaimedRewards;

    struct UserInfo {
        uint256 amount; // How many staked tokens the user has provided
        uint256 rewardDebt; // Reward debt
    }

    struct WithdrawAppoint {
        uint256 amount;
        uint256 releaseTime;
    }

    uint256 public stakedTokenSupply;

    event AdminTokenRecovery(address tokenRecovered, uint256 amount);
    event Deposit(address indexed user, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 amount);
    event NewStartAndEndBlocks(uint256 startBlock, uint256 endBlock);
    event NewRewardPerBlock(uint256 rewardPerBlock);
    event NewPoolLimit(uint256 poolLimitPerUser);
    event RewardsStop(uint256 blockNumber);
    event AppointWithdraw(address indexed user, uint256 amount, uint256 reward, uint256 releaseTime);
    event Withdraw(address indexed user, uint256 amount);
    event Harvest(address indexed user, uint256 amount);

    /*
     * @notice Initialize the contract
     * @param _stakedToken: staked token address
     * @param _nftReward: reward token address
     * @param _rewardPerBlock: reward per block
     * @param _startBlock: start block
     * @param _bonusEndBlock: end block
     * @param _poolLimitPerUser: pool limit per user in stakedToken (if any, else 0)
     * @param _admin: admin address with ownership
     */
    function initialize(
        IERC20 _stakedToken,
        IVBuni _nftReward,
        uint256 _rewardPerBlock,
        uint256 _startBlock,
        uint256 _bonusEndBlock,
        uint256 _poolLimitPerUser,
        address _admin
    ) public initializer {
        __Ownable_init();
        __ReentrancyGuard_init();

        stakedToken = _stakedToken;
        nftReward = _nftReward;
        rewardPerBlock = _rewardPerBlock;
        startBlock = _startBlock;
        bonusEndBlock = _bonusEndBlock;

        if (_poolLimitPerUser > 0) {
            hasUserLimit = true;
            poolLimitPerUser = _poolLimitPerUser;
        }

        PRECISION_FACTOR = uint256(10 ** 12);

        // Set the lastRewardBlock as the startBlock
        lastRewardBlock = startBlock;

        // Transfer ownership to the admin address who becomes owner of the contract
        transferOwnership(_admin);
    }

    /*
     * @notice Deposit staked tokens and collect reward tokens (if any)
     * @param _amount: amount to deposit
     */
    function deposit(uint256 _amount) external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];

        if (hasUserLimit) {
            require(
                _amount.add(user.amount) <= poolLimitPerUser,
                "User amount above limit"
            );
        }

        _updatePool();

        if (user.amount > 0) {
            uint256 pending = user
                .amount
                .mul(accTokenPerShare)
                .div(PRECISION_FACTOR)
                .sub(user.rewardDebt);
            if (pending > 0) {
                unclaimedRewards[msg.sender] = unclaimedRewards[msg.sender].add(pending);
            }
        }

        if (_amount > 0) {
            uint256 depositFee = _amount.mul(depositFeeRate).div(BASIS_POINT);

            if (depositFee > 0) {
                stakedToken.safeTransfer(owner(), depositFee);
            }

            user.amount = user.amount.add(_amount.sub(depositFee));
            stakedTokenSupply = stakedTokenSupply.add(_amount.sub(depositFee));

            stakedToken.safeTransferFrom(
                address(msg.sender),
                address(this),
                _amount
            );
        }

        user.rewardDebt = user.amount.mul(accTokenPerShare).div(
            PRECISION_FACTOR
        );

        emit Deposit(msg.sender, _amount);
    }

    function appointWithdraw(
        uint128 _requestId,
        uint256 _amount,
        uint256 _delay,
        bytes memory _signature
    ) external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        require(user.amount >= _amount, "Amount to withdraw too high");

        // create sig
        bytes32 message = keccak256(abi.encodePacked(msg.sender, _amount, _delay, _requestId));
        // verify signature
        AUTHORIZATION_CONTRACT.authorize(message, _requestId, _signature);

        _updatePool();

        WithdrawAppoint storage appoint = withdrawAppoints[msg.sender];
        uint256 pending = user
            .amount
            .mul(accTokenPerShare)
            .div(PRECISION_FACTOR)
            .sub(user.rewardDebt);

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            stakedTokenSupply = stakedTokenSupply.sub(_amount);
            appoint.amount = appoint.amount.add(_amount);
        }

        uint256 totalHarvest = unclaimedRewards[msg.sender].add(pending);
        if (totalHarvest > 0) {
            _harvest(totalHarvest);
        }

        if (block.timestamp.add(_delay) > appoint.releaseTime) {
            appoint.releaseTime = block.timestamp.add(_delay);
        }

        user.rewardDebt = user.amount.mul(accTokenPerShare).div(
            PRECISION_FACTOR
        );

        emit AppointWithdraw(msg.sender, _amount, pending, appoint.releaseTime);
    }

    /*
     * @notice Withdraw staked tokens and collect reward tokens
     * @param _amount: amount to withdraw
     */
    function withdraw() external nonReentrant {
        WithdrawAppoint storage appoint = withdrawAppoints[msg.sender];
        require(appoint.amount > 0, "Withdraw amount is zero");
        require(appoint.releaseTime <= block.timestamp, "Withdraw is pending");

        uint256 amount = appoint.amount;
        stakedToken.safeTransfer(address(msg.sender), amount);

        appoint.amount = 0;
        appoint.releaseTime = 0;

        emit Withdraw(msg.sender, amount);
    }

    function harvest() external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];

        _updatePool();

        uint256 pending = user
            .amount
            .mul(accTokenPerShare)
            .div(PRECISION_FACTOR)
            .sub(user.rewardDebt);

        uint256 totalHarvest = unclaimedRewards[msg.sender].add(pending);
        if (totalHarvest > 0) {
            _harvest(totalHarvest);
        }

        user.rewardDebt = user.amount.mul(accTokenPerShare).div(
            PRECISION_FACTOR
        );
    }

    function _harvest(uint256 _amount) internal {
        nftReward.mint(msg.sender, 14, _amount, block.timestamp.add(VEST_TIME_LOCK));

        if (_amount < unclaimedRewards[msg.sender]) {
            unclaimedRewards[msg.sender] = unclaimedRewards[msg.sender].sub(_amount);
        } else {
            unclaimedRewards[msg.sender] = 0;
        }

        emit Harvest(msg.sender, _amount);
    }

    /*
     * @notice Withdraw staked tokens without caring about rewards rewards
     * @dev Needs to be for emergency.
     */
    function emergencyWithdraw() external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        uint256 amountToTransfer = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;

        if (amountToTransfer > 0) {
            stakedTokenSupply = stakedTokenSupply.sub(amountToTransfer);
            stakedToken.safeTransfer(address(msg.sender), amountToTransfer);
        }

        emit EmergencyWithdraw(msg.sender, user.amount);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw
     * @param _tokenAmount: the number of tokens to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress, uint256 _tokenAmount)
        external
        onlyOwner
    {
        require(
            _tokenAddress != address(stakedToken),
            "Cannot be staked token"
        );

        IERC20(_tokenAddress).safeTransfer(address(msg.sender), _tokenAmount);

        emit AdminTokenRecovery(_tokenAddress, _tokenAmount);
    }

    /*
     * @notice Update pool limit per user
     * @dev Only callable by owner.
     * @param _hasUserLimit: whether the limit remains forced
     * @param _poolLimitPerUser: new pool limit per user
     */
    function updatePoolLimitPerUser(
        bool _hasUserLimit,
        uint256 _poolLimitPerUser
    ) external onlyOwner {
        require(hasUserLimit, "Must be set");
        if (_hasUserLimit) {
            require(
                _poolLimitPerUser > poolLimitPerUser,
                "New limit must be higher"
            );
            poolLimitPerUser = _poolLimitPerUser;
        } else {
            hasUserLimit = _hasUserLimit;
            poolLimitPerUser = 0;
        }
        emit NewPoolLimit(poolLimitPerUser);
    }

    /*
     * @notice Change the deposit fee
     * @dev Only callable by owner.
     */
    function updateDepositFee(uint256 _depositFeeRate) external onlyOwner {
        depositFeeRate = _depositFeeRate;
    }

    function updateRewardPerBlock(uint256 _rewardPerBlock) external onlyOwner {
        rewardPerBlock = _rewardPerBlock;
    }

    /**
     * @notice It allows the admin to update start and end blocks
     * @dev This function is only callable by owner.
     * @param _startBlock: the new start block
     * @param _bonusEndBlock: the new end block
     */
    function updateStartAndEndBlocks(
        uint256 _startBlock,
        uint256 _bonusEndBlock
    ) external onlyOwner {
        require(block.number < startBlock, "Pool has started");
        require(
            _startBlock < _bonusEndBlock,
            "New startBlock must be lower than new endBlock"
        );
        require(
            block.number < _startBlock,
            "New startBlock must be higher than current block"
        );

        startBlock = _startBlock;
        bonusEndBlock = _bonusEndBlock;

        // Set the lastRewardBlock as the startBlock
        lastRewardBlock = startBlock;

        emit NewStartAndEndBlocks(_startBlock, _bonusEndBlock);
    }

    /*
     * @notice View function to see pending reward on frontend.
     * @param _user: user address
     * @return Pending reward for a given user
     */
    function pendingReward(address _user) external view returns (uint256) {
        UserInfo storage user = userInfo[_user];
        uint256 _accTokenPerShare = accTokenPerShare;
        if (block.number > lastRewardBlock && stakedTokenSupply != 0) {
            uint256 multiplier = _getMultiplier(lastRewardBlock, block.number);
            uint256 tokenReward = multiplier.mul(rewardPerBlock);
            _accTokenPerShare = accTokenPerShare.add(
                tokenReward.mul(PRECISION_FACTOR).div(stakedTokenSupply)
            );
        }
        return
            user.amount.mul(_accTokenPerShare).div(PRECISION_FACTOR).sub(
                user.rewardDebt
            ).add(
                unclaimedRewards[_user]
            );
    }

    /*
     * @notice Update reward variables of the given pool to be up-to-date.
     */
    function _updatePool() internal {
        if (block.number <= lastRewardBlock) {
            return;
        }

        if (stakedTokenSupply == 0) {
            lastRewardBlock = block.number;
            return;
        }

        uint256 multiplier = _getMultiplier(lastRewardBlock, block.number);
        uint256 tokenReward = multiplier.mul(rewardPerBlock);
        accTokenPerShare = accTokenPerShare.add(
            tokenReward.mul(PRECISION_FACTOR).div(stakedTokenSupply)
        );
        lastRewardBlock = block.number;
    }

    /*
     * @notice Return reward multiplier over the given _from to _to block.
     * @param _from: block to start
     * @param _to: block to finish
     */
    function _getMultiplier(uint256 _from, uint256 _to)
        internal
        view
        returns (uint256)
    {
        if (_to <= bonusEndBlock) {
            return _to.sub(_from);
        } else if (_from >= bonusEndBlock) {
            return 0;
        } else {
            return bonusEndBlock.sub(_from);
        }
    }

    function getStakedTokenSupply() public view returns (uint256) {
        return stakedTokenSupply;
    }
}
