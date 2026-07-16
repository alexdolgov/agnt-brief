// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "./interfaces/ITradingStorage.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IPairStorage.sol";
import "./interfaces/IExecute.sol";
import {PositionMath} from "./library/PositionMath.sol";
import "./interfaces/IPairInfos.sol";

contract PairStorage is Initializable, IPairStorage {
    
    using PositionMath for uint;
    ITradingStorage public storageT;

    uint private constant _MAX_LOSS_REBATE = 50;
    uint private constant _PRECISION = 1e10;

    uint public currentOrderId;
    uint public override pairsCount;
    uint public groupsCount;
    uint public feesCount;
    uint public skewedFeesCount;
    uint public oiMultiplier;
    
    mapping(uint => Pair) public pairs;
    mapping(uint => PairParams) public pairParams;
    mapping(uint => AdditionalPairParams) public addtionalPairParams;
    mapping(uint => Group) public groups;
    mapping(uint => Fee) public fees;
    mapping(bytes32 => bool) public isPairListed;
    mapping(uint => uint[2]) public groupOIs; 
    mapping(uint => mapping(uint => uint)) public lossProtection;
    mapping(uint => SkewFee) internal skewFees;
    mapping(uint => uint) public override blockOILimit;
    mapping(address => mapping(uint => mapping(uint => bool)))  public openPosType;
    mapping(uint => PairData) public pairData;

    uint public minGasFees;
    IPairInfos public pairInfos;

    modifier onlyGov() {
        require(msg.sender == storageT.gov(), "GOV_ONLY");
        _;
    }

    modifier groupListed(uint _groupIndex) {
        require(groups[_groupIndex].maxOpenInterestP > 0, "GROUP_NOT_LISTED");
        _;
    }
    modifier feeListed(uint _feeIndex) {
        require(fees[_feeIndex].openFeeP > 0, "FEE_NOT_LISTED");
        _;
    }

    modifier feedOk(Feed calldata _feed) {
        require(_feed.maxOpenDeviationP > 0 && _feed.maxCloseDeviationP > 0, "WRONG_FEED");
        _;
    }

    modifier groupOk(Group calldata _group) {
        require(
            _group.maxOpenInterestP >= 0,
            "INVALID_GROUP_OI_ALLOCATION"
        );
        _;
    }

    modifier feeOk(Fee calldata _fee) {
        require(
            _fee.openFeeP > 0 && _fee.limitOrderFeeP > 0 && _fee.minLevPosUSDC > 0,
            "WRONG_FEES"
        );
        _;
    }
    
    modifier onlyRiskManager() {
        require(msg.sender == pairInfos.riskManager(), "RISK_MANAGER_ONLY");
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract.
     * @param _storageT Address of the trading storage contract.
     * @param _currentOrderId Initial order ID.
     */
    function initialize(address _storageT, uint _currentOrderId) external initializer {
        require(_currentOrderId > 0, "ORDER_ID_0");
        currentOrderId = _currentOrderId;
        storageT = ITradingStorage(_storageT);
    }

    /**
     * @dev Adds a skew open fee.
     * @param _skewFee The skew fee to add.
     */
    function addSkewOpenFees(SkewFee calldata _skewFee) external onlyGov {
        skewFees[skewedFeesCount] = _skewFee;
        emit SkewFeeAdded(skewedFeesCount++);
    }

    /**
     * @dev Updates a skew open fee.
     * @param _pairIndex The index of the pair to update.
     * @param _skewFee The new skew fee.
     */
    function udpateSkewOpenFees(uint _pairIndex, SkewFee calldata _skewFee) external onlyGov {
        skewFees[_pairIndex] = _skewFee;
        emit SkewFeeUpdated(_pairIndex);
    }

    function setPairInfos(address _pairInfos) external onlyGov {
        require(_pairInfos != address(0), "ZERO_ADDR");
        pairInfos = IPairInfos(_pairInfos);
        emit PairInfosUpdated(_pairInfos);
    }
    
    /**
     * @dev Adds a new trading pair.
     * @param _pair The new trading pair to add.
     */
    function addPair(
        Pair calldata _pair
    ) external onlyGov feedOk(_pair.feed) groupListed(_pair.groupIndex) feeListed(_pair.feeIndex) {
        require(!isPairListed[_pair.feed.feedId], "PAIR_ALREADY_LISTED");

        pairs[pairsCount] = _pair;
        isPairListed[_pair.feed.feedId] = true;

        emit PairAdded(pairsCount++, _pair.feed.feedId);
    }

    /**
    @notice Setter method for setting pairSpecific params
    @dev    Some Params are left vacant to future proof
     */
    function updatePairParams(uint _pairIndex, PairParams calldata _params) external onlyGov{

        Pair storage p = pairs[_pairIndex];
        require(isPairListed[p.feed.feedId], "PAIR_NOT_LISTED");

        PairParams storage params = pairParams[_pairIndex];

        params.posSpreadCap             =                    _params.posSpreadCap;
        params.negSpreadCap             =                    _params.negSpreadCap;
        params.isPnlTypeAllowed         =                    _params.isPnlTypeAllowed;
        params.pnlPriceImpactMultiplier =                    _params.pnlPriceImpactMultiplier;
        params.pnlSkewImpactMultiplier  =                    _params.pnlSkewImpactMultiplier;
        params.pnlPosSpreadCap          =                    _params.pnlPosSpreadCap;
        params.pnlNegSpreadCap          =                    _params.pnlNegSpreadCap;
        params.minBorrowFee                  =               _params.minBorrowFee;
        params.maxBorrowFee                  =               _params.maxBorrowFee;
        params.lazerFeedId                  =                _params.lazerFeedId;

        emit PairParamsUpdated(_params);

    }

    /**
    @notice Setter method for setting additiaonl pairSpecific params
    @dev    Params are left vacant to future proof
     */
    function updateAdditionalPairParams(uint _pairIndex, AdditionalPairParams calldata _params) external onlyGov{

        Pair storage p = pairs[_pairIndex];
        require(isPairListed[p.feed.feedId], "PAIR_NOT_LISTED");

        AdditionalPairParams storage params = addtionalPairParams[_pairIndex];

        params.utilizationThreshold = _params.utilizationThreshold;
        params.borrowFeesMultiplier = _params.borrowFeesMultiplier;
        params.skewThreshold = _params.skewThreshold;
        params.isPositionRollOngoing = _params.isPositionRollOngoing;
        params.param_13 = _params.param_13;
        params.param_14 = _params.param_14;
        params.param_15 = _params.param_15;
        params.param_16 = _params.param_16;
        params.param_17 = _params.param_17;
        params.param_18 = _params.param_18;
        emit AdditionalPairParamsUpdated(_params);
    }

    /**
    @notice Governance controlled method to update OI multiplier
    @notice 110e8 means 110%
     */
    function setOIMultiplier(uint _multiplier) external onlyGov {
        require(_multiplier > 0, "INVALID");
        oiMultiplier = _multiplier;

        emit OIMultiplierUpdated(oiMultiplier);
    }

    /**
     * @dev Updates an existing trading pair.
     * @param _pairIndex The index of the pair to update.
     * @param _pair The new pair data.
     */
    function updatePair(
        uint _pairIndex,
        Pair calldata _pair
    ) external onlyGov feedOk(_pair.feed) feeListed(_pair.feeIndex) {
        Pair storage p = pairs[_pairIndex];
        require(isPairListed[p.feed.feedId], "PAIR_NOT_LISTED");

        p.spreadP = _pair.spreadP;
        p.pnlSpreadP = _pair.pnlSpreadP;
        p.leverages = _pair.leverages;
        p.priceImpactMultiplier = _pair.priceImpactMultiplier;
        p.skewImpactMultiplier = _pair.skewImpactMultiplier;
        p.groupIndex = _pair.groupIndex;
        p.feeIndex = _pair.feeIndex;
        p.feed = _pair.feed;
        p.values.groupOpenInterestPercentageP = _pair.values.groupOpenInterestPercentageP;
        p.values.maxWalletOIP = _pair.values.maxWalletOIP;
        p.values.maxGainP = _pair.values.maxGainP;
        p.values.maxSlP = _pair.values.maxSlP;
        p.values.maxLongOiP = _pair.values.maxLongOiP;
        p.values.maxShortOiP = _pair.values.maxShortOiP;
        p.values.isUSDCAligned = _pair.values.isUSDCAligned;

        if (_pair.backupFeed.maxDeviationP > 0 && _pair.backupFeed.feedId != address(0)) {
            p.backupFeed = _pair.backupFeed;
        } else {
            delete p.backupFeed;
        }

        emit PairUpdated(_pairIndex);
    }

    /**
     * @notice Delists a trading pair by index.
     * @param _pairIndex The index of the pair to be delisted.
     */
    function delistPair(
        uint _pairIndex
    ) external onlyGov {
        Pair storage p = pairs[_pairIndex];
        require(isPairListed[p.feed.feedId], "PAIR_NOT_LISTED");
        
        isPairListed[p.feed.feedId]= false;
        emit PairDelisted(_pairIndex);
    }

    /**
     * @notice Delists a trading pair by index.
     * @param feedId Feed ID listed
     */
    function enlistPair(
        bytes32 feedId
    ) external onlyGov {
        isPairListed[feedId]= true;
    }

    /**
     * @notice Adds a new trading group.
     * @param _group The new group to be added.
     */
    function addGroup(Group calldata _group) external onlyGov groupOk(_group) {
        groups[groupsCount] = _group;
        emit GroupAdded(groupsCount++, _group.name);
    }

    /**
     * @notice Updates an existing trading group.
     * @param _id The ID of the group to be updated.
     * @param _group The new group data.
     */
    function updateGroup(uint _id, Group calldata _group) external onlyGov groupListed(_id) groupOk(_group) {
        groups[_id] = _group;
        emit GroupUpdated(_id);
    }

    /**
     * @notice Adds a new fee structure.
     * @param _fee The Fee structure to add.
     */
    function addFee(Fee calldata _fee) external onlyGov feeOk(_fee) {
        fees[feesCount] = _fee;
        emit FeeAdded(feesCount++);
    }

    /**
     * @notice Updates an existing fee structure.
     * @param _id The ID of the fee structure to update.
     * @param _fee The new Fee structure.
     */
    function updateFee(uint _id, Fee calldata _fee) external onlyGov feeListed(_id) feeOk(_fee) {
        fees[_id] = _fee;
        emit FeeUpdated(_id);
    }
    
    /**
     * @notice Updates miniumum gas fees charged in USDC
     * @param _minGasFees The new minimum gas fees in USDC
     */
    function updateMinGasFees(uint _minGasFees) external onlyGov {
        minGasFees = _minGasFees;
        emit MinGasFeesUpdated(_minGasFees);
    }

    /**
     * @notice Updates the collateral open interest for a trading group.
     * @param _pairIndex The index of the trading pair.
     * @param _amount The amount to update the open interest by.
     * @param _long Specifies if the position is long.
     * @param _increase Specifies if the open interest should be increased.
     */
    function updateGroupOI(uint _pairIndex, uint _amount, bool _long, bool _increase) external override {
        require(msg.sender == storageT.callbacks() || msg.sender == address(storageT), "CALLBACKS_ONLY");

        uint[2] storage oi = groupOIs[pairs[_pairIndex].groupIndex];
        uint index = _long ? 0 : 1;

        if (_increase) {
            oi[index] += _amount;
        } else {
            oi[index] = oi[index] > _amount ? oi[index] - _amount : 0;
        }
    }

    /**
     * @notice Updates the loss protection multiplier for a given trading pair.
     * @param _pairIndex The index of the trading pair.
     * @param _tier The tiers for the loss protection.
     * @param _multiplierPercent The corresponding multipliers for each tier.
     */
    function updateLossProtectionMultiplier(
        uint _pairIndex,
        uint[] calldata _tier,
        uint[] calldata _multiplierPercent
    ) external onlyGov {
        require(_tier.length == _multiplierPercent.length);

        for (uint i; i < _tier.length; ++i) {
            require(_multiplierPercent[i] >= _MAX_LOSS_REBATE, "REBATE_EXCEEDS_MAX");
            lossProtection[_pairIndex][_tier[i]] = _multiplierPercent[i];
        }

        emit LossProtectionAdded(_pairIndex, _tier, _multiplierPercent);
    }

    function setPairData(
        uint _pairIndex, 
        string calldata from,
        string calldata to,
        uint _numTiers, 
        uint[] calldata _tierThresholds, 
        uint[] calldata _timer)  external onlyGov {

        PairData storage pair = pairData[_pairIndex];
        pair.from  = from;
        pair.to = to;
        pair.numTiers = _numTiers;

        for(uint i; i < _numTiers; i++){
            pair.openCloseTiersThresholds[i] = _tierThresholds[i];
            pair.openCloseThresholdsTimers[i] = _timer[i];
        }
        emit PairDataUpdated(_pairIndex, from, to, _numTiers, _tierThresholds, _timer);
    }

    /**
     * @notice Fetches relevant information for an order.
     * @param _pairIndex The index of the trading pair.
     * @return A tuple containing the feed IDs and the order ID.
     */
    function pairJob(uint _pairIndex) external override returns (string memory, string memory, bytes32, address, uint) {
        require(msg.sender == address(storageT.priceAggregator()), "AGGREGATOR_ONLY");

        Pair memory p = pairs[_pairIndex];
        require(isPairListed[p.feed.feedId], "PAIR_NOT_LISTED");

        // Note : currentOrderId Needs to be taken care of while migration
        return ("NULL", "NULL", p.feed.feedId, p.backupFeed.feedId, currentOrderId++);
    }

    /** 
     * @notice Get the Pyth feed information of a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return Feed memory object containing feed related information.
     */
    function pairFeed(uint _pairIndex) external view override returns (Feed memory) {
        return pairs[_pairIndex].feed;
    }

    function getLazerFeedId(uint _pairIndex) external view override returns (uint256) {
        return pairParams[_pairIndex].lazerFeedId;
    }
    /** 
     * @notice Get the Chainlink backup feed information of a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return BackupFeed memory object containing backup feed information.
     */
    function pairBackupFeed(uint _pairIndex) external view override returns (BackupFeed memory) {
        return pairs[_pairIndex].backupFeed;
    }

    /** 
     * @notice Get the spread percentage of a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @param _isPnl Bool for pnl fee type orders
     * @return spreadP The spread percentage.
     */
    function pairSpreadP(uint _pairIndex, bool _isPnl) external view override returns (uint spreadP) {
        spreadP = _isPnl ? pairs[_pairIndex].pnlSpreadP : pairs[_pairIndex].spreadP;
    }

    /** 
     * @notice Get the spread percentage of a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return spreadP The spread percentage.
     */
    function pairSpreadP(uint _pairIndex) external view override returns (uint spreadP) {
        spreadP = pairs[_pairIndex].spreadP;
    }

    /** 
     * @notice Get the group index to which a trading pair belongs.
     * @param _pairIndex The index of the trading pair.
     * @return The group index.
     */
    function pairGroupIndex(uint _pairIndex) external view override returns (uint) {
        return pairs[_pairIndex].groupIndex;
    }

    /** 
     * @notice Get the minimum leverage available for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @param _isPnl Is a Pnl Based OrderType
     * @return The minimum leverage.
     */
    function pairMinLeverage(uint _pairIndex, bool _isPnl) external view override returns (uint) {
        return _isPnl ? pairs[_pairIndex].leverages.pnlMinLeverage : pairs[_pairIndex].leverages.minLeverage;
    }


    /** 
     * @notice Get the maximum leverage available for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @param _isPnl Is a Pnl Based OrderType
     * @return The maximum leverage.
     */
    function pairMaxLeverage(uint _pairIndex, bool _isPnl) external view override returns (uint) {
        return _isPnl ? pairs[_pairIndex].leverages.pnlMaxLeverage : pairs[_pairIndex].leverages.maxLeverage;
    }

    
    /** 
     * @notice Get the maximum open interest (OI) for a group.
     * @param _pairIndex The index of the trading pair.
     * @return The maximum open interest for the group.
     */
    function groupMaxOI(uint _pairIndex) public view override returns (uint) {
        return
            (groups[pairs[_pairIndex].groupIndex].maxOpenInterestP * 
            storageT.vaultManager().currentAdjustedBalanceUSDC()) /
            _PRECISION /
            100;
    }

    /**
    @notice Public method to get the OI Multiplier
     */
    function getOIMultiplier() external view override returns(uint256){
        return oiMultiplier;
    }
    /** 
     * @notice Get the maximum open interest (OI) for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The maximum open interest for the pair.
     */
    function pairMaxOI(uint _pairIndex) external view override returns (uint) {
        return (pairs[_pairIndex].values.groupOpenInterestPercentageP * groupMaxOI(_pairIndex)) / _PRECISION / 100;
    }

   /** 
     * @notice Get the maximum Long open interest (OI) for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The maximum Long open interest for the pair.
     */
    function pairMaxLongOI(uint _pairIndex) external view override returns(uint){

        uint pairMaxOi = pairs[_pairIndex].values.groupOpenInterestPercentageP * groupMaxOI(_pairIndex) / _PRECISION / 100;
        return pairMaxOi * pairs[_pairIndex].values.maxLongOiP / _PRECISION / 100;
    }

   /** 
     * @notice Get the maximum Short open interest (OI) for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The maximum Short open interest for the pair.
     */
    function pairMaxShortOI(uint _pairIndex) external view override returns(uint){

        uint pairMaxOi = pairs[_pairIndex].values.groupOpenInterestPercentageP * groupMaxOI(_pairIndex) / _PRECISION / 100;
        return pairMaxOi * pairs[_pairIndex].values.maxShortOiP / _PRECISION / 100;
    }

    /** 
     * @notice Get the total open interest (OI) for a group.
     * @param _pairIndex The index of the trading pair.
     * @return The total open interest for the group.
     */
    function groupOI(uint _pairIndex) public view override returns (uint) {
        return groupOIs[pairs[_pairIndex].groupIndex][0] + groupOIs[pairs[_pairIndex].groupIndex][1];
    }

    /** 
     * @notice Get the loss protection multiplier for a trading pair and tier.
     * @param _pairIndex The index of the trading pair.
     * @param _tier The tier level.
     * @return The loss protection multiplier.
     */
    function lossProtectionMultiplier(uint _pairIndex, uint _tier) external view override returns (uint) {
        return lossProtection[_pairIndex][_tier];
    }

    /** 
     * @notice Check if guaranteed stop loss is enabled for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return True if enabled, false otherwise.
     */
    function guaranteedSlEnabled(uint _pairIndex) external view override returns (bool) {

        uint groupIndex = pairs[_pairIndex].groupIndex;
        if( groupIndex == 0 ||
            groupIndex == 1 ||
            groupIndex == 2 || 
            groupIndex == 3 || 
            groupIndex == 6) return false; // Disabled for Forex, commodities and equities
        return true;
    }

    /** 
     * @notice Get the maximum open interest (OI) for a wallet in a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The maximum open interest for the wallet.
     */
    function maxWalletOI(uint _pairIndex) external view override returns (uint) {
        return (storageT.maxOpenInterest() * pairs[_pairIndex].values.maxWalletOIP) / _PRECISION / 100;
    }

    /**
     * @notice Calculate the fee for opening a leveraged position on a trading pair based on skew
     * @param _pairIndex The index of the trading pair.
     * @param _leveragedPosition The size of the leveraged position.
     * @param _buy Boolean indicating whether the position is a long (true) or short (false).
     * @return The fee percentage for opening the position.
     */
    function pairOpenFeeP(uint _pairIndex, uint _leveragedPosition, bool _buy) external view override returns (uint) {
        uint openInterestUSDCLong = storageT.openInterestUSDC(_pairIndex, 0);
        uint openInterestUSDCShort = storageT.openInterestUSDC(_pairIndex, 1);

        if (_buy) {
            openInterestUSDCLong += _leveragedPosition;
        } else {
            openInterestUSDCShort += _leveragedPosition;
        }

        uint openInterestPct = (100 * (_buy ? openInterestUSDCShort : openInterestUSDCLong)) /
            (openInterestUSDCLong + openInterestUSDCShort);
        SkewFee memory skewFee = skewFees[_pairIndex];

        uint box = openInterestPct/10;
        return (uint(skewFee.eqParams[box][0]*int(openInterestPct) + skewFee.eqParams[box][1])*_PRECISION /10000);
    }

    /**
     * @notice Get the fee for closing a position on a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The fee percentage for closing the position.
     */
    function pairCloseFeeP(uint _pairIndex) external view override returns (uint) {
        return fees[pairs[_pairIndex].feeIndex].closeFeeP;
    }

    /**
        * @notice Get the utilization threshold for a trading pair.
        * @param _pairIndex The index of the trading pair.
        * @return The utilization threshold percentage.
     */
    function pairUtililizationThreshold(uint _pairIndex) external view override returns(uint){
        return addtionalPairParams[_pairIndex].utilizationThreshold;
    }

    /**
        * @notice Get the skew threshold for a trading pair.
        * @param _pairIndex The index of the trading pair.
        * @return The skew threshold percentage.
     */
    function pairSkewThreshold(uint _pairIndex) external view override returns(uint){
        return addtionalPairParams[_pairIndex].skewThreshold;
    }

    /**
     * @notice Get the borrow fees multiplier for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The borrow fees multiplier below utlization threshold
     */
    function pairBorrowFeesMultiplier(uint _pairIndex) external view override returns(uint){
        return addtionalPairParams[_pairIndex].borrowFeesMultiplier;
    }

    /**
     * @notice Get the fee for executing a TP/SL limit close.
     * @param _pairIndex The index of the trading pair.
     * @return The fee percentage for the limit order.
     */
    function pairLimitOrderFeeP(uint _pairIndex) external view override returns (uint) {
        return fees[pairs[_pairIndex].feeIndex].limitOrderFeeP;
    }

    /**
     * @notice Get the minimum leveraged position size (in USDC) allowed for a trading pair.
     * @param _pairIndex The index of the trading pair.
     * @return The minimum leveraged position size in USDC.
     */
    function pairMinLevPosUSDC(uint _pairIndex) external view override returns (uint) {
        return fees[pairs[_pairIndex].feeIndex].minLevPosUSDC;
    }

    /**
    @notice Getter for skew Fees
     */
    function getSkewParams(uint _pairIndex) external view returns(SkewFee memory skewFee){
        skewFee = skewFees[_pairIndex];
    }

    /**
     * @notice Get backend details for a specific trading pair, its group, and associated fees.
     * @param _index The index of the trading pair.
     * @return Pair memory, Group memory, and Fee memory objects containing details for the trading pair, group, and fees.
     */
    function pairsBackend(uint _index) external view returns (Pair memory, Group memory, Fee memory) {
        Pair memory p = pairs[_index];
        return (p, groups[p.groupIndex], fees[p.feeIndex]);
    }


    /**
     * @notice Get priceImpact multiplier for a certain pair
     * @param _pairIndex The pair Index
     * @param isPnl Bool for pnl fee type orders
     * @return Pair Price Impact multiplier
     */
    function pairPriceImpactMultiplier(uint _pairIndex, bool isPnl) external override view returns(uint){
        return !isPnl ? pairs[_pairIndex].priceImpactMultiplier : pairParams[_pairIndex].pnlPriceImpactMultiplier;
    }


    /**
     * @notice Get Skew impact multiplier for a certain pair
     * @param _pairIndex The pair Index
     * @return Pair Skew Impact multiplier
     */
    function pairSkewImpactMultiplier(uint _pairIndex, bool isPnl) external override view returns(int){
        return !isPnl ? pairs[_pairIndex].skewImpactMultiplier : int(pairParams[_pairIndex].pnlSkewImpactMultiplier);
    }

    /**
    * @notice Helper Method to see if  Pnl order type is allowed for a pair
    * @param _pairIndex The Pair Index
    * @return bool allowed or not
     */
    function isPnlOrderTypeAllowed(uint _pairIndex) external override view returns(bool){
        return pairParams[_pairIndex].isPnlTypeAllowed == 1 ? true : false;
    }

    /**
     * @notice Helper method to Check pair is usdc aligned
     * @param _pairIndex The index of the trading pair.
     * @return bool
     */
    function isUSDCAligned(uint _pairIndex) external view override returns(bool){
        return pairs[_pairIndex].values.isUSDCAligned;
    }


    /**
    @notice Method to check if spread is dynamic or constant
     */
    function isDynamicSpreadEnabled(uint _pairIndex) external view override returns(bool){

        uint groupIndex = pairs[_pairIndex].groupIndex;
        return groups[groupIndex].isSpreadDynamic;
    }

    /**
    @notice Getter for spread caps of an asset
     */
    function spreadCaps(uint _pairIndex, bool isPnl) external view override returns(uint,uint){

        return isPnl ? 
                (pairParams[_pairIndex].pnlPosSpreadCap, pairParams[_pairIndex].pnlNegSpreadCap) :
                (pairParams[_pairIndex].posSpreadCap, pairParams[_pairIndex].negSpreadCap);
    }  

    /**
    @notice Gets the minimum roll over per asset. In APR terms with 1e10 precision. 1e8 means 1%
     */
    function minBorrowFee(uint _pairIndex) external view override returns(uint){
        return pairParams[_pairIndex].minBorrowFee;
    }

    /**
    @notice Gets the minimum roll over per asset. In APR terms with 1e10 precision. 1e8 means 1%
     */
    function maxBorrowFee(uint _pairIndex) external view override returns(uint){
        return pairParams[_pairIndex].maxBorrowFee;
    }

    /**
    * @notice Gets the Threshold to close the trade
    */
    function openCloseThreshold(uint _pairIndex, uint256 _leveragePos) external view override returns(uint256){

        PairData storage pairdata = pairData[_pairIndex];

        // Tiers are 0,1,2,3,4
        for(uint i = pairdata.numTiers - 1 ; i >= 0; i--){
            if(_leveragePos >= pairdata.openCloseTiersThresholds[i]) return pairdata.openCloseThresholdsTimers[i];
        }
        return 0;
    }

    /**
    * @notice Return True if the position type is of pnl based Fee
     */
    function getPosType(address trader, uint pairIndex, uint index) external view override returns(bool){
        return openPosType[trader][pairIndex][index];
    }

    /**
    * @notice Stores whether position is pnl Based
     */
    function storePosType(address trader, uint pairIndex, uint index, bool isPnl) external override {
        require(msg.sender == address(storageT), "STORAGE_ONLY");
        openPosType[trader][pairIndex][index] = isPnl;
    }

    /**
    * @notice Resets Position type
     */
    function resetPosType(address trader, uint pairIndex, uint index) external override {
        require(msg.sender == address(storageT), "STORAGE_ONLY");
        delete openPosType[trader][pairIndex][index];
    }

    /**
    @notice Computes the Pnl based fee
    @param pairIndex Asset
    @param collateral Amount of Collateral
    @param percentProfit Profit percentage in 1e10 precision. 1e10 = 1% 
     */
    function getPnlBasedFee(uint pairIndex, uint collateral, int percentProfit) external view override returns(uint) {
        if(percentProfit < 0) return 0; // No Fee charged for losses

        uint i = 0;
        for(i; i < fees[pairIndex].pnlFees.numTiers; i++){
            if(uint(percentProfit) < fees[pairIndex].pnlFees.tierP[i]) break;
        }

        if(i == fees[pairIndex].pnlFees.numTiers ) i --;
        
        uint pnl = collateral*uint(percentProfit)/ _PRECISION/ 100;
        return fees[pairIndex].pnlFees.feesP[i] * pnl/ _PRECISION / 100;
    }

    /**
    @notice Method to Correct TP based on MAX Gains Allowed per Pair
    @param openPrice Opening Price
    @param leverage Leverage of trade 
    @param tp Take Profit
    @param buy Long/Short
    @param pairIndex Index of Asset 
     */
    function correctTp(uint openPrice, uint leverage, uint tp, bool buy, uint pairIndex) external view override returns (uint) {
        if (tp == 0 || currentPercentProfit(openPrice, tp, buy, leverage, pairIndex) == pairs[pairIndex].values.maxGainP * int(_PRECISION)) {
            uint tpDiff = ((openPrice * uint(pairs[pairIndex].values.maxGainP)).div(leverage)) / 100;
            return buy ? openPrice + tpDiff : tpDiff <= openPrice ? openPrice - tpDiff : 0;
        }
        return tp;
    }

    /**
    @notice Method to correct Sl based on max SLs allowed per pair
    @param openPrice Opening Price
    @param leverage Leverage of trade 
    @param sl Stop Loss
    @param buy Long/Short
    @param pairIndex Index of Asset 
     */
    function correctSl(uint openPrice, uint leverage, uint sl, bool buy, uint pairIndex) external view override returns (uint) {
        if (sl > 0 && currentPercentProfit(openPrice, sl, buy, leverage, pairIndex) < pairs[pairIndex].values.maxSlP * int(_PRECISION) * (-1)) {
            uint slDiff = ((openPrice * uint(pairs[pairIndex].values.maxSlP)).div(leverage)) / 100;
            return buy ? openPrice - slDiff : openPrice + slDiff;
        }
        return sl;
    }

    /**
    @notice Returns profit percent given openPrice and Current price
    @param openPrice Opening Price
    @param currentPrice Current Price
    @param buy Long/Short
    @param leverage Leverage of the trade in 1e10 precision
    @param pairIndex Index of Asset 
     */
    function currentPercentProfit(
        uint openPrice,
        uint currentPrice,
        bool buy,
        uint leverage,
        uint pairIndex
    ) public view override returns (int p) {
        int diff = buy ? (int(currentPrice) - int(openPrice)) : (int(openPrice) - int(currentPrice));
        int minPnlP = int(_PRECISION) * (-100);
        int maxPnlP = pairs[pairIndex].values.maxGainP * int(_PRECISION);
        p = (diff * 100 * int(_PRECISION.mul(leverage))) / int(openPrice);
        p = p < minPnlP ? minPnlP : p > maxPnlP ? maxPnlP : p;
    }

    function getPairData(uint _pairIndex) external view returns(
        string memory from,
        string memory to,
        uint numTiers,
        uint[] memory tierThresholds,
        uint[] memory timer) {

        PairData storage pair = pairData[_pairIndex];
        from = pair.from;
        to = pair.to;
        numTiers = pair.numTiers;
        tierThresholds = new uint[](numTiers);
        timer = new uint[](numTiers);

        for(uint i; i < numTiers; i++){
            tierThresholds[i] = pair.openCloseTiersThresholds[i];
            timer[i] = pair.openCloseThresholdsTimers[i];
        }
    }
    
    /**
    @param pairIndex Index of Asset. 
    @param collateral Amount of Collateral
    @param percentProfit Profit percentage in 1e10 precision. 1e10 = 1% 
    @param isClose Bool to identify if trade is closing
    @notice Method to get the gas fees for a trade. Params are unused as of now. Future proofing
    @return gasFees in USDC
     */
    function getGasFees(
        uint pairIndex, 
        uint collateral, 
        int percentProfit,
        bool isClose
    ) external view override returns(uint){
        if(isClose) return minGasFees; // No Gas fees for opening positions
        return 0;
    }

    /**
        @notice Getter for max Gain Percentage in precision
     */
    function maxProfitP(uint pairIndex) external view override returns(int){
        return pairs[pairIndex].values.maxGainP * int(_PRECISION);
    }

    /**
    @notice Sets the leverages for a pair
    @param _pairIndex The index of the pair
    @param _maxLeverage The maximum leverage for the pair
    @param _pnlMaxLeverage The maximum leverage for the pnl based pair
     */
    function setLeverages(uint _pairIndex, uint _maxLeverage, uint _pnlMaxLeverage) external onlyRiskManager {
        require(isPairListed[pairs[_pairIndex].feed.feedId], "PAIR_NOT_LISTED");
        require(_maxLeverage > pairs[_pairIndex].leverages.minLeverage && _pnlMaxLeverage > pairs[_pairIndex].leverages.minLeverage, "INVALID_LEVERAGES");
        pairs[_pairIndex].leverages.maxLeverage = _maxLeverage;
        pairs[_pairIndex].leverages.pnlMaxLeverage = _pnlMaxLeverage;

        emit PairUpdated(_pairIndex);
    }
    
    /**
    * @notice return if position roll is ongoing
    * @param _pairIndex The index of the pair, if 1 it means roll is ongoing
    */
    function isPositionRollOngoing(
        uint _pairIndex
    ) external view returns(bool) {
        return addtionalPairParams[_pairIndex].isPositionRollOngoing == 1;
    }
    
    /**
    * @notice Set pairIndex for which rollover is on going, user transactions won't be allowed in this period
    * @param _pairIndex pair index of pair to set status for
    * @param _status setting if position roll is ongoing or not, 1 means ongoing, 0 means not ongoing
    */
    function setPositionRollOngoing(
        uint _pairIndex,
        uint _status
    ) external onlyGov {
        addtionalPairParams[_pairIndex].isPositionRollOngoing = _status;
        if(_status == 1){
            emit RollAdjustmentInitiated(_pairIndex);
        } else {
            emit RollAdjustmentCompleted(_pairIndex);
        }
    }

}
