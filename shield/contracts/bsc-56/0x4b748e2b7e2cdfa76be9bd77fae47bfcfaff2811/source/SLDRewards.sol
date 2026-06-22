// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;
import "./SLDCommon.sol";

contract SLDRewards is Ownable {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;
    IBEP20 public rewardsToken;

    uint256 internal constant TOTALSUPPLY = 1e9; // Total supply of Shield Token
    uint256 internal constant PRICE_DECIMALS = 1e18;
    uint256 internal constant percentageDenominator = 100;

    uint256 public TOTAL_REWARDS = TOTALSUPPLY.mul(1e18).mul(50).div(100); // 50% total supply should be rewarded
    uint256 public rewardsPerBlockForLP1 = 3e17; // Public pool mining rewards per block

    uint256 public minStakeAmount = 1e18;

    bytes4 private constant SELECTOR_TRANSFER_FROM =
        bytes4(keccak256(bytes("transferFrom(address,address,uint256)")));
    bytes4 private constant SELECTOR_TRANSFER =
        bytes4(keccak256(bytes("transfer(address,uint256)")));

    // Fiat tokens
    uint256 internal constant DAI = 1;
    uint256 internal constant USDT = 2;
    uint256 internal constant USDC = 3;

    uint256 public sldPriceForRewardsNumerator = 20; // SLD price, mean 0.2U
    uint256 public sldPriceForRewardsDenominator = 100;
    uint256 public sldRewardsNumeratorForLP2 = 15; // Portion of private pool rewards
    uint256 public rewardDecimal = 100;

    uint256 public sldLocked = TOTAL_REWARDS; // Total locked SLD amount
    uint256 public halvingNumerator = 20; // means total mined token reached 20% of the total locked, halving the mining reward

    uint256 public unlockedPortionForLP1Mining = 30; // means 30%

    uint256 public sldThreshold =
        sldLocked.mul(halvingNumerator).div(percentageDenominator);

    uint256 public constant LOCKPERIOD = 180; // Public pool mining reward should be locked by 180 days

    mapping(address => uint256) public reTokens; // Mapping of reTokens
    mapping(uint256 => address) public reTokenAddrs;

    uint256 public weeklyRewardA = 1000 * 1e18; // means 1000 SLD
    uint256 public weeklyRewardB = 700 * 1e18; // means 700 SLD
    uint256 public weeklyRewardC = 500 * 1e18; // means 500 SLD

    uint256 public sldUnlocked; // Total unlocked SLD amount(Public pool mining + private pool mining + liquidation rewards)

    uint256 public totalVested; // Total vested SLD amount since last halved

    // Private pool reward info
    struct ClaimLP2 {
        uint256 claimed;
        uint256 claimable;
    }

    uint256 public sldUnlockedForLP2;
    mapping(address => ClaimLP2) public sldRewardsForLP2;
    mapping(address => bool) public keeperMap;

    struct LP1Info {
        // Locked
        uint256 userReDAI;
        uint256 userReUSDT;
        uint256 userReUSDC;
        uint256 totalReDAI;
        uint256 totalReUSDT;
        uint256 totalReUSDC;
        // Share
        uint256 userShare;
        uint256 totalShare;
    }

    struct Lp1LockInfo {
        uint256 date;
        uint256 amount;
    }

    mapping(address => Lp1LockInfo[LOCKPERIOD]) lp1LockInfos;

    uint256 public sldUnlockedForLp1;
    uint256 public totalStaked;
    uint256 public halveTime; // Latest halving time

    mapping(uint256 => uint256) public totalStakedMap;
    mapping(address => mapping(uint256 => uint256)) public stakingsMap;

    uint256 public totalShare;
    uint256 public lastRewardBlock;
    mapping(address => uint256) public stakings;
    mapping(address => uint256) public debts;

    event SetKeeper(address, bool);
    event WithdrawForLP1(address, uint256, uint256, uint256, uint256);
    event EmergencyWithdraw(address indexed, address indexed, uint256);
    event ClaimRewardsForLP1(address, uint256, uint256, uint256, uint256);
    event StakeForLP1(address, address, uint256);
    event GetAndSetLockedRewards(address, uint256, uint256, uint256, uint256);
    event CalcRewardsForLP2(address, uint256, uint256);
    event ClaimRewardsForLP2(address, uint256);
    event SetParamsAfterHalving(uint256, uint256, uint256, uint256, uint256);
    event CalcAndSendRewardsForLiquidator(address, uint256, uint256);
    event CalcAndSendRewardsForLiquidatorWeekly(
        address,
        uint256,
        uint256,
        uint256
    );

    modifier onlyKeeper(address addr) {
        require(isKeeper(addr), "caller is not the keeper");
        _;
    }

    function setKeeper(address addr, bool auth) public onlyOwner {
        keeperMap[addr] = auth;
        emit SetKeeper(addr, auth);
    }

    function isKeeper(address addr) public view returns (bool) {
        return keeperMap[addr];
    }

    /**
     * @dev Contract constructor.
     * @param token SLD token contract address
     * @param _reDAI reDAI contract address
     * @param _reUSDT reUSDT contract address
     * @param _reUSDC reUSDC contract address
     */
    constructor(
        address token,
        address _reDAI,
        address _reUSDT,
        address _reUSDC
    ) public {
        rewardsToken = IBEP20(token); //SLD token

        reTokens[_reDAI] = DAI;
        reTokens[_reUSDT] = USDT;
        reTokens[_reUSDC] = USDC;
        reTokenAddrs[DAI] = _reDAI;
        reTokenAddrs[USDT] = _reUSDT;
        reTokenAddrs[USDC] = _reUSDC;

        halveTime = block.number;
    }

    /**
     * @dev Internal function to update public pool mining info
     */
    function updateVault() internal {
        if (block.number <= lastRewardBlock) {
            return;
        }
        if (totalStaked == 0) {
            lastRewardBlock = block.number;
            return;
        }
        uint256 reward = block.number.sub(lastRewardBlock).mul(
            rewardsPerBlockForLP1
        );
        totalShare = totalShare.add(reward.mul(1e18).div(totalStaked));
        lastRewardBlock = block.number;
    }

    /**
     * @dev Staking in public pool
     * @param _reToken reToken type
     * @param _amount amount to stake
     */
    function stakeForLP1(address _reToken, uint256 _amount) public {
        require(_amount >= minStakeAmount, "stake too small");
        uint256 tokenType = reTokens[_reToken];
        require(tokenType != 0 && tokenType < 4, "ReToken not included");
        updateVault();
        uint256 userStaked = stakings[msg.sender];
        if (userStaked > 0) {
            uint256 pending = userStaked.mul(totalShare).div(1e18).sub(
                debts[msg.sender]
            );

            if (pending > 0) {
                // 30% could be claimed instantly, 70% vesting in 180 days
                uint256 instantRewards = pending
                    .mul(unlockedPortionForLP1Mining)
                    .div(percentageDenominator);
                uint256 lockedRewards = pending.sub(instantRewards);
                uint256 unlockedRewards = getAndSetLockedRewards(
                    msg.sender,
                    tokenType,
                    lockedRewards
                );
                uint256 claimedRewards = instantRewards.add(unlockedRewards);
                sldUnlocked = sldUnlocked.add(pending);
                if (sldUnlocked > sldThreshold) {
                    setParamsAfterHalving();
                }

                _safeTransfer(
                    address(rewardsToken),
                    msg.sender,
                    claimedRewards
                );
            }
        }

        stakings[msg.sender] = stakings[msg.sender].add(_amount);
        stakingsMap[msg.sender][tokenType] = stakingsMap[msg.sender][tokenType]
            .add(_amount);
        totalStaked = totalStaked.add(_amount);
        totalStakedMap[tokenType] = totalStakedMap[tokenType].add(_amount);
        debts[msg.sender] = stakings[msg.sender].mul(totalShare).div(1e18);
        _safeTransferFrom(_reToken, msg.sender, address(this), _amount);
        emit StakeForLP1(msg.sender, _reToken, _amount);
    }

    /**
     * @dev Unstaking in public pool
     * @param _reToken reToken type
     * @param _amount amount to stake
     */
    function withdrawForLP1(address _reToken, uint256 _amount)
        public
        returns (uint256)
    {
        require(_amount > 0, "withdraw amount should be positive");
        uint256 tokenType = reTokens[_reToken];
        require(tokenType != 0 && tokenType < 4, "ReToken not included");
        require(
            stakingsMap[msg.sender][tokenType] >= _amount,
            "ReToken Amount less than amount"
        );
        updateVault();
        uint256 userStaked = stakings[msg.sender];
        uint256 claimedRewards = 0;
        if (userStaked > 0) {
            uint256 pending = userStaked.mul(totalShare).div(1e18).sub(
                debts[msg.sender]
            );

            if (pending > 0) {
                // 30% could be claimed instantly, 70% vesting in 180 days
                uint256 instantRewards = pending.mul(30).div(100);
                uint256 lockedRewards = pending.sub(instantRewards);

                uint256 unlockedRewards = getAndSetLockedRewards(
                    msg.sender,
                    tokenType,
                    lockedRewards
                );

                claimedRewards = instantRewards.add(unlockedRewards);
                sldUnlocked = sldUnlocked.add(pending);
                if (sldUnlocked > sldThreshold) {
                    setParamsAfterHalving();
                }

                _safeTransfer(
                    address(rewardsToken),
                    msg.sender,
                    claimedRewards
                );
            }
        }
        stakings[msg.sender] = stakings[msg.sender].sub(_amount);
        stakingsMap[msg.sender][tokenType] = stakingsMap[msg.sender][tokenType]
            .sub(_amount);
        totalStaked = totalStaked.sub(_amount);
        totalStakedMap[tokenType] = totalStakedMap[tokenType].sub(_amount);
        debts[msg.sender] = stakings[msg.sender].mul(totalShare).div(1e18);

        _safeTransfer(_reToken, msg.sender, _amount);
        emit WithdrawForLP1(
            msg.sender,
            _amount,
            userStaked,
            sldUnlocked,
            claimedRewards
        );
    }

    /**
     * @dev Withdraw without caring about rewards. EMERGENCY ONLY.
     * @param _reToken reToken type
     */
    function emergencyWithdrawFromLP1(address _reToken) public {
        uint256 tokenType = reTokens[_reToken];
        uint256 amount = stakingsMap[msg.sender][tokenType];

        require(tokenType != 0 && tokenType < 4, "ReToken not included");
        require(amount > 0, "stake amount is zero");

        _safeTransfer(_reToken, msg.sender, amount);

        emit EmergencyWithdraw(msg.sender, _reToken, amount);

        stakings[msg.sender] = stakings[msg.sender].sub(amount);
        totalStaked = totalStaked.sub(amount);
        stakingsMap[msg.sender][tokenType] = 0;
        debts[msg.sender] = 0;
    }

    /**
     * @dev Claim public pool mining rewards
     */
    function claimRewardsForLP1() public {
        updateVault();
        uint256 userStaked = stakings[msg.sender];
        uint256 pending = userStaked.mul(totalShare).div(1e18).sub(
            debts[msg.sender]
        );

        if (pending > 0) {
            // 30% could be claimed instantly, 70% vesting in 180 days
            uint256 instantRewards = pending.mul(30).div(100);
            uint256 lockedRewards = pending.sub(instantRewards);

            uint256 unlockedRewards = 0;
            uint256 tmpRewards = getAndSetLockedRewards(
                msg.sender,
                1,
                lockedRewards
            );
            unlockedRewards = unlockedRewards.add(tmpRewards);

            uint256 claimedRewards = instantRewards.add(unlockedRewards);

            sldUnlocked = sldUnlocked.add(pending);
            if (sldUnlocked > sldThreshold) {
                setParamsAfterHalving();
            }

            _safeTransfer(address(rewardsToken), msg.sender, claimedRewards);

            debts[msg.sender] = userStaked.mul(totalShare).div(1e18);
            emit ClaimRewardsForLP1(
                msg.sender,
                userStaked,
                totalStaked,
                lockedRewards,
                claimedRewards
            );
        }
    }

    /**
     * @dev Internal function to get all locked amount and set new period for incoming tokens
     * @param _user staker address
     * @param _tokenType token type
     * @param _lockedRewards amount to be locked
     */
    function getAndSetLockedRewards(
        address _user,
        uint256 _tokenType,
        uint256 _lockedRewards
    ) internal returns (uint256) {
        uint256 rewardsAmount = 0;
        (uint256 today, ) = getDate();

        for (uint256 i = 0; i < LOCKPERIOD; i++) {
            uint256 tmpAmount = 0;
            if (lp1LockInfos[_user][i].date <= today) {
                tmpAmount = lp1LockInfos[_user][i].amount;
                lp1LockInfos[_user][i].amount = 0;
                lp1LockInfos[_user][i].date = 0;
            }
            rewardsAmount = rewardsAmount.add(tmpAmount);
        }

        // set new lock period
        uint256 unlockDay = today.add(LOCKPERIOD);
        uint256 index = unlockDay % LOCKPERIOD;
        lp1LockInfos[_user][index].date = unlockDay;
        lp1LockInfos[_user][index].amount = lp1LockInfos[_user][index]
            .amount
            .add(_lockedRewards);
        emit GetAndSetLockedRewards(
            _user,
            _tokenType,
            index,
            unlockDay,
            lp1LockInfos[_user][index].amount
        );
        return rewardsAmount;
    }

    /**
     * @dev Internal function to execute mining halving
     */
    function setParamsAfterHalving() internal {
        // threshold = threshold + (total_rewards - threshold) * 20%
        sldThreshold = sldThreshold.add(
            (
                TOTAL_REWARDS.sub(sldThreshold).mul(halvingNumerator).div(
                    percentageDenominator
                )
            )
        );

        totalVested = getTotalMinted();
        halveTime = block.number;

        updateVault();

        sldPriceForRewardsNumerator = sldPriceForRewardsNumerator.mul(2);
        rewardsPerBlockForLP1 = rewardsPerBlockForLP1.div(2);

        emit SetParamsAfterHalving(
            sldThreshold,
            totalVested,
            halveTime,
            sldPriceForRewardsNumerator,
            rewardsPerBlockForLP1
        );
    }

    /**
     * @dev Get total minted token amount, incluing vested and vesting tokens
     */
    function getTotalMinted() public view returns (uint256) {
        return
            totalVested +
            (block.number.sub(halveTime).mul(rewardsPerBlockForLP1));
    }

    /**
     * @dev Get total minted token amount, incluing vested and vesting tokens
     * @param _user staker address
     */
    function queryRewardsForLP1(address _user)
        public
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 unlock, uint256 lock) = getLockedRewardsInfoForLP1(_user);
        uint256 rewardsAmount = getPendingSLd(_user);
        return (
            rewardsAmount.mul(unlockedPortionForLP1Mining).div(
                percentageDenominator
            ) + unlock,
            lock,
            rewardsAmount
                .mul(percentageDenominator.sub(unlockedPortionForLP1Mining))
                .div(percentageDenominator)
        );
    }

    /**
     * @dev Get pending SLD amount during mining period
     * @param _user staker address
     */
    function getPendingSLd(address _user) public view returns (uint256) {
        uint256 userStaked = stakings[_user];
        uint256 reward = block.number.sub(lastRewardBlock).mul(
            rewardsPerBlockForLP1
        );
        uint256 tempAccShare = 0;
        if (totalStaked > 0) {
            tempAccShare = totalShare.add(reward.mul(1e18).div(totalStaked));
        }
        return userStaked.mul(tempAccShare).div(1e18).sub(debts[_user]);
    }

    /**
     * @dev Get public pool mining info for certain staker
     * @param _user staker address
     */
    function getLockedRewardsInfoForLP1(address _user)
        public
        view
        returns (uint256, uint256)
    {
        uint256 unlockedRewardsAmount;
        uint256 lockedRewardsAmount;

        (uint256 today, ) = getDate();

        for (uint256 i = 0; i < LOCKPERIOD; i++) {
            uint256 tmpAmount = lp1LockInfos[_user][i].amount;
            if (lp1LockInfos[_user][i].date <= today) {
                unlockedRewardsAmount = unlockedRewardsAmount.add(tmpAmount);
            } else {
                lockedRewardsAmount = lockedRewardsAmount.add(tmpAmount);
            }
        }

        return (unlockedRewardsAmount, lockedRewardsAmount);
    }

    /**
     * @dev Get public pool mining info for certain staker
     * @param _lpUserAddr private pool maker address
     * @param _tradingFee 15% trading fee
     */
    function calcAndSendRewardsForLP2(address _lpUserAddr, uint256 _tradingFee)
        public
        onlyKeeper(msg.sender)
        returns (bool)
    {
        uint256 rewards = _tradingFee
            .mul(sldRewardsNumeratorForLP2)
            .mul(sldPriceForRewardsDenominator)
            .div(sldPriceForRewardsNumerator)
            .div(percentageDenominator);
        sldUnlocked = sldUnlocked.add(rewards);

        if (sldUnlocked > sldThreshold) {
            setParamsAfterHalving();
        }

        sldUnlockedForLP2 = sldUnlockedForLP2.add(rewards);
        sldRewardsForLP2[_lpUserAddr].claimable = sldRewardsForLP2[_lpUserAddr]
            .claimable
            .add(rewards);
        emit CalcRewardsForLP2(_lpUserAddr, sldUnlocked, rewards);
        return true;
    }

    /**
     * @dev Claim private pool incentive rewards
     */
    function claimRewardsForLP2() public {
        uint256 rewards = sldRewardsForLP2[msg.sender].claimable;
        if (rewards > 0) {
            sldRewardsForLP2[msg.sender].claimable = 0;
            sldRewardsForLP2[msg.sender].claimed = sldRewardsForLP2[msg.sender]
                .claimed
                .add(rewards);
            _safeTransfer(address(rewardsToken), msg.sender, rewards);

            emit ClaimRewardsForLP2(msg.sender, rewards);
        }
    }

    /**
     * @dev Set paramaters for private pool incentives
     * @param _sldRewardsNumeratorForLP2 reward numerator
     * @param _rewardDecimal reward decimal
     */
    function setsldRewardsParamatersForLP2(
        uint256 _sldRewardsNumeratorForLP2,
        uint256 _rewardDecimal
    ) public onlyOwner {
        sldRewardsNumeratorForLP2 = _sldRewardsNumeratorForLP2;
        rewardDecimal = _rewardDecimal;
    }

    /**
     * @dev Get private pool reward info
     * @param _lp private pool maker address
     */
    function queryRewardsForLP2(address _lp)
        public
        view
        returns (uint256, uint256)
    {
        return (sldRewardsForLP2[_lp].claimable, sldUnlockedForLP2);
    }

    /**
     * @dev Get total private pool reward amount
     */
    function queryTotalRewardsForLP2() public view returns (uint256) {
        return sldUnlockedForLP2;
    }

    /**
     * @dev Calculate liquidation incentives
     * @param _liquidator liquidator address
     * @param _gasUsedByStable gas used
     */
    function calcAndSendRewardsForLiquidator(
        address _liquidator,
        uint256 _gasUsedByStable
    ) public onlyKeeper(msg.sender) returns (uint256, bool) {
        uint256 rewards = _gasUsedByStable
            .mul(sldPriceForRewardsDenominator)
            .div(sldPriceForRewardsNumerator);
        sldUnlocked = sldUnlocked.add(rewards);

        if (sldUnlocked > sldThreshold) {
            setParamsAfterHalving();
        }

        if (rewardsToken.balanceOf(address(this)) >= rewards) {
            _safeTransfer(address(rewardsToken), _liquidator, rewards);

            emit CalcAndSendRewardsForLiquidator(
                _liquidator,
                rewards,
                sldUnlocked
            );

            return (rewards, true);
        }
        return (0, false);
    }

    /**
     * @dev Calculate weekly liquidation incentives
     * @param _liquidator liquidator address
     * @param _rank weekly rank
     */
    function calcAndSendRewardsForLiquidatorWeekly(
        address _liquidator,
        uint256 _rank
    ) public onlyKeeper(msg.sender) returns (uint256, bool) {
        uint256 rewards;

        if (_rank == 0) {
            rewards = weeklyRewardA;
        } else if (_rank == 1) {
            rewards = weeklyRewardB;
        } else if (_rank == 2) {
            rewards = weeklyRewardC;
        }

        sldUnlocked = sldUnlocked.add(rewards);

        if (sldUnlocked > sldThreshold) {
            setParamsAfterHalving();
        }

        if (rewardsToken.balanceOf(address(this)) >= rewards) {
            _safeTransfer(address(rewardsToken), _liquidator, rewards);

            emit CalcAndSendRewardsForLiquidatorWeekly(
                _liquidator,
                _rank,
                rewards,
                sldUnlocked
            );

            return (rewards, true);
        }
        return (0, false);
    }

    /**
     * @dev Set SLD price for calculating reward
     * @param _numerator price numerator
     * @param _denominator price denominator
     */
    function setSLDPrice(uint256 _numerator, uint256 _denominator)
        public
        onlyOwner
    {
        sldPriceForRewardsNumerator = _numerator;
        sldPriceForRewardsDenominator = _denominator;
    }

    /**
     * @dev Set reToken address
     * @param _reToken reToken address
     * @param _index index of retoken
     */
    function setReTokens(address _reToken, uint256 _index) public onlyOwner {
        reTokens[_reToken] = _index;
        reTokenAddrs[_index] = _reToken;
    }

    /**
     * @dev Set SLD reward per block for public pool mining
     * @param _rewardsPerBlockForLP1 SLD reward per block
     */
    function setRewardsPerBlockForLP1(uint256 _rewardsPerBlockForLP1)
        public
        onlyOwner
    {
        updateVault();
        rewardsPerBlockForLP1 = _rewardsPerBlockForLP1;
    }

    /**
     * @dev Set minimum stake amount for public pool mining
     * @param _minStakeAmount Minimum stake amount
     */
    function setMinStakeAmount(uint256 _minStakeAmount) public onlyOwner {
        minStakeAmount = _minStakeAmount;
    }

    /**
     * @dev Get halving parameters
     */
    function getParmsAfterHalving()
        public
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        return (
            sldThreshold,
            totalVested,
            halveTime,
            sldPriceForRewardsNumerator,
            rewardsPerBlockForLP1
        );
    }

    /**
     * @dev Get total unlocked info
     */
    function getUnlockInfo() public view returns (uint256, uint256) {
        return (TOTAL_REWARDS, sldUnlocked);
    }

    /**
     * @dev Get public pool mining info
     */
    function queryStakeShareInfoForLP1(address user)
        public
        view
        returns (LP1Info memory)
    {
        return
            LP1Info(
                stakingsMap[msg.sender][DAI],
                stakingsMap[msg.sender][USDT],
                stakingsMap[msg.sender][USDC],
                totalStakedMap[DAI],
                totalStakedMap[USDT],
                totalStakedMap[USDC],
                //share part
                getUserShare(user),
                getTotalShare()
            );
    }

    /**
     * @dev Get total share info on public pool
     */
    function getTotalSharedInfo() public view returns (uint256) {
        uint256 reward = block.number.sub(lastRewardBlock).mul(
            rewardsPerBlockForLP1
        );
        return
            totalShare.add(reward.mul(1e18).div(totalStaked)).mul(totalStaked);
    }

    /**
     * @dev Get staker share info on public pool
     */
    function getUserShare(address _user) public view returns (uint256) {
        return
            stakingsMap[_user][DAI].add(stakingsMap[_user][USDT]).add(
                stakingsMap[_user][USDC]
            );
    }

    /**
     * @dev Get total staked on public pool
     */
    function getTotalShare() public view returns (uint256) {
        return
            totalStakedMap[DAI].add(totalStakedMap[USDT]).add(
                totalStakedMap[USDC]
            );
    }

    function getDate() public view returns (uint256 today, uint256 blocktime) {
        today = block.timestamp / 1 days;
        blocktime = block.timestamp;
    }

    /**
     * @dev Set paramters for weekly liquidation reward
     */
    function setWeeklyRewardPortion(
        uint256 _rewardA,
        uint256 _rewardB,
        uint256 _rewardC
    ) public onlyOwner {
        weeklyRewardA = _rewardA;
        weeklyRewardB = _rewardB;
        weeklyRewardC = _rewardC;
    }

    /**
     * @dev Set paramters for halving
     * @param _halvingNumerator unlocked percentage to reach halving
     */
    function setHalvingParams(uint256 _halvingNumerator) public onlyOwner {
        halvingNumerator = _halvingNumerator;
    }

    /**
     * @dev Set instant unlock portion for public pool mining
     * @param _unlockedPortion instantly claimable token percentage
     */
    function setUnlockedParamsForLP1(uint256 _unlockedPortion)
        public
        onlyOwner
    {
        unlockedPortionForLP1Mining = _unlockedPortion;
    }

    function _safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(SELECTOR_TRANSFER_FROM, from, to, value)
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

    function _safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(SELECTOR_TRANSFER, to, value)
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }
}
