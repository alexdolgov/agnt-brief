// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title Stable arena Staking
 * @notice ArenaStaking is a contract that allows ARENA deposits and receives stablecoins sent by Arena app's daily
 * harvests. Users deposit ARENA and receive a share of what has been sent by Arena app based on their participation of
 * the total deposited ARENA. It is a fork of TraderJoe's sJoe staking contract.
 * Every time `_updateReward(token)` is called, we distribute the balance of that tokens as rewards to users that are
 * currently staking inside this contract, and they can claim it using `withdraw(0)`
 */
contract ArenaStaking is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        mapping(IERC20 => uint256) rewardDebt;
    }

    IERC20 public arena;
    uint256 public internalArenaBalance;
    IERC20[] public rewardTokens;
    mapping(IERC20 => bool) public isRewardToken;
    mapping(IERC20 => uint256) public lastRewardBalance;
    address public feeCollector;
    uint256 public depositFeePercent;
    uint256 public constant DEPOSIT_FEE_PERCENT_PRECISION = 1e18;
    mapping(IERC20 => uint256) public accRewardPerShare;
    uint256 public constant ACC_REWARD_PER_SHARE_PRECISION = 1e24;
    mapping(address => UserInfo) private userInfo;
    bool private reentrant;
    uint256[50] private __gap;


    event Deposit(address indexed user, uint256 amount, uint256 fee);
    event DepositFeeChanged(uint256 newFee, uint256 oldFee);
    event Withdraw(address indexed user, uint256 amount);
    event ClaimReward(address indexed user, address indexed rewardToken, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 amount);
    event RewardTokenAdded(address token);
    event RewardTokenRemoved(address token);
    event TokenSwept(address token, address to, uint256 amount);

    modifier nonReentrant() {
        require(!reentrant, "ArenaStaking: reentrant call");
        reentrant = true;
        _;
        reentrant = false;
    }

      /**
     * @dev Constructor that disables initializers to prevent the implementation contract from being initialized.
     */
    constructor() {
        _disableInitializers();
    }

    function initialize(
        IERC20 _arenaToken,
        IERC20 _rewardToken,
        address _feeCollector,
        address _owner,
        uint256 _depositFeePercent
    ) external initializer {
        __Ownable_init(_owner);
        require(address(_arenaToken) != address(0), "ArenaStaking: arena can't be address(0)");
        require(address(_rewardToken) != address(0), "ArenaStaking: reward token can't be address(0)");
        require(_feeCollector != address(0), "ArenaStaking: fee collector can't be address(0)");
        require(_depositFeePercent <= 5e17, "ArenaStaking: max deposit fee can't be greater than 50%");

        arena = _arenaToken;
        depositFeePercent = _depositFeePercent;
        feeCollector = _feeCollector;
        isRewardToken[_rewardToken] = true;
        rewardTokens.push(_rewardToken);
    }

    /**
     * @notice Authorizes the upgrade of the contract.
     * @param newImplementation The address of the new implementation.
     */
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function deposit(uint256 _amount) external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        uint256 _fee = (_amount * depositFeePercent) / DEPOSIT_FEE_PERCENT_PRECISION;
        uint256 _amountMinusFee = _amount - _fee;
        uint256 _previousAmount = user.amount;
        uint256 _newAmount = user.amount + _amountMinusFee;
        user.amount = _newAmount;

        uint256 _len = rewardTokens.length;
        for (uint256 i = 0; i < _len; i++) {
            IERC20 _token = rewardTokens[i];
            _updateReward(_token);

            uint256 _previousRewardDebt = user.rewardDebt[_token];
            user.rewardDebt[_token] = (_newAmount * accRewardPerShare[_token]) / ACC_REWARD_PER_SHARE_PRECISION;

            if (_previousAmount != 0) {
                uint256 _pending = (_previousAmount * accRewardPerShare[_token]) / ACC_REWARD_PER_SHARE_PRECISION - _previousRewardDebt;
                if (_pending != 0) {
                    _safeTokenTransfer(_token, msg.sender, _pending);
                    emit ClaimReward(msg.sender, address(_token), _pending);
                }
            }
        }

        internalArenaBalance += _amountMinusFee;
        if (_fee > 0) arena.safeTransferFrom(msg.sender, feeCollector, _fee);
        if (_amountMinusFee > 0) arena.safeTransferFrom(msg.sender, address(this), _amountMinusFee);

        emit Deposit(msg.sender, _amountMinusFee, _fee);
    }

    function getUserInfo(address _user, IERC20 _rewardToken) external view returns (uint256, uint256) {
        UserInfo storage user = userInfo[_user];
        return (user.amount, user.rewardDebt[_rewardToken]);
    }

    function rewardTokensLength() external view returns (uint256) {
        return rewardTokens.length;
    }

    function addRewardToken(IERC20 _rewardToken) external onlyOwner {
        require(!isRewardToken[_rewardToken] && address(_rewardToken) != address(0), "ArenaStaking: token can't be added");
        require(rewardTokens.length < 25, "ArenaStaking: list of token too big");
        require(accRewardPerShare[_rewardToken] == 0, "ArenaStaking: reward token can't be re-added");

        rewardTokens.push(_rewardToken);
        isRewardToken[_rewardToken] = true;

        emit RewardTokenAdded(address(_rewardToken));
    }

    function removeRewardToken(IERC20 _rewardToken) external onlyOwner {
        require(isRewardToken[_rewardToken], "ArenaStaking: token can't be removed");
        isRewardToken[_rewardToken] = false;
        uint256 _len = rewardTokens.length;
        for (uint256 i = 0; i < _len; i++) {
            if (rewardTokens[i] == _rewardToken) {
                rewardTokens[i] = rewardTokens[_len - 1];
                rewardTokens.pop();
                break;
            }
        }
        emit RewardTokenRemoved(address(_rewardToken));
    }

    function setDepositFeePercent(uint256 _depositFeePercent) external onlyOwner {
        require(_depositFeePercent <= 5e17, "ArenaStaking: deposit fee can't be greater than 50%");
        uint256 oldFee = depositFeePercent;
        depositFeePercent = _depositFeePercent;
        emit DepositFeeChanged(_depositFeePercent, oldFee);
    }

    function pendingReward(address _user, IERC20 _token) external view returns (uint256) {
        require(isRewardToken[_token], "ArenaStaking: wrong reward token");
        UserInfo storage user = userInfo[_user];
        uint256 _totalArena = internalArenaBalance;
        uint256 _accRewardTokenPerShare = accRewardPerShare[_token];

        uint256 _currRewardBalance = _token.balanceOf(address(this));
        uint256 _rewardBalance = _token == arena ? _currRewardBalance - _totalArena : _currRewardBalance;

        if (_rewardBalance != lastRewardBalance[_token] && _totalArena != 0) {
            uint256 _accruedReward = _rewardBalance - lastRewardBalance[_token];
            _accRewardTokenPerShare = _accRewardTokenPerShare + (_accruedReward * ACC_REWARD_PER_SHARE_PRECISION) / _totalArena;
        }
        return (user.amount * _accRewardTokenPerShare) / ACC_REWARD_PER_SHARE_PRECISION - user.rewardDebt[_token];
    }

    function withdraw(uint256 _amount) external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        uint256 _previousAmount = user.amount;
        require(_amount <= _previousAmount, "ArenaStaking: withdraw amount exceeds balance");
        uint256 _newAmount = user.amount - _amount;
        user.amount = _newAmount;

        uint256 _len = rewardTokens.length;
        if (_previousAmount != 0) {
            for (uint256 i = 0; i < _len; i++) {
                IERC20 _token = rewardTokens[i];
                _updateReward(_token);

                uint256 _pending = (_previousAmount * accRewardPerShare[_token]) / ACC_REWARD_PER_SHARE_PRECISION - user.rewardDebt[_token];
                user.rewardDebt[_token] = (_newAmount * accRewardPerShare[_token]) / ACC_REWARD_PER_SHARE_PRECISION;

                if (_pending != 0) {
                    _safeTokenTransfer(_token, msg.sender, _pending);
                    emit ClaimReward(msg.sender, address(_token), _pending);
                }
            }
        }

        internalArenaBalance -= _amount;
        arena.safeTransfer(msg.sender, _amount);
        emit Withdraw(msg.sender, _amount);
    }


    /**
     * @notice Withdraw without caring about rewards. EMERGENCY ONLY
     */
    function emergencyWithdraw() external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];

        uint256 _amount = user.amount;

        require(_amount > 0, "ArenaStaking: can't withdraw 0");

        user.amount = 0;
        uint256 _len = rewardTokens.length;
        for (uint256 i = 0; i < _len; i++) {
            IERC20 _token = rewardTokens[i];
            user.rewardDebt[_token] = 0;
        }
        internalArenaBalance -= _amount;
        arena.safeTransfer(msg.sender, _amount);
        emit EmergencyWithdraw(msg.sender, _amount);
    }

    /**
     * @dev Update reward variables
     * Needs to be called before any deposit or withdrawal
     * @param _token The address of the reward token
     */
    function _updateReward(IERC20 _token) internal {
        require(isRewardToken[_token], "ArenaStaking: wrong reward token");

        uint256 _totalArena = internalArenaBalance;

        uint256 _currRewardBalance = _token.balanceOf(address(this));
        uint256 _rewardBalance = _token == arena ? _currRewardBalance - _totalArena : _currRewardBalance;

        // Did ArenaStaking receive any token
        if (_rewardBalance == lastRewardBalance[_token] || _totalArena == 0) {
            return;
        }

        uint256 _accruedReward = _rewardBalance - lastRewardBalance[_token];

        accRewardPerShare[_token] = accRewardPerShare[_token] + (_accruedReward * ACC_REWARD_PER_SHARE_PRECISION) / _totalArena;
        lastRewardBalance[_token] = _rewardBalance;
    }

    /**
     * @notice Sweep token to the `_to` address
     * @param _token The address of the token to sweep
     * @param _to The address that will receive `_token` balance
     */
    function sweep(IERC20 _token, address _to) external onlyOwner {
        require(!isRewardToken[_token] && address(_token) != address(arena), "ArenaStaking: token can't be swept");

        uint256 _balance = _token.balanceOf(address(this));

        require(_balance > 0, "ArenaStaking: can't sweep 0");

        _token.safeTransfer(_to, _balance);

        emit TokenSwept(address(_token), _to, _balance);
    }

    /**
     * @dev Safe token transfer function, just in case if rounding error
     * causes pool to not have enough reward tokens
     * @param _token The address of then token to transfer
     * @param _to The address that will receive `_amount` `rewardToken`
     * @param _amount The amount to send to `_to`
     */
    function _safeTokenTransfer(
        IERC20 _token,
        address _to,
        uint256 _amount
    ) internal {
        uint256 _currRewardBalance = _token.balanceOf(address(this));
        uint256 _rewardBalance = _token == arena ? _currRewardBalance - internalArenaBalance : _currRewardBalance;

        if (_amount > _rewardBalance) {
            lastRewardBalance[_token] = lastRewardBalance[_token] - _rewardBalance;
            _token.safeTransfer(_to, _rewardBalance);
        } else {
            lastRewardBalance[_token] = lastRewardBalance[_token] - _amount;
            _token.safeTransfer(_to, _amount);
        }
    }
}
