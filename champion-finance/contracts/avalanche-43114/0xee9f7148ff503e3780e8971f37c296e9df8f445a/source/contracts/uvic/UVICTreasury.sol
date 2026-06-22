// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../lib/Babylonian.sol";
import "../owner/Operator.sol";
import "../utils/ContractGuard.sol";
import "../interfaces/IBasisAsset.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/IBoardroomV2.sol";
import "../interfaces/IMainTokenV2.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract UVICTreasury is ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address[] public boardroomInfos;
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
    uint256 public mainTokenPriceRebase;
    uint256 public consecutiveEpochHasPriceBelowOne;
    uint256 public consecutiveEpochToRebase = 15;

    uint256[] public epochRebases;

    /*===== Rebase ====*/
    uint256 private constant DECIMALS = 18;
    uint256 private constant STABLE_DECIMALS = 6;
    uint256 private constant ONE = uint256(10**DECIMALS);
    // Due to the expression in computeSupplyDelta(), MAX_RATE * MAX_SUPPLY must fit into an int256.
    // Both are 18 decimals fixed point numbers.
    uint256 private constant MAX_RATE = 10**STABLE_DECIMALS * 10**DECIMALS;
    // MAX_SUPPLY = MAX_INT256 / MAX_RATE
    uint256 private constant MAX_SUPPLY = uint256(type(int256).max) / MAX_RATE;
    
    bool public rebaseStarted;
    bool public enabledRebase = true;

    uint256 private constant midpointRounding = 10**(DECIMALS - 5);

    uint256 public previousEpochMainPrice;
    /*===== End Rebase ====*/
        
    uint256 public daoFundSharedPercent = 10; // 10%
    uint256 public polFundSharedPercent = 15; // 15%

    bool public enabledBelowPriceRebase = true;
    bool public enabledConsecutiveEpochRebase = true;
    bool public enabledNextEpochBelowOneRebase = true;
        
    /* =================== Events =================== */

    event Initialized(address indexed executor, uint256 at);
    event TreasuryFunded(uint256 timestamp, uint256 seigniorage);
    event BoardroomFunded(uint256 timestamp, address boardroom, uint256 seigniorage);
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
    event AddBoardroom(address indexed account, address newBoardroom);
    event SetBoardroomAllocPoint(uint256 _pid, uint256 oldValue, uint256 newValue);
    event SetDaoFundSharedPercent(uint256 oldValue, uint256 newValue);
    event SetPolFundSharedPercent(uint256 oldValue, uint256 newValue);
    event SetMainTokenPriceRebase(uint256 oldValue, uint256 newValue);
    event SetConsecutiveEpochToRebase(uint256 oldValue, uint256 newValue);
    event EnableBelowPriceRebase();
    event DisableBelowPriceRebase();
    event EnableConsecutiveEpochRebase();
    event DisableConsecutiveEpochRebase();
    event EnableNextEpochBelowOneRebase();
    event DisableNextEpochBelowOneRebase();

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
        uint256 length = boardroomInfos.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(Operator(boardroomInfos[pid]).operator() == address(this), "Treasury: need more permission");
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

        mainTokenPriceOne = 10**STABLE_DECIMALS; // This is to allow a PEG of 1 MainToken per USDC.e
        mainTokenPriceRebase = 6*10**(STABLE_DECIMALS - 1); // 0.6 USDC.e

        IMainTokenV2(mainToken).grantRebaseExclusion(address(this));
        initialized = true;
        operator = msg.sender;

        emit Initialized(msg.sender, block.number);
    }

    function setOperator(address _operator) external onlyOperator {
        operator = _operator;
        emit SetOperator(msg.sender, _operator);
    }

    function checkBoardroomDuplicate(address _boardroom) internal view {
        uint256 length = boardroomInfos.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(boardroomInfos[pid] != _boardroom, "Treasury: existing boardroom?");
        }
    }

    function addBoardroom(address _boardroom) external onlyOperator {
        checkBoardroomDuplicate(_boardroom);
        boardroomInfos.push(_boardroom);
        IMainTokenV2(mainToken).grantRebaseExclusion(_boardroom);
        emit AddBoardroom(msg.sender, _boardroom);
    }

    function grantRebaseExclusion(address who) external onlyOperator {
        IMainTokenV2(mainToken).grantRebaseExclusion(who);
    }

    function revokeRebaseExclusion(address who) external onlyOperator {
        IMainTokenV2(mainToken).revokeRebaseExclusion(who);
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
        address boardroomAddress = boardroomInfos[_pid];
        uint256 tokenPrice = getTwapPrice();
        uint256 estimatedReward = IBoardroomV2(boardroomAddress).calculateEstimateReward(tokenPrice);

        uint256 _daoFundSharedAmount = estimatedReward.mul(daoFundSharedPercent).div(100);
        uint256 _polFundSharedAmount = estimatedReward.mul(polFundSharedPercent).div(100);

        estimatedReward = estimatedReward.sub(_daoFundSharedAmount).sub(_polFundSharedAmount);
        return estimatedReward;
    }

    function _expansionBoardroom(uint256 _tokenPrice) internal {
        IMainTokenV2 mainTokenErc20 = IMainTokenV2(mainToken);
        address daoFund = mainTokenErc20.getDaoFund();
        address polWallet = mainTokenErc20.getPolWallet();

        uint256 daoFundReward = 0;
        uint256 polReward = 0;

        uint256 length = boardroomInfos.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            address boardroomAddress = boardroomInfos[pid];
            IBoardroomV2 boardroom = IBoardroomV2(boardroomAddress);
            uint256 boardroomReward = boardroom.calculateReward(_tokenPrice);
            uint256 boardRoomAmount = boardroom.totalSupply();
            boardroom.countEpoch(_tokenPrice);
            if (boardroomReward > 0) {
                if (boardRoomAmount > 0) {            
                    uint256 _daoFundReward = boardroomReward.mul(daoFundSharedPercent).div(100);
                    uint256 _polReward = boardroomReward.mul(polFundSharedPercent).div(100);
                    uint256 _boardroomReward = boardroomReward.sub(_daoFundReward).sub(_polReward);

                    daoFundReward = daoFundReward.add(_daoFundReward);
                    polReward = polReward.add(_polReward);

                    mainTokenErc20.mint(address(this), _boardroomReward);
                    IERC20(mainToken).safeApprove(boardroomAddress, 0);
                    IERC20(mainToken).safeApprove(boardroomAddress, _boardroomReward);
                    boardroom.allocateSeigniorage(_boardroomReward);
                } else {
                    daoFundReward = daoFundReward.add(boardroomReward);
                }

                emit BoardroomFunded(block.timestamp, boardroomAddress, boardroomReward);
            }
        }

        if (daoFundReward > 0) {
            mainTokenErc20.mint(daoFund, daoFundReward);
            emit DaoFundFunded(block.timestamp, daoFundReward);
        }

        if (polReward > 0) {
            mainTokenErc20.mint(polWallet, polReward);
            emit PolFundFunded(block.timestamp, polReward);
        }
    }

    function allocateSeigniorage() external onlyOneBlock checkCondition checkEpoch checkOperator {
        _updatePrice();
        if (epoch > 0) {
            previousEpochMainPrice = getMainTokenPrice();
            _expansionBoardroom(previousEpochMainPrice);

            // Rebase
            if (enabledRebase) {
                if (enabledConsecutiveEpochRebase && previousEpochMainPrice < mainTokenPriceOne) {
                    consecutiveEpochHasPriceBelowOne = consecutiveEpochHasPriceBelowOne.add(1);
                } else {
                    consecutiveEpochHasPriceBelowOne = 0;
                }
                
                if (enabledNextEpochBelowOneRebase && rebaseStarted && previousEpochMainPrice < mainTokenPriceOne) {
                    _rebase(previousEpochMainPrice);
                    consecutiveEpochHasPriceBelowOne = 0;
                } else {
                    rebaseStarted = false;
                    if ((enabledBelowPriceRebase && previousEpochMainPrice <= mainTokenPriceRebase) 
                        || (enabledConsecutiveEpochRebase && consecutiveEpochHasPriceBelowOne >= consecutiveEpochToRebase)
                    ) {
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

            newTotalSupply = IMainTokenV2(mainToken).rebase(epoch, supplyDelta, negative);
            require(newTotalSupply <= MAX_SUPPLY, "newTotalSupply <= MAX_SUPPLY");
            previousEpoch = epoch;
            epochRebases.push(epoch);
            _syncPrice();
            _updatePrice();
        }

        emit LogRebase(epoch, supplyDelta, targetRate, _oldPrice, newTotalSupply, oldTotalSupply, block.timestamp);
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
        uint256 length = boardroomInfos.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            IBoardroomV2(boardroomInfos[pid]).setWithdrawLockupEpoch(_value);
        }
    }

    function setRewardLockupEpoch(uint256 _value) external onlyOperator {
        uint256 length = boardroomInfos.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            IBoardroomV2(boardroomInfos[pid]).setRewardLockupEpoch(_value);
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
        uint256 maxMainTokenPriceRebase = 8*10**(STABLE_DECIMALS - 1); // 0.8 USDC.e
        uint256 minMainTokenPriceRebase = 6*10**(STABLE_DECIMALS - 1); // 0.6 USDC.e
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

    function getStableDecimals() external pure returns (uint256)
	{
		return STABLE_DECIMALS;
	}

    function enableBelowPriceRebase() external onlyOperator {
        enabledBelowPriceRebase = true;
		emit EnableBelowPriceRebase();
    }
    
    function disableBelowPriceRebase() external onlyOperator {
        enabledBelowPriceRebase = false;
		emit DisableBelowPriceRebase();
    }

    function enableConsecutiveEpochRebase() external onlyOperator {
        enabledConsecutiveEpochRebase = true;
		emit EnableConsecutiveEpochRebase();
    }

    function disableConsecutiveEpochRebase() external onlyOperator {
        enabledConsecutiveEpochRebase = false;
		emit DisableConsecutiveEpochRebase();
    }

    function enableNextEpochBelowOneRebase() external onlyOperator {
        enabledNextEpochBelowOneRebase = true;
		emit EnableNextEpochBelowOneRebase();
    }

    function disableNextEpochBelowOneRebase() external onlyOperator {
        enabledNextEpochBelowOneRebase = false;
		emit DisableNextEpochBelowOneRebase();
    }
}