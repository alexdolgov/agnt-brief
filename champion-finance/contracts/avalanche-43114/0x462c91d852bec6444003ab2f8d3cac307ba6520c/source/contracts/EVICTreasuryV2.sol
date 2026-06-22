// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./lib/Babylonian.sol";
import "./owner/Operator.sol";
import "./utils/ContractGuard.sol";
import "./interfaces/IBasisAsset.sol";
import "./interfaces/IOracle.sol";
import "./interfaces/IBoardroom.sol";
import "./interfaces/IEVICToken.sol";
import "./lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract EVICTreasuryV2 is ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    struct BoardroomInfo {
        address boardroom;
        uint256 allocPoint;
    }

    BoardroomInfo[] public boardroomInfo;
    uint256 public totalAllocPoint;

    uint256 public constant PERIOD = 6 hours;

    // governance
    address public operator;
    // flags
    bool public initialized;
    // epoch
    uint256 public startTime;
    uint256 public epoch;
    uint256 public previousEpoch;
    uint256 public epochSupplyContractionLeft;

    address public mainToken;
    address public oracle;

    // price
    uint256 public mainTokenPriceOne;
    uint256 public mainTokenPriceCeiling;
    uint256 public mainTokenPriceRebase;
    uint256 public consecutiveEpochHasPriceBelowOne;
    uint256 public consecutiveEpochToRebase = 10;

    uint256 public totalEpochAbovePeg = 0;
    uint256 public totalEpochUnderPeg = 0;
    uint256[] public epochRebases;

    uint256[] public supplyTiers;
    uint256[] public maxExpansionTiers;

    uint256[] public expansionTiersTwaps = [0, 1.5 ether, 2 ether];
    uint256[] public expansionTiersRates = [4000, 7000, 10000];

    /*===== Rebase ====*/
    uint256 private constant DECIMALS = 18;
    uint256 private constant STABLE_DECIMALS = 18;
    uint256 private constant ONE = uint256(10**DECIMALS);
    // Due to the expression in computeSupplyDelta(), MAX_RATE * MAX_SUPPLY must fit into an int256.
    // Both are 18 decimals fixed point numbers.
    uint256 private constant MAX_RATE = 10**STABLE_DECIMALS * 10**DECIMALS;
    // MAX_SUPPLY = MAX_INT256 / MAX_RATE
    uint256 private constant MAX_SUPPLY = uint256(type(int256).max) / MAX_RATE;
    
    bool public rebaseStarted;
    bool public enabledRebase = true;

    uint256 private constant midpointRounding = 10**(DECIMALS - 7);

    uint256 public previousEpochMainPrice;

    uint256 public minTokenToExpansion = 0.675 ether;
    uint256 public minTokenSupplyToExpansion = 15 ether;

    /*===== End Rebase ====*/
        
    uint256 public daoFundSharedPercent = 10; // 10%
    uint256 public polFundSharedPercent = 15; // 15%

    uint256 private constant minPercentExpansionTier = 10; // 0.1%
    uint256 private constant maxPercentExpansionTier = 1000; // 10%
        
    /* =================== Events =================== */

    event Initialized(address indexed executor, uint256 at);
    event TreasuryFunded(uint256 timestamp, uint256 seigniorage);
    event BoardroomFunded(uint256 timestamp, uint256 seigniorage);
    event DaoFundFunded(uint256 timestamp, uint256 seigniorage);
    event PolFundFunded(uint256 timestamp, uint256 seigniorage);
    event LogRebase(
        uint256 indexed epoch,
        uint256 supplyDelta,
        uint256 newPrice,
        uint256 oldPrice,
        uint256 newTotalSupply,
        uint256 oldTotalSupply,
        uint256 timestampSec
    );
    event EnableRebase();
    event DisableRebase();
    event SetOperator(address indexed account, address newOperator);
    event AddBoardroom(address indexed account, address newBoardroom, uint256 allocPoint);
    event SetBoardroomAllocPoint(uint256 _pid, uint256 oldValue, uint256 newValue);
    event SetMainTokenPriceCeiling(uint256 newValue);
    event SetSupplyTiersEntry(uint8 _index, uint256 _value);
    event SetMaxExpansionTiersEntry(uint8 _index, uint256 _value);
    event SetMinTokenToExpansion(uint256 oldValue, uint256 newValue);
    event SetMinTokenSupplyToExpansion(uint256 oldValue, uint256 newValue);
    event SetExpansionTiersTwaps(uint8 _index, uint256 _value);
    event SetExpansionTiersRates(uint8 _index, uint256 _value);
    event SetDaoFundSharedPercent(uint256 oldValue, uint256 newValue);
    event SetPolFundSharedPercent(uint256 oldValue, uint256 newValue);
    event SetMainTokenPriceRebase(uint256 oldValue, uint256 newValue);
    event SetConsecutiveEpochToRebase(uint256 oldValue, uint256 newValue);

    constructor() {
        initialized = false;
        epoch = 0;
        previousEpoch = 0;
        epochSupplyContractionLeft = 0;
        consecutiveEpochHasPriceBelowOne = 0;
        rebaseStarted = false;
        previousEpochMainPrice = 0;
    }

    /* =================== Modifier =================== */

    modifier onlyOperator() {
        require(operator == msg.sender, "Treasury: caller is not the operator");
        _;
    }

    modifier checkCondition() {
        require(block.timestamp >= startTime, "Treasury: not started yet");

        _;
    }

    modifier checkEpoch() {
        require(block.timestamp >= nextEpochPoint(), "Treasury: not opened yet");

        _;

        epoch = epoch.add(1);
    }

    modifier checkOperator() {
        require(IBasisAsset(mainToken).operator() == address(this), "Treasury: need more permission");
        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(Operator(boardroomInfo[pid].boardroom).operator() == address(this), "Treasury: need more permission");
        }

        _;
    }

    modifier notInitialized() {
        require(!initialized, "Treasury: already initialized");

        _;
    }

    /* ========== VIEW FUNCTIONS ========== */

    function isInitialized() external view returns (bool) {
        return initialized;
    }

    // epoch
    function nextEpochPoint() public view returns (uint256) {
        return startTime.add(epoch.mul(PERIOD));
    }

    // oracle
    function getMainTokenPrice() public view returns (uint256) {
        try IOracle(oracle).consult(mainToken, 1e18) returns (uint144 price) {
            return uint256(price);
        } catch {
            revert("Treasury: failed to consult MainToken price from the oracle");
        }
    }

    function getTwapPrice() public view returns (uint256) {
        try IOracle(oracle).twap(mainToken, 1e18) returns (uint144 price) {
            return uint256(price);
        } catch {
            revert("Treasury: failed to twap MainToken price from the oracle");
        }
    }

    function initialize(
        address _mainToken,
        address _oracle,
        uint256 _startTime
    ) external notInitialized {
        require(_mainToken != address(0), "!_mainToken");
        require(_oracle != address(0), "!_oracle");

        mainToken = _mainToken;
        oracle = _oracle;
        startTime = _startTime;

        mainTokenPriceOne = 10**STABLE_DECIMALS; // This is to allow a PEG of 1 MainToken per WETH
        mainTokenPriceRebase = 8*10**(STABLE_DECIMALS - 1); // 0.8 WETH
        mainTokenPriceCeiling = mainTokenPriceOne.mul(101).div(100);

        // Dynamic max expansion percent
        supplyTiers = [15 ether, 250 ether, 500 ether, 750 ether, 1000 ether, 2500 ether, 5000 ether, 10000 ether, 25000 ether];
        maxExpansionTiers = [450, 400, 350, 300, 250, 200, 150, 125, 100];

        IEVICToken(mainToken).grantRebaseExclusion(address(this));

        initialized = true;
        operator = msg.sender;

        emit Initialized(msg.sender, block.number);
    }

    function setOperator(address _operator) external onlyOperator {
        operator = _operator;
        emit SetOperator(msg.sender, _operator);
    }

    function checkBoardroomDuplicate(address _boardroom) internal view {
        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(boardroomInfo[pid].boardroom != _boardroom, "Treasury: existing boardroom?");
        }
    }

    function addBoardroom(address _boardroom, uint256 _allocPoint) external onlyOperator {
        checkBoardroomDuplicate(_boardroom);
        boardroomInfo.push(BoardroomInfo({boardroom: _boardroom, allocPoint: _allocPoint}));
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        IEVICToken(mainToken).grantRebaseExclusion(_boardroom);
        emit AddBoardroom(msg.sender, _boardroom, _allocPoint);
    }

    function setBoardroomAllocPoint(uint256 _pid, uint256 _allocPoint) public onlyOperator {
        BoardroomInfo storage boardroom = boardroomInfo[_pid];
        emit SetBoardroomAllocPoint(_pid, boardroom.allocPoint, _allocPoint);
        totalAllocPoint = totalAllocPoint.sub(boardroom.allocPoint).add(_allocPoint);
        boardroom.allocPoint = _allocPoint;
    }

    function grantRebaseExclusion(address who) external onlyOperator {
        IEVICToken(mainToken).grantRebaseExclusion(who);
    }

    function revokeRebaseExclusion(address who) external onlyOperator {
        IEVICToken(mainToken).revokeRebaseExclusion(who);
    }

    function setMainTokenPriceCeiling(uint256 _mainTokenPriceCeiling) external onlyOperator {
        require(_mainTokenPriceCeiling >= mainTokenPriceOne && _mainTokenPriceCeiling <= mainTokenPriceOne.mul(120).div(100), "out of range"); // [$1.0, $1.2]
        mainTokenPriceCeiling = _mainTokenPriceCeiling;
        emit SetMainTokenPriceCeiling(_mainTokenPriceCeiling);
    }

    function setSupplyTiersEntry(uint8 _index, uint256 _value) external onlyOperator returns (bool) {
        require(_index < supplyTiers.length, "Index has to be lower than count of tiers");
        if (_index > 0) {
            require(_value > supplyTiers[_index - 1]);
        }
        if (_index < supplyTiers.length - 1) {
            require(_value < supplyTiers[_index + 1]);
        }
        supplyTiers[_index] = _value;
        emit SetSupplyTiersEntry(_index, _value);
        return true;
    }

    function setMaxExpansionTiersEntry(uint8 _index, uint256 _value) external onlyOperator returns (bool) {
        require(_index < maxExpansionTiers.length, "Index has to be lower than count of tiers");
        require(_value >= minPercentExpansionTier && _value <= maxPercentExpansionTier, "_value: out of range"); // [0.1%, 10%]
        maxExpansionTiers[_index] = _value;
        emit SetMaxExpansionTiersEntry(_index, _value);
        return true;
    }

    function _syncPrice() internal {
        try IOracle(oracle).sync() {} catch {
            revert("Treasury: failed to sync price from the oracle");
        }
    }

    function _updatePrice() internal {
        try IOracle(oracle).update() {} catch {
            revert("Treasury: failed to update price from the oracle");
        }
    }

    function getMainTokenCirculatingSupply() public view returns (uint256) {
        return IEVICToken(mainToken).rebaseSupply();
    }

    function getEstimatedReward(uint256 _pid) external view returns (uint256) {
        uint256 mainTokenTotalSupply = IEVICToken(mainToken).totalSupply();
        uint256 estimatedReward = minTokenToExpansion;
        if (mainTokenTotalSupply >= minTokenSupplyToExpansion) {   
            uint256 percentage = calculateMaxSupplyExpansionPercent(mainTokenTotalSupply);
            estimatedReward = mainTokenTotalSupply.mul(percentage).div(10000);
        }
        uint256 tokenPrice = getTwapPrice();
        uint256 expansionRate = calculateExpansionRate(tokenPrice);
        estimatedReward = estimatedReward.mul(expansionRate).div(10000);

        if (estimatedReward < minTokenToExpansion) {
            estimatedReward = minTokenToExpansion;
        }

        uint256 _daoFundSharedAmount = estimatedReward.mul(daoFundSharedPercent).div(100);
        uint256 _polFundSharedAmount = estimatedReward.mul(polFundSharedPercent).div(100);

        BoardroomInfo storage boardroomPool = boardroomInfo[_pid];
        estimatedReward = estimatedReward.sub(_daoFundSharedAmount).sub(_polFundSharedAmount);

        return estimatedReward.mul(boardroomPool.allocPoint).div(totalAllocPoint);
    }

    function _sendToBoardroom(uint256 _amount) internal {
        IEVICToken mainTokenErc20 = IEVICToken(mainToken);
        mainTokenErc20.mint(address(this), _amount);

        uint256 _daoFundSharedAmount = _amount.mul(daoFundSharedPercent).div(100);
        address daoFund = mainTokenErc20.getDaoFund();
        mainTokenErc20.transfer(daoFund, _daoFundSharedAmount);
        emit DaoFundFunded(block.timestamp, _daoFundSharedAmount);

        uint256 _polFundSharedAmount = _amount.mul(polFundSharedPercent).div(100);
        address polFund = mainTokenErc20.getPolWallet();
        mainTokenErc20.transfer(polFund, _polFundSharedAmount);
        emit PolFundFunded(block.timestamp, _polFundSharedAmount);

        _amount = _amount.sub(_daoFundSharedAmount).sub(_polFundSharedAmount);

        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            BoardroomInfo storage boardroomPool = boardroomInfo[pid];
            uint256 boardroomReward = _amount.mul(boardroomPool.allocPoint).div(totalAllocPoint);
            uint256 boardRoomAmount = IBoardroom(boardroomPool.boardroom).totalSupply();
            uint256 daoFundReward = 0;
            if (boardroomReward > 0) {
                if (boardRoomAmount > 0) {             
                    IERC20(mainToken).safeApprove(boardroomPool.boardroom, 0);
                    IERC20(mainToken).safeApprove(boardroomPool.boardroom, boardroomReward);
                    IBoardroom(boardroomPool.boardroom).allocateSeigniorage(boardroomReward);
                } else {
                    daoFundReward = daoFundReward.add(boardroomReward);
                }

                if (daoFundReward > 0) {
                    mainTokenErc20.transfer(daoFund, daoFundReward);
                }
            }
        }

        emit BoardroomFunded(block.timestamp, _amount);
    }

    function calculateMaxSupplyExpansionPercent(uint256 _mainTokenSupply) public view returns (uint256) {
        if (_mainTokenSupply < minTokenSupplyToExpansion) {
            return 0;
        }
        uint256 maxSupplyExpansionPercent;
        uint256 supplyTierLength = supplyTiers.length;
        uint256 maxExpansionTiersLength = maxExpansionTiers.length;
        require(supplyTierLength == maxExpansionTiersLength, "SupplyTier data invalid");

        for (uint256 tierId = supplyTierLength - 1; tierId >= 0; --tierId) {
            if (_mainTokenSupply >= supplyTiers[tierId]) {
                maxSupplyExpansionPercent = maxExpansionTiers[tierId];
                break;
            }
        }
        
        return maxSupplyExpansionPercent;
    }

    function calculateExpansionRate(uint256 _tokenPrice) public view returns (uint256) {
        uint256 expansionRate;
        uint256 expansionTiersTwapsLength = expansionTiersTwaps.length;
        uint256 expansionTiersRatesLength = expansionTiersRates.length;
        require(expansionTiersTwapsLength == expansionTiersRatesLength, "ExpansionTiers data invalid");

        for (uint256 tierId = expansionTiersTwapsLength - 1; tierId >= 0; --tierId) {
            if (_tokenPrice >= expansionTiersTwaps[tierId]) {
                expansionRate = expansionTiersRates[tierId];
                break;
            }
        }
        
        return expansionRate;
    }

    function allocateSeigniorage() external onlyOneBlock checkCondition checkEpoch checkOperator {
        _updatePrice();
        if (epoch > 0) {
            previousEpochMainPrice = getMainTokenPrice();
            if (previousEpochMainPrice > mainTokenPriceCeiling) {
                totalEpochAbovePeg = totalEpochAbovePeg.add(1);
                // Expansion
                uint256 mainTokenTotalSupply = IEVICToken(mainToken).totalSupply();
                uint256 _savedForBoardroom = minTokenToExpansion;
                if (mainTokenTotalSupply >= minTokenSupplyToExpansion) {
                    uint256 _percentage = calculateMaxSupplyExpansionPercent(mainTokenTotalSupply);
                    _savedForBoardroom = mainTokenTotalSupply.mul(_percentage).div(10000);
                }

                if (_savedForBoardroom > 0) {
                    uint256 expansionRate = calculateExpansionRate(previousEpochMainPrice);
                    _savedForBoardroom = _savedForBoardroom.mul(expansionRate).div(10000);
                    if (_savedForBoardroom < minTokenToExpansion) {
                        _savedForBoardroom = minTokenToExpansion;
                    }

                    _sendToBoardroom(_savedForBoardroom);
                }
            }

            if (previousEpochMainPrice < mainTokenPriceCeiling) {
                totalEpochUnderPeg = totalEpochUnderPeg.add(1);
            }

            // Rebase
            if (enabledRebase) {
                if (previousEpochMainPrice < mainTokenPriceOne) {
                    consecutiveEpochHasPriceBelowOne = consecutiveEpochHasPriceBelowOne.add(1);
                } else {
                    consecutiveEpochHasPriceBelowOne = 0;
                }
                
                if (rebaseStarted && previousEpochMainPrice < mainTokenPriceOne) {
                    _rebase(previousEpochMainPrice);
                    consecutiveEpochHasPriceBelowOne = 0;
                } else {
                    rebaseStarted = false;
                    if (previousEpochMainPrice <= mainTokenPriceRebase || consecutiveEpochHasPriceBelowOne >= consecutiveEpochToRebase) {
                        _rebase(previousEpochMainPrice);
                        consecutiveEpochHasPriceBelowOne = 0;
                    }
                }
            }
        }
    }

    function computeSupplyDelta() public view returns (bool negative, uint256 supplyDelta, uint256 targetRate) {
        require(previousEpochMainPrice > 0, "previousEpochMainPrice invalid");
        targetRate = 10**DECIMALS;
        uint256 rate = previousEpochMainPrice.mul(10**DECIMALS).div(10**STABLE_DECIMALS);
        negative = rate < targetRate;
        uint256 rebasePercentage = ONE;
        if (negative) {
            rebasePercentage = targetRate.sub(rate).mul(ONE).div(targetRate);
        } else {
            rebasePercentage = rate.sub(targetRate).mul(ONE).div(targetRate);
        }

        supplyDelta = mathRound(getMainTokenCirculatingSupply().mul(rebasePercentage).div(ONE));
    }

    function mathRound(uint256 _value) internal pure returns (uint256) {
        uint256 valueFloor = _value.div(midpointRounding).mul(midpointRounding);
        uint256 delta = _value.sub(valueFloor);
        if (delta >= midpointRounding.div(2)) {
            return valueFloor.add(midpointRounding);
        } else {
            return valueFloor;
        }
    }

    function _rebase(uint256 _oldPrice) internal {
        require(epoch >= previousEpoch, "cannot rebase");
        (bool negative, uint256 supplyDelta, uint256 targetRate) = computeSupplyDelta();

        uint256 oldTotalSupply = IERC20(mainToken).totalSupply();
        uint256 newTotalSupply = oldTotalSupply;
        if (supplyDelta > 0) {
            rebaseStarted = true;
            if (oldTotalSupply.add(uint256(supplyDelta)) > MAX_SUPPLY) {
                supplyDelta = MAX_SUPPLY.sub(oldTotalSupply);
            }

            newTotalSupply = IEVICToken(mainToken).rebase(epoch, supplyDelta, negative);
            require(newTotalSupply <= MAX_SUPPLY, "newTotalSupply <= MAX_SUPPLY");
            previousEpoch = epoch;
            epochRebases.push(epoch);
            _syncPrice();
            _updatePrice();
        }

        emit LogRebase(epoch, supplyDelta, targetRate, _oldPrice, newTotalSupply, oldTotalSupply, block.timestamp);
    }

    function setMinTokenToExpansion(uint256 _value) external onlyOperator {
        emit SetMinTokenToExpansion(minTokenToExpansion, _value);
        minTokenToExpansion = _value;
    }

    function setMinTokenSupplyToExpansion(uint256 _value) external onlyOperator {
        emit SetMinTokenSupplyToExpansion(minTokenSupplyToExpansion, _value);
        minTokenSupplyToExpansion = _value;
    }

    function setExpansionTiersTwaps(uint8 _index, uint256 _value) external onlyOperator returns (bool) {
        uint256 expansionTiersTwapsLength = expansionTiersTwaps.length;
        require(_index < expansionTiersTwapsLength, "Index has to be lower than count of tiers");
        if (_index > 0) {
            require(_value > expansionTiersTwaps[_index - 1]);
        }
        if (_index < expansionTiersTwapsLength - 1) {
            require(_value < expansionTiersTwaps[_index + 1]);
        }
        expansionTiersTwaps[_index] = _value;
        emit SetExpansionTiersTwaps(_index, _value);
        return true;
    }

    function setExpansionTiersRates(uint8 _index, uint256 _value) external onlyOperator returns (bool) {
        require(_index < expansionTiersRates.length, "Index has to be lower than count of tiers");
        require(_value <= 10000, "_value: out of range"); // [_value < 100%]
        expansionTiersRates[_index] = _value;
        emit SetExpansionTiersRates(_index, _value);
        return true;
    }

    function enableRebase() external onlyOperator {
        enabledRebase = true;
		emit EnableRebase();
    }

    function disableRebase() external onlyOperator {
        enabledRebase = false;
		emit DisableRebase();
    }

    function setWithdrawLockupEpoch(uint256 _value) external onlyOperator {
        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            IBoardroom(boardroomInfo[pid].boardroom).setWithdrawLockupEpoch(_value);
        }
    }

    function setRewardLockupEpoch(uint256 _value) external onlyOperator {
        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            IBoardroom(boardroomInfo[pid].boardroom).setRewardLockupEpoch(_value);
        }
    }

    function setDaoFundSharedPercent(uint256 _value) external onlyOperator {
        require(_value <= 50, 'Treasury: Max percent is 50%');
        emit SetDaoFundSharedPercent(daoFundSharedPercent, _value);
        daoFundSharedPercent = _value;
    }

    function setPolFundSharedPercent(uint256 _value) external onlyOperator {
        require(_value <= 50, 'Treasury: Max percent is 50%');
        emit SetPolFundSharedPercent(polFundSharedPercent, _value);
        polFundSharedPercent = _value;
    }

    function setMainTokenPriceRebase(uint256 _value) external onlyOperator {
        uint256 maxMainTokenPriceRebase = 8*10**(STABLE_DECIMALS - 1); // 0.8 WETH
        uint256 minMainTokenPriceRebase = 6*10**(STABLE_DECIMALS - 1); // 0.6 WETH
        require(_value <= maxMainTokenPriceRebase && _value >= minMainTokenPriceRebase, 'Treasury: value out of range (0.6 - 0.8)');
        emit SetMainTokenPriceRebase(mainTokenPriceRebase, _value);
        mainTokenPriceRebase = _value;
    }

    function setConsecutiveEpochToRebase(uint256 _value) external onlyOperator {
        require(_value <= 15 && _value >= 10, 'Treasury: value out of range (10 - 15)');
        emit SetConsecutiveEpochToRebase(consecutiveEpochToRebase, _value);
        consecutiveEpochToRebase = _value;
    }

    function getEpochRebases() external view returns (uint256[] memory)
	{
		return epochRebases;
	}
}