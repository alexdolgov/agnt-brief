// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @dev Minimal interface for WAVAX, which has deposit() and withdraw().
 *      If your _initialRewardToken is indeed WAVAX, calling deposit() wraps any AVAX sent.
 */
interface IWAVAX {
    function deposit() external payable;
    function withdraw(uint256) external;
}

/**
 * @title JuicyStaking
 * @notice Version with bracket-based weighting, weighted-average merges,
 *         multiple reward tokens, depositOnBehalf, global unlock,
 *         pendingRewardsAllTokens(...), and claimRewards().
 *         No fees, no emergencyWithdraw, uses a `_distributeRewards` helper.
 */
contract JuicyStaking is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // ------------------------------------------------------------------------
    // Add WAVAX reference
    // ------------------------------------------------------------------------
    IWAVAX public wavax; // We'll interpret the _initialRewardToken as WAVAX


    // ------------------------------------------------------------------------
    // User Info
    // ------------------------------------------------------------------------
    struct UserInfo {
        uint256 amount; // How many Juicy tokens staked
        mapping(IERC20 => uint256) rewardDebt; 
        uint256 lockUntil; // timestamp after which user can withdraw
        uint256 bracket;   // weighting bracket = (lockMonths + 1), but can be averaged
    }

    /// @notice The main staking token (Juicy).
    IERC20 public immutable juicy;
    /// @notice Internal balance of Juicy, updated on deposit/withdraw.
    uint256 public internalJuicyBalance;

    /// @notice Array of reward tokens (like WAVAX, etc.).
    IERC20[] public rewardTokens;
    /// @notice Map if a token is recognized as a reward token.
    mapping(IERC20 => bool) public isRewardToken;
    /// @notice Last recorded balance of each reward token.
    mapping(IERC20 => uint256) public lastRewardBalance;

    /// @notice Accumulated reward per share for each token, scaled by 1e24.
    mapping(IERC20 => uint256) public accRewardPerShare;
    uint256 public constant ACC_REWARD_PER_SHARE_PRECISION = 1e24;

    /// @notice user address => user info
    mapping(address => UserInfo) private userInfo;

    /// @notice Total "effective" staked across all users = sum(user.amount * user.bracket).
    uint256 public totalEffectiveStaked;

    /// @notice If true, user locks are ignored (global unlock).
    bool public globalUnlockActive;

    // ------------------------------------------------------------------------
    // Events
    // ------------------------------------------------------------------------
    event Deposit(address indexed user, uint256 amount);
    event DepositOnBehalf(address indexed caller, address indexed user, uint256 amount, uint256 lockMonths);
    event Withdraw(address indexed user, uint256 amount);
    event ClaimReward(address indexed user, address indexed rewardToken, uint256 amount);

    event RewardTokenAdded(address token);
    event RewardTokenRemoved(address token);
    event TokenSwept(address token, address to, uint256 amount);
    event GlobalUnlockSet(bool active);

    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
    /**
     * @param _juicy The staking token (Juicy).
     * @param _initialRewardToken The initial reward token (like WAVAX).
     *        We'll treat this as WAVAX. If you're truly using WAVAX, calls to deposit() will wrap AVAX.
     */
    constructor(
        IERC20 _juicy,
        IERC20 _initialRewardToken
    ) {
        require(address(_juicy) != address(0), "JuicyStaking: juicy can't be zero");
        require(address(_initialRewardToken) != address(0), "JuicyStaking: reward token can't be zero");

        juicy = _juicy;

        // Mark the initial reward token
        isRewardToken[_initialRewardToken] = true;
        rewardTokens.push(_initialRewardToken);

        // We'll interpret `_initialRewardToken` as WAVAX
        // This is the minimal way to "inject" WAVAX as the auto-wrap contract
        wavax = IWAVAX(address(_initialRewardToken));
    }

    // ------------------------------------------------------------------------
    // View: getUserInfo
    // ------------------------------------------------------------------------
    function getUserInfo(address _user, IERC20 _rewardToken)
        external
        view
        returns (
            uint256 stakedAmount,
            uint256 rewardDebt,
            uint256 lockUntil,
            uint256 bracket
        )
    {
        UserInfo storage user = userInfo[_user];

        stakedAmount = user.amount;
        rewardDebt   = user.rewardDebt[_rewardToken];
        lockUntil    = user.lockUntil;
        bracket      = user.bracket;
    }

    // ------------------------------------------------------------------------
    // Reward Token Management
    // ------------------------------------------------------------------------
    function rewardTokensLength() external view returns (uint256) {
        return rewardTokens.length;
    }

    function addRewardToken(IERC20 _rewardToken) external onlyOwner {
        require(!isRewardToken[_rewardToken], "JuicyStaking: already a reward token");
        require(address(_rewardToken) != address(0), "JuicyStaking: zero address");
        require(rewardTokens.length < 25, "JuicyStaking: too many reward tokens");
        require(accRewardPerShare[_rewardToken] == 0, "JuicyStaking: re-added token?");

        rewardTokens.push(_rewardToken);
        isRewardToken[_rewardToken] = true;
        emit RewardTokenAdded(address(_rewardToken));
    }

    function removeRewardToken(IERC20 _rewardToken) external onlyOwner {
        require(isRewardToken[_rewardToken], "JuicyStaking: not a reward token");
        isRewardToken[_rewardToken] = false;

        uint256 len = rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            if (rewardTokens[i] == _rewardToken) {
                rewardTokens[i] = rewardTokens[len - 1];
                rewardTokens.pop();
                break;
            }
        }
        emit RewardTokenRemoved(address(_rewardToken));
    }

    // ------------------------------------------------------------------------
    // Global Unlock
    // ------------------------------------------------------------------------
    function setGlobalUnlock(bool _active) external onlyOwner {
        globalUnlockActive = _active;
        emit GlobalUnlockSet(_active);
    }

    // ------------------------------------------------------------------------
    // deposit
    // ------------------------------------------------------------------------
    function deposit(uint256 _amount, uint256 _lockMonths) external nonReentrant {
        _doDeposit(msg.sender, msg.sender, _amount, _lockMonths);
    }

    function depositOnBehalf(address _beneficiary, uint256 _amount, uint256 _lockMonths)
        external
        nonReentrant
    {
        require(_beneficiary != address(0), "Zero beneficiary");
        _doDeposit(msg.sender, _beneficiary, _amount, _lockMonths);
        emit DepositOnBehalf(msg.sender, _beneficiary, _amount, _lockMonths);
    }

    // ------------------------------------------------------------------------
    // Internal deposit logic
    // ------------------------------------------------------------------------
    function _doDeposit(
        address _from,
        address _beneficiary,
        uint256 _amount,
        uint256 _lockMonths
    ) internal {
        require(_amount > 0, "Cannot deposit 0 tokens");

        UserInfo storage user = userInfo[_beneficiary];

        uint256 oldEff    = user.amount.mul(user.bracket);

        // For a simple clamp above 12 => bracket=13
        uint256 newBr     = _lockMonths > 12 ? 13 : _lockMonths + 1;
        uint256 newAmount = user.amount.add(_amount);
        uint256 newEff    = _amount.mul(newBr);
        uint256 sumEff    = oldEff.add(newEff);

        // Weighted average bracket
        uint256 finalBracket = sumEff.div(newAmount);
        if (finalBracket < 1) {
            finalBracket = 1;
        }

        user.amount = newAmount;

        // Weighted lock
        {
            uint256 nowTime = block.timestamp;
            uint256 oldTimeLeft = 0;
            if (user.lockUntil > nowTime) {
                oldTimeLeft = user.lockUntil.sub(nowTime);
            }
            uint256 newLockSec = _lockMonths.mul(30 days);
            uint256 finalTimeLeft = 0;
            if (sumEff > 0) {
                finalTimeLeft = (oldEff.mul(oldTimeLeft)).add(newEff.mul(newLockSec)).div(sumEff);
            }
            user.lockUntil = nowTime.add(finalTimeLeft);
        }

        uint256 finalEff = newAmount.mul(finalBracket);

        _distributeRewards(_beneficiary, oldEff, finalEff);

        user.bracket = finalBracket;

        if (oldEff > 0) {
            totalEffectiveStaked = totalEffectiveStaked.sub(oldEff);
        }
        totalEffectiveStaked = totalEffectiveStaked.add(finalEff);

        internalJuicyBalance = internalJuicyBalance.add(_amount);
        juicy.safeTransferFrom(_from, address(this), _amount);

        emit Deposit(_beneficiary, _amount);
    }

    // ------------------------------------------------------------------------
    // withdraw
    // ------------------------------------------------------------------------
    function withdraw(uint256 _amount) external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        require(globalUnlockActive || block.timestamp >= user.lockUntil, "JuicyStaking: lock not expired");

        // old effective
        uint256 oldEff = user.amount.mul(user.bracket);

        require(_amount <= user.amount, "JuicyStaking: withdraw exceeds balance");
        uint256 newAmount = user.amount.sub(_amount);
        uint256 newEff = newAmount.mul(user.bracket);

        // Distribute rewards from oldEff -> newEff
        _distributeRewards(msg.sender, oldEff, newEff);

        // update total staked
        if (oldEff > 0) {
            totalEffectiveStaked = totalEffectiveStaked.sub(oldEff);
        }
        totalEffectiveStaked = totalEffectiveStaked.add(newEff);

        // update user
        user.amount = newAmount;

        // Transfer out
        internalJuicyBalance = internalJuicyBalance.sub(_amount);
        juicy.safeTransfer(msg.sender, _amount);

        emit Withdraw(msg.sender, _amount);
    }

    // ------------------------------------------------------------------------
    // claimRewards()
    // ------------------------------------------------------------------------
    function claimRewards() external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        // if stake=0 => nothing to claim
        uint256 oldEff = user.amount.mul(user.bracket);
        if (oldEff == 0) {
            return;
        }

        // claim => oldEff -> oldEff (stake unchanged)
        _distributeRewards(msg.sender, oldEff, oldEff);
    }

    // ------------------------------------------------------------------------
    // Internal: Distribute Rewards
    // ------------------------------------------------------------------------
    /**
     * @dev Pays out any pending difference based on `_oldEff` -> `_newEff`,
     *      then updates user’s rewardDebt to reflect `_newEff`.
     * @param _user   The user to settle rewards for
     * @param _oldEff Their old effective stake
     * @param _newEff Their new effective stake
     */
    function _distributeRewards(
        address _user,
        uint256 _oldEff,
        uint256 _newEff
    ) internal {
        uint256 len = rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            IERC20 token = rewardTokens[i];
            _updateReward(token);

            // pending = oldEff * accReward - oldDebt
            uint256 oldDebt = userInfo[_user].rewardDebt[token];
            uint256 pending = _oldEff.mul(accRewardPerShare[token]).div(ACC_REWARD_PER_SHARE_PRECISION)
                .sub(oldDebt);

            // Update new rewardDebt
            userInfo[_user].rewardDebt[token] = _newEff.mul(accRewardPerShare[token]).div(ACC_REWARD_PER_SHARE_PRECISION);

            if (pending > 0) {
                _safeTokenTransfer(token, _user, pending);
                emit ClaimReward(_user, address(token), pending);
            }
        }
    }

    // ------------------------------------------------------------------------
    // pendingReward (single token)
    // ------------------------------------------------------------------------
    function pendingReward(address _user, IERC20 _token) public view returns (uint256) {
        require(isRewardToken[_token], "JuicyStaking: not a reward token");
        UserInfo storage user = userInfo[_user];
        uint256 userEff = user.amount.mul(user.bracket);

        uint256 _acc = accRewardPerShare[_token];
        uint256 currBal = _token.balanceOf(address(this));
        uint256 rewardBal = (_token == juicy)
            ? currBal.sub(internalJuicyBalance)
            : currBal;

        if (rewardBal != lastRewardBalance[_token] && totalEffectiveStaked != 0) {
            uint256 added = rewardBal.sub(lastRewardBalance[_token]);
            _acc = _acc.add(
                added.mul(ACC_REWARD_PER_SHARE_PRECISION).div(totalEffectiveStaked)
            );
        }
        uint256 pending = userEff.mul(_acc).div(ACC_REWARD_PER_SHARE_PRECISION)
            .sub(user.rewardDebt[_token]);
        return pending;
    }

    // ------------------------------------------------------------------------
    // pendingRewardsAllTokens(_user)
    // ------------------------------------------------------------------------
    function pendingRewardsAllTokens(address _user)
    external
    view
    returns (IERC20[] memory tokens, uint256[] memory amounts)
    {
        uint256 len = rewardTokens.length;
        tokens = new IERC20[](len);
        amounts = new uint256[](len);

        for (uint256 i = 0; i < len; i++) {
            IERC20 rt = rewardTokens[i];
            tokens[i] = rt;
            // Re-use the single-token view function
            amounts[i] = pendingReward(_user, rt);
        }
        return (tokens, amounts);
    }

    // ------------------------------------------------------------------------
    // _updateReward
    // ------------------------------------------------------------------------
    function _updateReward(IERC20 _token) internal {
        require(isRewardToken[_token], "JuicyStaking: invalid reward token");

        uint256 currBalance = _token.balanceOf(address(this));
        uint256 rewardBalance = (_token == juicy)
            ? currBalance.sub(internalJuicyBalance)
            : currBalance;

        if (rewardBalance == lastRewardBalance[_token] || totalEffectiveStaked == 0) {
            return;
        }

        uint256 added = rewardBalance.sub(lastRewardBalance[_token]);
        accRewardPerShare[_token] = accRewardPerShare[_token].add(
            added.mul(ACC_REWARD_PER_SHARE_PRECISION).div(totalEffectiveStaked)
        );
        lastRewardBalance[_token] = rewardBalance;
    }

    // ------------------------------------------------------------------------
    // sweep
    // ------------------------------------------------------------------------
    function sweep(IERC20 _token, address _to) external onlyOwner {
        require(!isRewardToken[_token] && _token != juicy, "JuicyStaking: can't sweep Juicy or reward token");

        uint256 balance = _token.balanceOf(address(this));
        require(balance > 0, "JuicyStaking: no balance to sweep");

        _token.safeTransfer(_to, balance);
        emit TokenSwept(address(_token), _to, balance);
    }

    // ------------------------------------------------------------------------
    // _safeTokenTransfer
    // ------------------------------------------------------------------------
    function _safeTokenTransfer(IERC20 _token, address _to, uint256 _amount) internal {
        uint256 currBalance = _token.balanceOf(address(this));
        uint256 rewardBalance = (_token == juicy)
            ? currBalance.sub(internalJuicyBalance)
            : currBalance;

        if (_amount > rewardBalance) {
            lastRewardBalance[_token] = lastRewardBalance[_token].sub(rewardBalance);
            _token.safeTransfer(_to, rewardBalance);
        } else {
            lastRewardBalance[_token] = lastRewardBalance[_token].sub(_amount);
            _token.safeTransfer(_to, _amount);
        }
    }

    // ------------------------------------------------------------------------
    // Auto-wrap any AVAX sent
    // ------------------------------------------------------------------------
    /**
     * @dev Whenever someone sends AVAX (no data) to this contract,
     * we call wavax.deposit{value: msg.value}() to wrap it as WAVAX.
     */
    receive() external payable {
        if (msg.value > 0) {
            wavax.deposit{value: msg.value}();
        }
    }

    /**
     * @dev fallback: revert if called with data
     */
    fallback() external payable {
        revert("JuicyStaking: fallback not allowed");
    }
}
