// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

contract MarketplacePool is
    Ownable2StepUpgradeable,
    ERC20Upgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    uint256 private constant _MAX_AMOUNT_DEPOSITED = 100000 * 10**18; // Max amount of sBST that can be in this contract
    uint256 private constant _MIN_AMOUNT_DEPOSITED = 500 * 10**18; // Min amount of sBST CP needs to add for collateral

    address private _factory;
    address private _bsWallet;
    address private _cpWallet;
    address private _sbstContract;
    bool private _poolInitialized = false;
    bool private _isConfigured = false;
    bool private _isCappedReached = false;
    bool private _isAllowedToWithdraw = false;
    uint256 private _totalDeposited;
    uint256 private _cpDeposit;

    uint256 private _start;
    uint256 private _duration;
    uint256 private _maxPledge;
    uint256 private _lockPeriod;
    uint256 private _lockEnd;

    uint256 private _rewardIndex;

    mapping(address => uint256) private _deposited;
    mapping(address => uint256) private _rewardIndexOf;

    IERC20Upgradeable private _rewardToken;

    /// @notice Event signals that campaign was successful and pool will receive rewards
    /// @param lockEnd End time of lock for users in unix timestamp
    event Capped(uint256 lockEnd);
    /// @notice Event triggers when marketplace pool is configured
    /// @param startTime Start time of campaign in unix timestamp
    /// @param duration Max duration of campaign in unix timestamp
    /// @param maxPledge Max pledge for user to deposit
    event PoolCampaignConfigured(
        uint256 startTime,
        uint256 duration,
        uint256 maxPledge
    );
    /// @notice Event triggers every time a deposit is made
    /// @param owner Address of user wallet
    /// @param inAmount Amount of sBST staked
    /// @param outAmount Amount of staked sBST returned (your share in the pool)
    event Deposit(address indexed owner, uint256 inAmount, uint256 outAmount);
    /// @notice Event triggers every time a withdrawal is made
    /// @param owner Address of user wallet
    /// @param inAmount Amount of staked sBST
    /// @param outAmount Amount of sBST returned
    /// @param reward Amount of BST user got as reward
    event Withdraw(
        address indexed owner,
        uint256 inAmount,
        uint256 outAmount,
        uint256 reward
    );
    /// @notice Event triggers every time a reward is added
    /// @param from Address of user who added reward
    /// @param amount Amount of BST added as reward
    event Reward(address indexed from, uint256 amount);
    /// @notice Event triggers when certified partners adds collateral
    /// @param amount Amount of collateral added
    /// @param lockPeriod Lock period for investors
    event CPInitialized(uint256 amount, uint256 lockPeriod);
    /// @notice Event triggers when lock period for certified partner is extended
    /// @param extension Additional time in seconds
    event LockExtended(uint256 extension);
    /// @notice Event triggers when collateral is liquidated
    /// @param amount Amount of collateral liquidated
    event LiquidateCPCollateral(uint256 amount);
    /// @notice Event signals allowance for certified partner to withdraw collateral
    event CPCanWithdraw();

    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize contract. Can only be called once
    /// @param cpWallet Wallet address of CP
    /// @param bsWallet Wallet of blocksquare member
    /// @param factory Address of Marketplace Pool Proxy Factory
    /// @param reward Address of reward token contract
    /// @param sbstContract Governance pool contract
    /// @param ownerWallet Owner of this pool (usually some multisig governance wallet)
    /// @param tokenName Name of staked token
    /// @param tokenSymbol Symbol of staked token
    function initialize(
        address cpWallet,
        address bsWallet,
        address factory,
        address reward,
        address sbstContract,
        address ownerWallet,
        string memory tokenName,
        string memory tokenSymbol
    ) external initializer {
        __ERC20_init(tokenName, tokenSymbol);
        __Ownable_init();
        __ReentrancyGuard_init();
        _sbstContract = sbstContract;
        _rewardToken = IERC20Upgradeable(reward);
        _factory = factory;
        _transferOwnership(ownerWallet);
        _bsWallet = bsWallet;
        _cpWallet = cpWallet;
    }

    /// @notice CP initializes the pool
    /// @param amount Initial amount of sBST
    /// @param lockPeriod Duration in seconds of how long users are locked
    function CPInit(uint256 amount, uint256 lockPeriod) external {
        require(
            _msgSender() == _cpWallet,
            "MarketplacePool: Only CP can initialize pool!"
        );
        require(
            90 days <= lockPeriod && lockPeriod <= 365 days,
            "MarketplacePool: lock must be between 90 and 365 days!"
        );
        require(
            _MIN_AMOUNT_DEPOSITED <= amount &&
                amount <= _MAX_AMOUNT_DEPOSITED - 1000 ether,
            "MarketplacePool: Initial deposit must be between 500 and 99k!"
        );
        require(
            !_poolInitialized,
            "MarketplacePool: Pool already initialized!"
        );
        IERC20Upgradeable(_sbstContract).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );
        _deposited[_msgSender()] += amount;
        _totalDeposited += amount;
        _cpDeposit = amount;
        _lockPeriod = lockPeriod;
        _poolInitialized = true;
        emit CPInitialized(amount, lockPeriod);
    }

    /// @notice Used by Blocksquare to configure pool investments
    /// @param start Start in timestamp when user are allowed to invest (should be in the future)
    /// @param duration Duration in seconds how loong is the investment period (needs to be between 5 and 30 days long)
    /// @param maxPledge Starting maximum amount of sBST each user can invest (increases until half of duration, after that there is no maximum)
    function configurePoolCampaign(
        uint256 start,
        uint256 duration,
        uint256 maxPledge
    ) external {
        require(
            _msgSender() == _bsWallet,
            "MarketplacePool: Only blocksquare wallet can configure pool campaign!"
        );
        require(!_isConfigured, "MarketplacePool: Pool already configured!");
        require(
            _cpDeposit >= _MIN_AMOUNT_DEPOSITED,
            "MarketplacePool: CP must first deposit initial collateral!"
        );
        require(
            start >= block.timestamp,
            "MarketplacePool: Campaign should start in the future"
        );
        require(
            maxPledge <= _MAX_AMOUNT_DEPOSITED - _cpDeposit,
            "MarketplacePool: Max pledge set too high!"
        );
        require(
            duration >= 5 days && duration <= 30 days,
            "MarketplacePool: Campaign needs to be between 5 and 30 days long"
        );
        _start = start;
        _duration = duration;
        _maxPledge = maxPledge;
        _isConfigured = true;
        emit PoolCampaignConfigured(start, duration, maxPledge);
    }

    /// @notice Allows users to deposit sBST during the camping
    /// @param amount Amount sBST to deposit
    function depositInCampaign(uint256 amount) external {
        require(
            _isConfigured && _poolInitialized && !_isCappedReached,
            "MarketplacePool: Pool needs to be configured first!"
        );
        require(
            _totalDeposited + amount <= _MAX_AMOUNT_DEPOSITED,
            "MarketplacePool: Staked amount would exceed maximum!"
        );
        if (_msgSender() == _cpWallet) {
            require(
                _start + _duration <= block.timestamp &&
                    block.timestamp <= _start + _duration + 10 days,
                "MarketplacePool: Only CP can deposit after campaign ends!"
            );
            require(
                _totalDeposited - _cpDeposit > 0,
                "MarketplacePool: At least one user needs to deposit during campaign"
            );
        } else {
            require(
                _start <= block.timestamp &&
                    block.timestamp <= _start + _duration,
                "MarketplacePool: Can only deposit during campaign!"
            );
            if (_start + (_duration / 2) > block.timestamp) {
                uint256 currentMaxPledge = _maxPledge +
                    (((_MAX_AMOUNT_DEPOSITED - _cpDeposit - _maxPledge) /
                        (_duration / 2)) * (block.timestamp - _start));
                require(
                    _deposited[_msgSender()] + amount <= currentMaxPledge,
                    "MarketplacePool: Amount exceeds current max pledge!"
                );
            }
        }
        _deposit(amount);
        if (_totalDeposited == _MAX_AMOUNT_DEPOSITED) {
            _isCappedReached = true;
            _lockEnd = block.timestamp + _lockPeriod;
            emit Capped(_lockEnd);
        }
    }

    /// @notice It withdraws all staked sBST tokens and makes deposit equal to previous staked plus `amount`
    /// @dev Wraps withdraw and deposit for cases when you wish to increase your stake
    /// @param amount Additional amount of sBST to deposit
    function redeposit(uint256 amount) external {
        uint256 alreadyIn = _deposited[_msgSender()];
        withdraw();
        deposit(alreadyIn + amount);
    }

    /// @notice Triggered by owner to allow CP to collect his collateral
    function allowExtractionOfCollateral() external onlyOwner {
        require(
            _lockEnd > 0 && _lockEnd + _lockPeriod <= block.timestamp,
            "MarketplacePool: CP lock period must end!"
        );
        _isAllowedToWithdraw = true;
        emit CPCanWithdraw();
    }

    /// @notice Triggered by owner to withdraw all of CP's collateral
    function liquidateCPCollateral() external onlyOwner {
        require(
            _lockEnd > 0 &&
                !_isAllowedToWithdraw &&
                _lockEnd + _lockPeriod <= block.timestamp,
            "MarketplacePool: CP lock period must end!"
        );
        uint256 amount = _cpDeposit;
        _cpDeposit = 0;
        _deposited[_cpWallet] = 0;
        _totalDeposited -= amount;
        IERC20Upgradeable(_sbstContract).safeTransfer(owner(), amount);
        emit LiquidateCPCollateral(amount);
    }

    /// @notice Triggered by owner to expand CP's lock duration
    function extendCPLockPeriod(uint256 extendBy) external onlyOwner {
        require(
            _lockEnd > 0 &&
                !_isAllowedToWithdraw &&
                _lockEnd + _lockPeriod <= block.timestamp,
            "MarketplacePool: CP lock period must end!"
        );
        _lockPeriod += extendBy;
        emit LockExtended(extendBy);
    }

    /// @notice Adds `amount` reward
    /// @param amount Amount of reward
    function addReward(uint256 amount) external nonReentrant {
        require(
            _isCappedReached,
            "MarketplacePool: Can distribute reward only to successful pools!"
        );
        _rewardToken.safeTransferFrom(_msgSender(), address(this), amount);
        _rewardIndex += (amount * 1 ether) / totalSupply();
        emit Reward(_msgSender(), amount);
    }

    /// @notice Returns total amount sBST deposited
    /// @return Amount of sBST deposited
    function totalDeposited() external view returns (uint256) {
        return _totalDeposited;
    }

    /// @notice Returns amount sBST deposited by CP
    /// @return Amount of sBST deposited by CP
    function totalCollateral() external view returns (uint256) {
        return _cpDeposit;
    }

    /// @notice Returns timestamp of user lock
    /// @return End time of user lock in timestamp format
    function userLockEnd() external view returns (uint256) {
        return _lockEnd;
    }

    /// @notice Return current unclaimed reward for given wallet
    /// @param wallet Address to check reward for
    /// @return Reward amount
    function getUnclaimedReward(address wallet) public view returns (uint256) {
        return
            (balanceOf(wallet) * (_rewardIndex - _rewardIndexOf[wallet])) /
            1 ether;
    }

    /// @notice Withdraw all of sBST and reward
    function withdraw() public nonReentrant {
        require(
            _isConfigured,
            "MarketplacePool: Pool needs to be configured first!"
        );
        require(
            _deposited[_msgSender()] > 0,
            "MarketplacePool: Can only withdraw if deposit was made!"
        );
        uint256 toReturn = 0;
        if (_msgSender() == _cpWallet) {
            toReturn = _withdrawCP();
        } else {
            toReturn = _withdrawUser();
        }
        IERC20Upgradeable(_sbstContract).safeTransfer(_msgSender(), toReturn);
    }

    /// @notice Deposit sBST, used after campaign and user lock ends
    /// @param amount Amount of sBST to deposit
    function deposit(uint256 amount) public {
        require(
            _isCappedReached,
            "MarketplacePool: Can only deposit if capped was reached during campaign!"
        );
        require(
            _totalDeposited + amount <= _MAX_AMOUNT_DEPOSITED,
            "MarketplacePool: Can't exceed max allowed deposit!"
        );
        require(
            (_msgSender() != _cpWallet && _deposited[_msgSender()] == 0) ||
                _msgSender() == _cpWallet,
            "MarketplacePool: You need to withdraw first!"
        );
        _deposit(amount);
    }

    /// @dev Private function which handles the common part of campaign and after campaign deposit
    /// @param amount Amount of sBST to deposit
    function _deposit(uint256 amount) private {
        IERC20Upgradeable(_sbstContract).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );
        uint256 amountToMint = 0;
        if (_msgSender() == _cpWallet) {
            _cpDeposit += amount;
        } else {
            _rewardIndexOf[_msgSender()] = _rewardIndex;
            _mint(_msgSender(), amount);
        }
        _deposited[_msgSender()] += amount;
        _totalDeposited += amount;
        emit Deposit(_msgSender(), amount, amountToMint);
    }

    /// @dev Handles withdrawal for CP
    /// Can only withdraw if owner allowed CP to withdraw or campaign was unsuccessful
    function _withdrawCP() private returns (uint256) {
        require(
            _isAllowedToWithdraw ||
                (!_isCappedReached &&
                    _start + _duration + 10 days <= block.timestamp),
            "MarketplacePool: CP can't withdraw yet"
        );
        uint256 cpDeposited = _cpDeposit;
        _totalDeposited -= _cpDeposit;
        _cpDeposit = 0;
        _deposited[_msgSender()] = 0;
        emit Withdraw(_msgSender(), 0, cpDeposited, 0);
        return cpDeposited;
    }

    /// @dev Function which handles user's withdrawal.
    /// User can withdraw if campaign was successful and lock period has ended or if campaign failed and appropriate amount of time has passed
    function _withdrawUser() private returns (uint256) {
        require(
            (_isCappedReached && _lockEnd <= block.timestamp) ||
                (!_isCappedReached &&
                    _start + _duration + 10 days <= block.timestamp),
            "MarketplacePool: User can't withdraw yet"
        );
        require(
            balanceOf(_msgSender()) > 0,
            "MarketplacePool: You need to stake sBST first."
        );
        uint256 reward = getUnclaimedReward(_msgSender());
        uint256 userDeposited = _deposited[_msgSender()];
        if (reward > 0) {
            _rewardToken.safeTransfer(_msgSender(), reward);
        }
        _deposited[_msgSender()] = 0;
        _burn(_msgSender(), userDeposited);
        _totalDeposited -= userDeposited;
        emit Withdraw(_msgSender(), userDeposited, userDeposited, reward);
        return userDeposited;
    }

    /// @dev Don't allow the transfer of staked sBST (token is only used for tracking share)
    function _transfer(
        address,
        address,
        uint256
    ) internal pure override {
        revert("Staked sBST is non transferable");
    }
}
