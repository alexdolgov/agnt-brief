// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/IPool.sol";
import "./interfaces/IThrottledPool.sol";
import "./interfaces/IStakingPool.sol";
import "./interfaces/IIdPool.sol";
import "./interfaces/IReferrersData.sol";
import "./interfaces/IWhitelist.sol";
import "./libraries/BP.sol";
import "./libraries/StakingPowerLibrary.sol";

/// @title Staking contract
contract Staking is IStaking, UUPSUpgradeable, ReentrancyGuardUpgradeable {

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant IDO_ROLE = keccak256("IDO_ROLE");

    using SafeCast for uint;
    using SafeERC20 for IERC20;
    using StakingPowerLibrary for StakingPowerLibrary.StakingPowerData;

    uint16 public constant SCALING_FACTOR = 10_000;

    uint16 private constant REFERRAL_LINK_REWARD_IN_BP = 100; // 1% * BP
    uint16 private constant REFERRER_REWARD_IN_BP = 500; // 5% * BP
    uint16 private constant MAX_REFERRER_BOOSTER_IN_BP = 2000; // 20% * BP
    uint16 private constant EXIT_FEE_IN_BP = 500; // 5% * BP (A 5% staking fee is applied to the user's stake (but not to the rewards) when the user exists before the due time)

    address public override registry;
    address public override token;
    address public override tokenPool;
    address public override whitelist;
    address public override referrersData;

    uint16 public override minTierReferrerBooster;
    uint public override stakesCount;
    uint public override minReferrerStakeAmount;

    StakingPowerLibrary.StakingPowerData public override stakingPowerData;
    mapping(address => mapping(uint => StakeDetails)) public override stakes;
    uint public override lastTierSnapshot;
    
    mapping(address => AccountDetails) private accountOf_;
    mapping(uint => Tier[]) private tierSnapshots_;
    mapping(uint => uint8) private tierSnapshotsColumnCount_;
    mapping(uint => uint8) private tierSnapshotsFirstEarlyUnstakeIndex_;

    /// @notice Initialize contract
    /// @param _registry Registry for account
    /// @param _token Token to stake
    /// @param _tokenPool Pool for shares
    /// @param _referrersData Users with referrers
    /// @param _tiers Booster tiers
    /// @param _tierLength Tiers length
    /// @param _firstEarlyUnstakeIndex First non-zero index
    /// @param _minReferrerStakeAmount Min stake for referrer
    function initialize(
        address _registry,
        address _token,
        address _tokenPool,
        address _referrersData,
        Tier[] calldata _tiers,
        uint8 _tierLength,
        uint8 _firstEarlyUnstakeIndex,
        uint _minReferrerStakeAmount
    ) initializer external {
        __ReentrancyGuard_init();

        require(
            _registry != address(0) &&
            _token != address(0) && 
            _tokenPool != address(0) && 
            _referrersData != address(0), 
            "Staking: ZERO"
        );

        registry = _registry;
        token = _token;
        tokenPool = _tokenPool;
        referrersData = _referrersData;
        minTierReferrerBooster = 0;
        minReferrerStakeAmount = _minReferrerStakeAmount;

        setTiers(_tiers, _tierLength, _firstEarlyUnstakeIndex);
        stakingPowerData.setInfo(7 days, 5 days);
    }

    /// @notice Get info for account
    /// @param _account User
    /// @return details User details
    function info(address _account) external override view returns (InfoAccountDetails memory details) {
        (uint32 stakingPowerInitialBreak, ) = stakingPowerData.info();
        details = InfoAccountDetails({
            tierLength: tierSnapshotsColumnCount_[lastTierSnapshot],
            tiers: tierSnapshots_[lastTierSnapshot],
            accountDetails: accountOf_[_account],
            minReferrerStakeAmount: minReferrerStakeAmount,
            stakingPowerInitialBreak: stakingPowerInitialBreak,
            whitelistLink: ''
        });
    }

    /// @notice Tiers info
    /// @param _snapshotIndex Snapshot index
    /// @return snapshot Tiers
    /// @return columnCount Number of columns
    /// @return firstEarlyUnstakeIndex First non-zero index
    function tierSnapshotInfo(uint _snapshotIndex) external override view returns (
        Tier[] memory snapshot,
        uint8 columnCount,
        uint8 firstEarlyUnstakeIndex
    ) {
        snapshot = tierSnapshots_[_snapshotIndex];
        columnCount = tierSnapshotsColumnCount_[_snapshotIndex];
        firstEarlyUnstakeIndex = tierSnapshotsFirstEarlyUnstakeIndex_[_snapshotIndex];
    }

    /// @notice Check if user can participate in the IDO
    /// @param _account User
    /// @return if user can partipate
    function canParticipate(address _account) external override view returns (bool) {
        return stakingPowerData.canParticipate(accountOf_[_account].lastIDOParticipation) && 
               stakingPowerData.canParticipate(accountOf_[_account].lastIDORegistration);
    }

    /// @notice Get expected staking power
    /// @param _account User
    /// @param _ids Ids of stakes
    /// @return stakingPower Expected staking power for ids
    function expectedStakingPower(address _account, uint[] calldata _ids) external override view returns (uint[] memory stakingPower) {
        stakingPower = new uint[](_ids.length);
        for (uint i; i < _ids.length; ++i) {
            StakeDetails storage stake_ = stakes[_account][_ids[i]];
            stakingPower[i] = stakingPowerData.expectedStakingPower(stake_.stakingPower, stake_.amountInToken, stake_.startDateInSeconds, stake_.tierBoosterInBP);
        }
    }

    /// @param _whitelist New whitelist address
    function setWhitelist(address _whitelist) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelist = _whitelist;
        emit SetWhitelist(_whitelist);
    }

    /// @notice Set staking power data
    /// @param _stakingPowerInitialBreak Period of time after which user will be able to claim staking power
    /// @param _participationBreak Period of time after which user will be able to participate in the IDO again
    function setStakingPowerData(uint32 _stakingPowerInitialBreak, uint32 _participationBreak) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        stakingPowerData.setInfo(_stakingPowerInitialBreak, _participationBreak);
        emit SetStakingPowerData(_stakingPowerInitialBreak, _participationBreak);
    }

    /// @param _minTierReferrerBooster New referrer booster
    function setMinTierReferrerBooster(uint16 _minTierReferrerBooster) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_minTierReferrerBooster < tierSnapshots_[lastTierSnapshot].length, "Staking: INVALID_TIER");
        minTierReferrerBooster = _minTierReferrerBooster;
        emit SetMinTierReferrerBooster(_minTierReferrerBooster);
    }

    /// @param _minReferrerStakeAmount New minimal referrer stake amount
    function setMinReferrerStakeAmount(uint _minReferrerStakeAmount) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        minReferrerStakeAmount = _minReferrerStakeAmount;
        emit SetMinReferrerStakeAmount(_minReferrerStakeAmount);
    }

    /// @notice Create stake
    /// @param _amount Amount to stake
    /// @param _row Selected row
    /// @param _column Selected column
    function stake(
        uint _amount,
        uint8 _row,
        uint8 _column
    )  
        external 
        override
        nonReentrant 
    {
        _stake(StakeInfo({referrer: IReferrersData(referrersData).parentOf(msg.sender), row: _row, column: _column, amount: _amount}));
    }

    /// @notice Create stake with referrer
    /// @param _stakeParams stake params
    function stakeWithReferrer(StakeWithReferrerParams calldata _stakeParams)  
        external 
        override
        nonReentrant 
    {
        _processReferring(
            _stakeParams.signaturesUser, 
            _stakeParams.referrer, 
            _stakeParams.signaturesReferrer, 
            _stakeParams.signers
        );
        _stake(StakeInfo({referrer: _stakeParams.referrer, row: _stakeParams.row, column: _stakeParams.column, amount: _stakeParams.amount}));
    }

    /// @notice Create stake with permit
    /// @param _details permit details
    function stakeWithPermit(PermitStakeDetails calldata _details) 
        external 
        override  
        nonReentrant 
    {
        IERC20Permit(token).permit(
            msg.sender, 
            address(this), 
            _details.amount, 
            _details.deadline, 
            _details.v,
            _details.r, 
            _details.s
        );
        _stake(StakeInfo({
            referrer: IReferrersData(referrersData).parentOf(msg.sender),
            row: _details.row,
            column: _details.column,
            amount: _details.amount
        }));
    }

    /// @notice Create stake with permit and referrer
    /// @param _details permit details
    function stakeWithPermitWithReferrer(PermitStakeDetailsWithReferrer calldata _details) 
        external 
        override  
        nonReentrant 
    {
        IERC20Permit(token).permit(
            msg.sender, 
            address(this), 
            _details.amount, 
            _details.deadline, 
            _details.v,
            _details.r,
            _details.s
        );
        _processReferring(
            _details.signaturesUser, 
            _details.referrer, 
            _details.signaturesReferrer, 
            _details.signers
        );
        _stake(StakeInfo({
            referrer: _details.referrer,
            row: _details.row,
            column: _details.column,
            amount: _details.amount
        }));
    }

    /// @notice Unstake
    /// @param _id stake's id
    function unstake(uint _id) 
        external 
        override
        nonReentrant 
    {
        _unstake(msg.sender, _id, false);
    }

    function unstakeWithoutFee(address _address, uint _id) 
        external
        override  
        nonReentrant 
        onlyRole(DEFAULT_ADMIN_ROLE) 
    {
        _unstake(_address, _id, true);
    }

    function _unstake(address _address, uint _id, bool _withoutFee) 
        private 
        accumulateRewards(_address, accountOf_[_address].referrer, _id) 
    {
        StakeDetails storage stakeDetails = stakes[_address][_id];
        require(stakeDetails.stakeId != 0, "Staking: INVALID_ID");
        StakeRewardDetails memory stakeRewardDetails = _sendStakeReward(_address, stakeDetails, _withoutFee);
        {
            uint amountInToken = stakeDetails.amountInToken;
            accountOf_[_address].totalStake -= amountInToken;
            accountOf_[_address].totalBoostedStake -= (amountInToken * (BP.DECIMAL_FACTOR + stakeDetails.tierBoosterInBP)) / BP.DECIMAL_FACTOR;
        }
      
        if (stakeRewardDetails.earlyExitFee > 0) {
            IERC20(token).safeTransfer(IThrottledPool(tokenPool).emissionController(), stakeRewardDetails.earlyExitFee);
        }
        if (stakes[_address][_id].stakingPower > 0) {
            accountOf_[_address].totalStakingPower -= stakes[_address][_id].stakingPower;
        }
        delete stakes[_address][_id];
        emit Unstake(_address, _id, stakeRewardDetails.amountInToken + stakeRewardDetails.stakeProfit, stakeRewardDetails.earlyExitFee);
    }

    /// @notice Update staking power
    /// @param _account User
    /// @param _ids stakes to update
    function updateStakingPower(address _account, uint[] calldata _ids) external override {
        for (uint i; i < _ids.length; ++i) {
            _updateStakingPowerForId(_account, _ids[i]);
        }
    }

    /// @notice Set user's registration date
    /// @param _account User
    /// @param _registrationDate IDO registration date
    function setLastRegistrationDate(address _account, uint _registrationDate) external override onlyRole(IDO_ROLE) {
        accountOf_[_account].lastIDORegistration = _registrationDate;
        emit SetLastRegistrationDate(msg.sender, _account, _registrationDate);
    }

    /// @notice Set user's participation date
    /// @param _account User
    /// @param _participationDate IDO participation date
    function setLastParticipationDate(address _account, uint _participationDate) external override onlyRole(IDO_ROLE) {
        accountOf_[_account].lastIDOParticipation = _participationDate;
        emit SetLastParticipationDate(msg.sender, _account, _participationDate);
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "Staking: FORBIDDEN");
        _;
    }

    modifier accumulateRewards(address _address, address _referrer, uint _id) {
        uint lastIdTierBoosterInBP = _referralBoosterOfId(_address, _id);
        uint lastBoostedStake = _referralBoostedStakeOf(_address);
        uint lastBoostedStakeOfReferrer = _referralBoostedStakeOf(_referrer);
        uint stakeShare;
        if (stakes[_address][_id].stakeId != 0) {
            stakeShare = stakes[_address][_id].amountInToken;
        }

        _;

        uint idTierBoosterInBP = _referralBoosterOfId(_address, _id);

        // Change boosters shares
        if (stakeShare == 0) {
            stakeShare = stakes[_address][_id].amountInToken;
        }
        _changeShares(_address, stakeShare, _referralBoostedStakeOf(_address), lastBoostedStake, _id);

        // Change referrer's shares (be referrer and referee)
        _updateReferralBooster(_address, _referrer, idTierBoosterInBP.toUint16(), lastIdTierBoosterInBP.toUint16());
        _changeShares(_referrer, 0, _referralBoostedStakeOf(_referrer), lastBoostedStakeOfReferrer, 0);
    }

    function setTiers(
        Tier[] calldata _tiers,
        uint8 _tierLength,
        uint8 _firstEarlyUnstakeIndex
    ) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            _tiers.length >= 2 // zero tier + 1 other tier
            && _tierLength > 0
            && _tiers.length <= type(uint8).max,
            "Staking: INVALID_ARGUMENTS"
        );
        uint currentSnapshot = ++lastTierSnapshot;
        
        for (uint i; i < _tiers.length; ++i) {
            if (i > 0) {
                require(_tiers[i - 1].boosterInBP < _tiers[i].boosterInBP || _tiers[i - 1].thresholdInToken < _tiers[i].thresholdInToken, "Staking: INVALID_ORDER");
            }
            tierSnapshots_[currentSnapshot].push(_tiers[i]);
        }
        tierSnapshotsColumnCount_[currentSnapshot] = _tierLength;
        tierSnapshotsFirstEarlyUnstakeIndex_[currentSnapshot] = _firstEarlyUnstakeIndex;
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function _linearTierBoosterInBP(
        uint _startAmount,
        uint16 _startTierBoosterInBP,
        uint _endAmount,
        uint16 _endTierBoosterInBP,
        uint _currentAmount
    ) private pure returns (uint16) {
        if (_startTierBoosterInBP == _endTierBoosterInBP || _currentAmount == _startAmount) {
            return _startTierBoosterInBP;
        }
        if (_currentAmount == _endAmount) {
            return _endTierBoosterInBP;
        }
        require(_endAmount > _startAmount 
                && _endTierBoosterInBP > _startTierBoosterInBP
                && _currentAmount >= _startAmount, "Staking: INVALID_PARAMETERS");

        uint diff = SCALING_FACTOR * (_currentAmount - _startAmount) / (_endAmount - _startAmount);
        return (_startTierBoosterInBP + ((_endTierBoosterInBP - _startTierBoosterInBP) * diff) / SCALING_FACTOR).toUint16();
    }

    function _tierBoostedStake(uint _tierBoosterInBP, uint _amountInToken) private pure returns (uint) {
        return (BP.DECIMAL_FACTOR + _tierBoosterInBP) * _amountInToken / BP.DECIMAL_FACTOR;
    }

    function _referralBoosterOfId(address _account, uint _id) private view returns (uint _referralTierBoosterInBP) {
        if (stakes[_account][_id].stakeId == 0) {
            return 0;
        }
        _referralTierBoosterInBP = uint(stakes[_account][_id].tierBoosterInBP) * REFERRER_REWARD_IN_BP / BP.DECIMAL_FACTOR;
    }

    function _referralBoostedStakeOf(
        address _account
    ) private view returns (uint) {
        if (_account == address(0)) {
            return 0;
        }
        AccountDetails storage account = accountOf_[_account];
        uint averageBoosterInBP;
        if (account.totalStake > 0) {
           averageBoosterInBP = (account.totalBoostedStake * BP.DECIMAL_FACTOR / account.totalStake) - BP.DECIMAL_FACTOR;
        }
        uint referralLinkBoosterInBP = account.referrer == address(0) ? 0 : REFERRAL_LINK_REWARD_IN_BP;
        uint16 referralBoosterInBP = uint16(Math.min(MAX_REFERRER_BOOSTER_IN_BP, account.referralBoosterInBP));
        return (BP.DECIMAL_FACTOR + referralBoosterInBP + referralLinkBoosterInBP + averageBoosterInBP) * account.totalStake / BP.DECIMAL_FACTOR;
    }

    // This function uses only for early unstakes (no zero-time)
    function _actualTierBoosterInBP(
        uint _actualDuration, 
        StakeDetails storage _stakeDetails
    ) private view returns (uint) {
        Tier[] storage snapshotTiers = tierSnapshots_[_stakeDetails.tierSnapshot];
        uint snapshotTiersColumnsCount = tierSnapshotsColumnCount_[_stakeDetails.tierSnapshot];
        uint earlyUnstakeIndex = tierSnapshotsFirstEarlyUnstakeIndex_[_stakeDetails.tierSnapshot];

        // if less than first vesting period
        if (_actualDuration < snapshotTiers[earlyUnstakeIndex].vestingLockPeriodInSeconds) { 
            return _linearTierBoosterInBP(0, 0, snapshotTiers[earlyUnstakeIndex].vestingLockPeriodInSeconds, _stakeDetails.tierBoosterInBP, _actualDuration);
        } 
        // if more than last vesting period
        uint startColumnByTimestamp;
        for (uint i = 1; i < snapshotTiersColumnsCount; ++i) {
            if (_actualDuration < snapshotTiers[i].vestingLockPeriodInSeconds) {
                startColumnByTimestamp = i - 1;
                break;
            }
        }
        uint row = _stakeDetails.nextTierIndex / snapshotTiersColumnsCount;
        Tier storage startTier = snapshotTiers[row * snapshotTiersColumnsCount + startColumnByTimestamp];
        uint16 startBoosterInBP = startTier.boosterInBP;

        if (_stakeDetails.amountInToken < startTier.thresholdInToken) { // if we need to find new start tier
            Tier storage prevTier = snapshotTiers[(row - 1) * snapshotTiersColumnsCount + startColumnByTimestamp];
            startBoosterInBP = _linearTierBoosterInBP(
                                    prevTier.thresholdInToken, 
                                    prevTier.boosterInBP, 
                                    startTier.thresholdInToken, 
                                    startTier.boosterInBP, 
                                    _stakeDetails.amountInToken
                                );
        }

        return _linearTierBoosterInBP(
                    startTier.vestingLockPeriodInSeconds, 
                    startBoosterInBP, 
                    _stakeDetails.durationInSeconds, 
                    _stakeDetails.tierBoosterInBP, 
                    _actualDuration
                );
    }

    function _boosterInfoForStake(StakeInfo memory _stakeInfo) private view returns (uint16 tierBoosterInBP, uint8 nextTierIndex, Tier storage nextTier) {
        Tier[] storage tiers = tierSnapshots_[lastTierSnapshot];
        uint8 snapshotTiersColumnsCount = tierSnapshotsColumnCount_[lastTierSnapshot];
        uint8 rowsCount = (tiers.length / snapshotTiersColumnsCount).toUint8();
        nextTierIndex = _stakeInfo.row * snapshotTiersColumnsCount + _stakeInfo.column;
        nextTier = tiers[nextTierIndex];
        tierBoosterInBP = nextTier.boosterInBP;

        if (_stakeInfo.row == 0 && _stakeInfo.amount < nextTier.thresholdInToken) { // User stakes amount that is less than 1st tier
            tierBoosterInBP = _linearTierBoosterInBP(0, 0, nextTier.thresholdInToken, nextTier.boosterInBP, _stakeInfo.amount);
        } else if (nextTier.thresholdInToken > _stakeInfo.amount) { // Between tiers
            Tier storage prevTier = tiers[(_stakeInfo.row - 1) * snapshotTiersColumnsCount + _stakeInfo.column];
            require(_stakeInfo.amount >= prevTier.thresholdInToken && _stakeInfo.amount <= nextTier.thresholdInToken, "Staking: INVALID_ARGUMENT");
            tierBoosterInBP = _linearTierBoosterInBP(prevTier.thresholdInToken, prevTier.boosterInBP, nextTier.thresholdInToken, nextTier.boosterInBP, _stakeInfo.amount);
        } else { // In other cases tierBoosterInBP stays the same
            require(_stakeInfo.amount >= nextTier.thresholdInToken, "Staking: INVALID_AMOUNT");
            if (_stakeInfo.row < rowsCount - 1) { // if now last tier
                require(_stakeInfo.amount < tiers[nextTierIndex + snapshotTiersColumnsCount].thresholdInToken, "Staking: INVALID_AMOUNT");
            }
        }   
    }

    function _stake(StakeInfo memory _stakeInfo) accumulateRewards(msg.sender, _stakeInfo.referrer, ++stakesCount) private {
        require(_stakeInfo.amount > 0, "Staking: ZERO_AMOUNT");        
        (uint16 tierBoosterInBP, uint8 nextTierIndex, Tier storage nextTier) = _boosterInfoForStake(_stakeInfo);
 
        AccountDetails storage account = accountOf_[msg.sender];
        IERC20(token).safeTransferFrom(msg.sender, address(this), _stakeInfo.amount);
        
        account.totalStake += _stakeInfo.amount;
        account.totalBoostedStake += (_stakeInfo.amount * (BP.DECIMAL_FACTOR + tierBoosterInBP)) / BP.DECIMAL_FACTOR;

        stakes[msg.sender][stakesCount] = StakeDetails({
            stakeId: stakesCount,
            amountInToken: _stakeInfo.amount,
            stakingPower: 0,
            startDateInSeconds: block.timestamp.toUint64(),
            durationInSeconds: nextTier.vestingLockPeriodInSeconds.toUint32(),
            tierBoosterInBP: tierBoosterInBP,
            nextTierIndex: nextTierIndex,
            tierSnapshot: uint136(lastTierSnapshot)
        });

        if (_stakeInfo.referrer != address(0) && account.referrer == address(0)) {
            account.referrer = _stakeInfo.referrer;
        }

        emit Stake(msg.sender, _stakeInfo.referrer, stakesCount);
    }

    function _updateReferralBooster(address _address, address _referrer, uint16 _newReferralBoosterInBP, uint16 _lastReferralBoosterInBP) private {
        // We can use current tiers, because this condition works only on stake
        if (_referrer == address(0) 
            || (_newReferralBoosterInBP >= _lastReferralBoosterInBP 
                && accountOf_[_address].totalStake < tierSnapshots_[lastTierSnapshot][minTierReferrerBooster].thresholdInToken)) {
            return;
        }

        if (_newReferralBoosterInBP > _lastReferralBoosterInBP) { // stake
            accountOf_[_referrer].referralBoosterInBP += _newReferralBoosterInBP;
        } else if (_lastReferralBoosterInBP > _newReferralBoosterInBP) { // unstake
            accountOf_[_referrer].referralBoosterInBP -= _lastReferralBoosterInBP;
        }
    }

    function _changeShares(address _account, uint _stakeShare, uint _current, uint _prev, uint _id) private {
        if (_current > _prev) {
            IIdPool(tokenPool).mintForId(_account, _stakeShare, _current - _prev, _id);
        } else if (_prev > _current) {
            IIdPool(tokenPool).burnForId(_account, _stakeShare, _prev - _current, _id);
        }
    }

    function _sendStakeReward(address _address, StakeDetails storage _stakeDetails, bool _withoutFee) private returns (
        StakeRewardDetails memory details
    ) {
        uint amountInToken = _stakeDetails.amountInToken;
        uint currentIdStake = _tierBoostedStake(_stakeDetails.tierBoosterInBP, _stakeDetails.amountInToken);
        uint actualCurrentIdStake = currentIdStake;
        uint earlyExitFee = 0;
        if (_stakeDetails.startDateInSeconds + _stakeDetails.durationInSeconds > block.timestamp) { // early exit
            uint actualDuration = block.timestamp - _stakeDetails.startDateInSeconds;

            actualCurrentIdStake = _tierBoostedStake(
                _actualTierBoosterInBP(actualDuration, _stakeDetails),
                amountInToken
            );

            // 5% fee from the initial amount
            if (!_withoutFee) {
                earlyExitFee = amountInToken * EXIT_FEE_IN_BP / BP.DECIMAL_FACTOR;
                amountInToken -= earlyExitFee;
            }
        }
        IERC20(token).safeTransfer(_address, amountInToken);
        // Stake reward
        uint totalBoostedStake = accountOf_[_address].totalBoostedStake;
        uint stakeProfit = _stakeProfit(_address, tokenPool, _stakeDetails.stakeId, currentIdStake, actualCurrentIdStake, totalBoostedStake);
        details = StakeRewardDetails({
            amountInToken: amountInToken,
            earlyExitFee: earlyExitFee,
            stakeProfit: stakeProfit
        });
    }

    function _stakeProfit(
        address _account, 
        address _poolAddress, 
        uint _stakeId, 
        uint _currentIdStake, 
        uint _actualCurrentIdStake, 
        uint _totalBoostedStake
    ) private returns (uint stakeProfit) {
        stakeProfit = IIdPool(_poolAddress).withdrawableRewardsForId(_account, _stakeId);
        uint fee;
        if (_currentIdStake != _actualCurrentIdStake) { // early exit
            uint actualStakeProfit = ((_actualCurrentIdStake * stakeProfit * SCALING_FACTOR) / _totalBoostedStake) / SCALING_FACTOR;
            fee = stakeProfit - actualStakeProfit;
            stakeProfit = actualStakeProfit;
        }
        IStakingPool(_poolAddress).withdrawForAccount(_account, _stakeId, stakeProfit, fee);
    }

    function _updateStakingPowerForId(address _account, uint _id) private {
        StakeDetails storage stake_ = stakes[_account][_id];
        require(stake_.amountInToken > 0, "Staking: INVALID_ID");
        if (stake_.stakingPower > 0) {
            return;
        }

        uint stakingPower = stakingPowerData.expectedStakingPower(stake_.stakingPower, stake_.amountInToken, stake_.startDateInSeconds, stake_.tierBoosterInBP);
        if (stakingPower > 0) {
            stakes[_account][_id].stakingPower = stakingPower;
            accountOf_[_account].totalStakingPower += stakingPower;
            emit UpdateStakingPowerForId(msg.sender, _account, _id, stakingPower);
        }
    }

    function _processReferring(
        bytes[] calldata _signaturesUser,
        address _referrer,
        bytes[] calldata _signaturesReferrer,
        address[] calldata _signers
    ) private {
        address parent = IReferrersData(referrersData).parentOf(msg.sender);
        if ((_referrer == address(0) && parent == address(0)) || parent == _referrer) {
            return;
        }
        require(
            msg.sender != _referrer &&
            IReferrersData(referrersData).parentOf(_referrer) != msg.sender &&
            whitelist != address(0) &&
            _signers.length > 0 &&
            IWhitelist(whitelist).isAddressWhitelisted(_encodeData(msg.sender), _signaturesUser, _signers) &&
            IWhitelist(whitelist).isAddressWhitelisted(_encodeData(_referrer), _signaturesReferrer, _signers) &&
            accountOf_[_referrer].totalStake >= minReferrerStakeAmount,
            "Staking: REFERRING_NOT_VALID"
        );
        IReferrersData(referrersData).addUser(msg.sender, _referrer);
    }

    function _encodeData(address _user) private pure returns (bytes memory) {
        return abi.encode(_user);
    }
}
