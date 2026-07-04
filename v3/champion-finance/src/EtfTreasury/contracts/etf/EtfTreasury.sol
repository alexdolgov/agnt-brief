// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../owner/Operator.sol";
import "../utils/ContractGuard.sol";
import "../interfaces/IBasisAsset.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/IBoardroom.sol";
import "../interfaces/IMainTokenV2.sol";
import "../interfaces/IChamETF.sol";
import "../interfaces/IETFZap.sol";
import "../interfaces/IJoeRouter.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

contract EtfTreasury is ContractGuard, Initializable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
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

    IJoeRouter public ROUTER;
    address public WAVAX;
    address public mainToken;
    IChamETF public etfToken;
    address public etfZap;
    address[] public intermediariesZap;
    address public oracle;

    // price
    uint256 public mainTokenPriceOne;
    uint256 public mainTokenPriceCeiling;
    uint256 public mainTokenPriceRebase;
    uint256 public consecutiveEpochHasPriceBelowOne;
    uint256 public consecutiveEpochToRebase;

    uint256 public totalEpochAbovePeg;
    uint256 public totalEpochUnderPeg;
    uint256[] public epochRebases;

    uint256[] public expansionTiersTwaps;
    uint256[] public expansionTiersRates;

    /*===== Rebase ====*/
    uint256 private constant DECIMALS = 18;
    uint256 private constant ONE = uint256(10**DECIMALS);
    uint256 private STABLE_DECIMALS;
    uint256 private MAX_SUPPLY;
    
    bool public rebaseStarted;
    bool public enabledRebase;

    uint256 private constant midpointRounding = 10**(DECIMALS - 7);

    uint256 public previousEpochMainPrice;

    uint256 public maxEtfAllocate;
    uint256 public minEtfAllocate;

    /*===== End Rebase ====*/
    uint256 public devFundPercent;

    address public devFund;
    address public daoFund;
    address public polWallet;
    address public sellingWallet;

    bool public enabledEmergencyWithdrawTax;

    // Additional reward
    address public aoeaToken;
    uint256 public additionalRewardTotalAllocPoint;
    uint256 public additionalRewardPoolStartTime;
    uint256 public additionalRewardPoolEndTime;

    uint256 public constant additionalRewardRunningTime = 270 days;
    uint256 public constant TOTAL_USER_REWARD_AOEA = 25000 ether;
    uint256 public aoeaTokenPerSecondForUser;
        
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
    event SetExpansionTiersTwaps(uint8 _index, uint256 _value);
    event SetExpansionTiersRates(uint8 _index, uint256 _value);
    event SetDevFundPercent(uint256 oldValue, uint256 newValue);
    event SetMainTokenPriceRebase(uint256 oldValue, uint256 newValue);
    event SetConsecutiveEpochToRebase(uint256 oldValue, uint256 newValue);
    event SetDevFund(address oldWallet, address newWallet);
    event SetDaoFund(address oldWallet, address newWallet);
    event SetSellingWallet(address oldWallet, address newWallet);
    event SetPolWallet(address oldWallet, address newWallet);
    event AdminWithdraw(address _tokenAddress, uint256 _amount);
    event EnableEmergencyWithdrawTax();
	event DisableEmergencyWithdrawTax();
    event SetEtfZap(address oldValue, address newValue);
    event SetMinEtfAllocate(uint256 oldValue, uint256 newValue);
    event SetMaxEtfAllocate(uint256 oldValue, uint256 newValue);
    event SetAdditionalRewardAllocPoint(uint256 _pid, uint256 oldValue, uint256 newValue);

    function __Upgradeable_Init() external initializer {
        initialized = false;
        epoch = 0;
        previousEpoch = 0;
        consecutiveEpochHasPriceBelowOne = 0;
        rebaseStarted = false;
        previousEpochMainPrice = 0;

        consecutiveEpochToRebase = 10;
        totalEpochAbovePeg = 0;
        totalEpochUnderPeg = 0;

        enabledRebase = true;

        devFundPercent = 1000; // 10%

        enabledEmergencyWithdrawTax = true;

        maxEtfAllocate = 21 ether;
        minEtfAllocate = 14 ether;
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
        address _etfToken,
        address _router,
        address _sellingWallet,
        address _polWallet,
        address _daoFund,
        address _devFund,
        address _oracle,
        uint256 _stableDecimals,
        address _aoeaToken,
        uint256 _startTime
    ) external notInitialized {
        require(_mainToken != address(0), "!_mainToken");
        require(_etfToken != address(0), "!_etfToken");
        require(_router != address(0), "!_router");
        require(_sellingWallet != address(0), "!_sellingWallet");
        require(_polWallet != address(0), "!_polWallet");
        require(_daoFund != address(0), "!_daoFund");
        require(_devFund != address(0), "!_devFund");
        require(_oracle != address(0), "!_oracle");
        require(_aoeaToken != address(0), "!_aoeaToken");

        mainToken = _mainToken;
        etfToken = IChamETF(_etfToken);
        ROUTER = IJoeRouter(_router);
        WAVAX = ROUTER.WAVAX();
        oracle = _oracle;
        startTime = _startTime;

        sellingWallet = _sellingWallet;
        polWallet = _polWallet;
        devFund = _devFund;
        daoFund = _daoFund;

        aoeaToken = _aoeaToken;

        STABLE_DECIMALS = _stableDecimals;
        uint256 MAX_RATE = 10**STABLE_DECIMALS * 10**DECIMALS;
        MAX_SUPPLY = uint256(type(int256).max) / MAX_RATE;

        mainTokenPriceOne = 10**STABLE_DECIMALS; // This is to allow a PEG of 1 MainToken per STABLE
        mainTokenPriceRebase = 8*10**(STABLE_DECIMALS - 1); // 0.8 STABLE
        mainTokenPriceCeiling = mainTokenPriceOne.mul(101).div(100);

        expansionTiersTwaps = [0, mainTokenPriceOne.mul(150).div(100), mainTokenPriceOne.mul(200).div(100)];
        expansionTiersRates = [4000, 7000, 10000];

        IMainTokenV2(mainToken).grantRebaseExclusion(address(this)); // excluded rebase

        // additional reward
        additionalRewardPoolStartTime = _startTime.add(PERIOD);
        additionalRewardPoolEndTime = additionalRewardPoolStartTime + additionalRewardRunningTime;

        aoeaTokenPerSecondForUser = TOTAL_USER_REWARD_AOEA.div(additionalRewardRunningTime);
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

    function addBoardroom(address _boardroom, uint256 _allocPoint, uint256 _additionalRewardAllocPoint) external onlyOperator {
        require(_boardroom != address(0), "!_boardroom");
        checkBoardroomDuplicate(_boardroom);
        massUpdatePools();
        boardroomInfo.push(BoardroomInfo({
            boardroom: _boardroom, 
            allocPoint: _allocPoint
        }));
        additionalRewardTotalAllocPoint = additionalRewardTotalAllocPoint.add(_additionalRewardAllocPoint);
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        IBoardroom boardRoom = IBoardroom(_boardroom);
        boardRoom.setAdditionalRewardAllocPoint(_additionalRewardAllocPoint);
        IMainTokenV2(mainToken).grantRebaseExclusion(_boardroom);
        IERC20Upgradeable(aoeaToken).safeApprove(_boardroom, TOTAL_USER_REWARD_AOEA);
        emit AddBoardroom(msg.sender, _boardroom, _allocPoint);
    }

    function setBoardroomAllocPoint(uint256 _pid, uint256 _allocPoint) public onlyOperator {
        BoardroomInfo storage boardroom = boardroomInfo[_pid];
        emit SetBoardroomAllocPoint(_pid, boardroom.allocPoint, _allocPoint);
        totalAllocPoint = totalAllocPoint.sub(boardroom.allocPoint).add(_allocPoint);
        boardroom.allocPoint = _allocPoint;
    }

    function massUpdatePools() public onlyOperator {
        uint256 length = boardroomInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            BoardroomInfo storage pool = boardroomInfo[pid];
            IBoardroom boardRoom = IBoardroom(pool.boardroom);
            boardRoom.massUpdatePools();
        }
    }

    function setAdditionalRewardAllocPoint(uint256 _pid, uint256 _allocPoint) public onlyOperator {
        massUpdatePools();
        BoardroomInfo storage pool = boardroomInfo[_pid];
        IBoardroom boardRoom = IBoardroom(pool.boardroom);
        additionalRewardTotalAllocPoint = additionalRewardTotalAllocPoint.sub(boardRoom.additionalRewardAllocPoint()).add(_allocPoint);
        emit SetAdditionalRewardAllocPoint(_pid, boardRoom.additionalRewardAllocPoint(), _allocPoint);
        boardRoom.setAdditionalRewardAllocPoint(_allocPoint);
    }

    function grantRebaseExclusion(address who) external onlyOperator {
        IMainTokenV2(mainToken).grantRebaseExclusion(who);
    }

    function revokeRebaseExclusion(address who) external onlyOperator {
        IMainTokenV2(mainToken).revokeRebaseExclusion(who);
    }

    function setMainTokenPriceCeiling(uint256 _mainTokenPriceCeiling) external onlyOperator {
        require(_mainTokenPriceCeiling >= mainTokenPriceOne.mul(70).div(100) && _mainTokenPriceCeiling <= mainTokenPriceOne.mul(110).div(100), "out of range (0.7, 1.1)"); // [0.7, 1.1]
        mainTokenPriceCeiling = _mainTokenPriceCeiling;
        emit SetMainTokenPriceCeiling(_mainTokenPriceCeiling);
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
        return IMainTokenV2(mainToken).rebaseSupply();
    }

    function getEstimatedReward(uint256 _pid) external view returns (uint256) {
        uint256 wavaxBalanceOf = IERC20(WAVAX).balanceOf(address(this));
        uint256 etfBalanceOf = IERC20Upgradeable(address(etfToken)).balanceOf(address(this));
        if (wavaxBalanceOf > 0 || etfBalanceOf > 0) {
            BoardroomInfo storage boardroomPool = boardroomInfo[_pid];
            if (boardroomPool.allocPoint > 0) {
                uint256 etfToMint = calculateEtfToMint(wavaxBalanceOf);
                uint256 totalEtf = etfToMint.add(etfBalanceOf);
                uint256 estimatedReward = calculateEtfToAllocate(totalEtf);
                if (estimatedReward > 0) {
                    estimatedReward = estimatedReward.mul(10000 - devFundPercent).div(10000);
                    return estimatedReward.mul(boardroomPool.allocPoint).div(totalAllocPoint);
                }
            }
        }

        return 0;
    }

    function calculateEtfToMint(uint256 _wavaxBalance) public view returns (uint256) {
        uint256 priceEtfByWavax = IETFZap(etfZap).getMaxAmountForJoinSingle(WAVAX, intermediariesZap, maxEtfAllocate);
        if (priceEtfByWavax > 0) {
            uint256 etfToMint = _wavaxBalance.mul(maxEtfAllocate).div(priceEtfByWavax);
            if (etfToMint > maxEtfAllocate) {
                return maxEtfAllocate;
            }
            return etfToMint;
        }

        return 0;
    }

    function calculateEtfToAllocate(uint256 _totalEtf) public view returns (uint256) {
        if (_totalEtf >= maxEtfAllocate) {
            return maxEtfAllocate;
        }

        if (_totalEtf >= minEtfAllocate) {
            return minEtfAllocate;
        }

        return 0;
    }

    function _sendEtfToBoardroom() internal {
        // mint ETF
        mintEtf();

        // send reward to boardroom
        uint256 etfBalanceOf = IERC20Upgradeable(address(etfToken)).balanceOf(address(this));
        if (etfBalanceOf > 0) {
            uint256 etfToAllocate = calculateEtfToAllocate(etfBalanceOf);
            if (etfToAllocate > 0) {
                uint256 devFundAmount = etfToAllocate.mul(devFundPercent).div(10000);
                if (devFundAmount > 0) {
                    IERC20Upgradeable(address(etfToken)).safeTransfer(devFund, devFundAmount);
                    etfToAllocate = etfToAllocate.sub(devFundAmount);
                }

                uint256 length = boardroomInfo.length;
                for (uint256 pid = 0; pid < length; ++pid) {
                    BoardroomInfo storage boardroomPool = boardroomInfo[pid];
                    if (boardroomPool.allocPoint > 0) {
                        uint256 boardroomReward = etfToAllocate.mul(boardroomPool.allocPoint).div(totalAllocPoint);
                        uint256 boardRoomAmount = IBoardroom(boardroomPool.boardroom).totalSupply();
                        if (boardroomReward > 0) {
                            if (boardRoomAmount > 0) {             
                                IERC20Upgradeable(address(etfToken)).safeApprove(boardroomPool.boardroom, 0);
                                IERC20Upgradeable(address(etfToken)).safeApprove(boardroomPool.boardroom, boardroomReward);
                                IBoardroom(boardroomPool.boardroom).allocateSeigniorage(boardroomReward);
                            }
                        }
                    }
                }
            }
        }
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
        previousEpochMainPrice = getMainTokenPrice();
        if (epoch > 0) {
            if (previousEpochMainPrice > mainTokenPriceCeiling) {
                totalEpochAbovePeg = totalEpochAbovePeg.add(1);
                // Expansion
                uint256 mainTokenCirculatingSupply = IMainTokenV2(mainToken).rebaseSupply();
                uint256 percentage = previousEpochMainPrice;
                uint256 totalTokenExpansion = mainTokenCirculatingSupply.mul(percentage).div(100).div(10**STABLE_DECIMALS);

                if (totalTokenExpansion > 0) {
                    uint256 expansionRate = calculateExpansionRate(previousEpochMainPrice);
                    totalTokenExpansion = totalTokenExpansion.mul(expansionRate).div(10000);
                    if (totalTokenExpansion > 0) {
                        IMainTokenV2(mainToken).mint(sellingWallet, totalTokenExpansion);
                    }
                }

                _sendEtfToBoardroom();
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

    function mintEtf() public {
        uint256 wavaxBalanceOf = IERC20(WAVAX).balanceOf(address(this));
        uint256 mintEtfAmount = calculateEtfToMint(wavaxBalanceOf);
        if (mintEtfAmount > 0) {
            IERC20Upgradeable(WAVAX).safeApprove(etfZap, 0);
            IERC20Upgradeable(WAVAX).safeApprove(etfZap, wavaxBalanceOf);
            IETFZap(etfZap).joinSingle(WAVAX, wavaxBalanceOf, intermediariesZap, mintEtfAmount);
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

            newTotalSupply = IMainTokenV2(mainToken).rebase(epoch, supplyDelta, negative);
            require(newTotalSupply <= MAX_SUPPLY, "newTotalSupply <= MAX_SUPPLY");
            previousEpoch = epoch;
            epochRebases.push(epoch);
            _syncPrice();
            _updatePrice();
        }

        emit LogRebase(epoch, supplyDelta, targetRate, _oldPrice, newTotalSupply, oldTotalSupply, block.timestamp);
    }

    function setExpansionTiersTwaps(uint8 _index, uint256 _value) external onlyOperator returns (bool) {
        uint256 expansionTiersTwapsLength = expansionTiersTwaps.length;
        require(_index < expansionTiersTwapsLength, "Index has to be lower than count of tiers");
        if (_index > 0) {
            require(_value > expansionTiersTwaps[_index - 1], "expansionTiersTwaps[i] has to be lower than expansionTiersTwaps[i + 1]");
        }
        if (_index < expansionTiersTwapsLength - 1) {
            require(_value < expansionTiersTwaps[_index + 1], "expansionTiersTwaps[i] has to be lower than expansionTiersTwaps[i + 1]");
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

    function setDevFundPercent(uint256 _value) external onlyOperator {
        require(_value <= 1000, 'Treasury: Max percent is 10%');
        emit SetDevFundPercent(devFundPercent, _value);
        devFundPercent = _value;
    }

    function setMainTokenPriceRebase(uint256 _value) external onlyOperator {
        uint256 maxMainTokenPriceRebase = 8*10**(STABLE_DECIMALS - 1); // 0.8 STABLE
        uint256 minMainTokenPriceRebase = 6*10**(STABLE_DECIMALS - 1); // 0.6 STABLE
        require(_value <= maxMainTokenPriceRebase && _value >= minMainTokenPriceRebase, 'Treasury: value out of range (0.6 - 0.8)');
        emit SetMainTokenPriceRebase(mainTokenPriceRebase, _value);
        mainTokenPriceRebase = _value;
    }

    function setConsecutiveEpochToRebase(uint256 _value) external onlyOperator {
        require(_value <= 15 && _value >= 10, 'Treasury: value out of range (10 - 15)');
        emit SetConsecutiveEpochToRebase(consecutiveEpochToRebase, _value);
        consecutiveEpochToRebase = _value;
    }

    function setSellingWallet(address _sellingWallet) external onlyOperator {
        require(_sellingWallet != address(0), "_sellingWallet address cannot be 0 address");
		emit SetSellingWallet(sellingWallet, _sellingWallet);
        sellingWallet = _sellingWallet;
    }

    function setPolWallet(address _polWallet) external onlyOperator {
        require(_polWallet != address(0), "_polWallet address cannot be 0 address");
		emit SetPolWallet(polWallet, _polWallet);
        polWallet = _polWallet;
    }

    function setDevFund(address _devFund) external onlyOperator {
        require(_devFund != address(0), "_devFund address cannot be 0 address");
		emit SetDevFund(devFund, _devFund);
        devFund = _devFund;
    }

    function setDaoFund(address _daoFund) external onlyOperator {
        require(_daoFund != address(0), "_daoFund address cannot be 0 address");
		emit SetDaoFund(daoFund, _daoFund);
        daoFund = _daoFund;
    }

    function getEpochRebases() external view returns (uint256[] memory) {
		return epochRebases;
	}

    function enableEmergencyWithdrawTax() external onlyOperator {
        enabledEmergencyWithdrawTax = true;
		emit EnableEmergencyWithdrawTax();
    }

    function disableEmergencyWithdrawTax() external onlyOperator {
        enabledEmergencyWithdrawTax = false;
		emit DisableEmergencyWithdrawTax();
    }

    function setIntermediariesZap(address[] memory _intermediariesZap) external onlyOperator {
        require(_intermediariesZap.length == etfToken.getCurrentTokens().length, "_intermediariesZap is invalid");
        intermediariesZap = _intermediariesZap;
    }

    function setEtfZap(address _etfZap) external onlyOperator {
        require(_etfZap != address(0), "_etfZap address cannot be 0 address");
		emit SetEtfZap(etfZap, _etfZap);
        etfZap = _etfZap;
    }

    function setMaxEtfAllocate(uint256 _maxEtfAllocate) external onlyOperator {
		emit SetMaxEtfAllocate(maxEtfAllocate, _maxEtfAllocate);
        maxEtfAllocate = _maxEtfAllocate;
    }

    function setMinEtfAllocate(uint256 _minEtfAllocate) external onlyOperator {
		emit SetMinEtfAllocate(minEtfAllocate, _minEtfAllocate);
        minEtfAllocate = _minEtfAllocate;
    }

    function adminWithdraw(address _tokenAddress, uint256 _amount) external onlyOperator {
        uint256 tokenBalance = IERC20(_tokenAddress).balanceOf(address(this));
        if (tokenBalance >= _amount) {
            IERC20Upgradeable(_tokenAddress).safeTransfer(polWallet, _amount);
        } else {
            IERC20Upgradeable(_tokenAddress).safeTransfer(polWallet, tokenBalance);
        }

        emit AdminWithdraw(_tokenAddress, _amount);
    }

    function isDevWallet(address _user) external view returns (bool) {
        return _user == devFund; 
    }

    function isDaoWallet(address _user) external view returns (bool) {
        return _user == daoFund; 
    }
}