// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./interface/AARKVault/IMasterRouter.sol";
import "./interface/AARKVault/ILPManager.sol";
import "./interface/AARKVault/ITierStorage.sol";
import "./interface/IAARKLeverageVault.sol";
import "./interface/IWater.sol";
import "./interface/IMasterChef.sol";
import "./interface/Oracle/IAggregatorV3Interface.sol";

contract AARKLeverageVault is IAARKLeverageVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
    
    using Math for uint256;    
    using Math for uint128;    

    StrategyAddresses public strategyAddresses;
    FeeConfiguration public feeConfiguration;

    mapping (address => bool) public enableAsset;
    mapping (address => UserInfo[]) public userInfo;
    mapping (address => bool) public isUser;
    mapping (address => address) public chainlinkOracle;
    mapping (address => mapping(uint256 => UserAssetAndVault)) public userAssetAndVault;

    mapping (address => bool) public burner;
    mapping (address => bool) public allowedSenders;
    mapping (address => address) public assetToWaterVault;

    address private arbitrumSequencer;

    uint128 public defaulLiquiditySize;
    uint128 private constant DENOMINATOR = 1_000;
    uint128 private constant DECIMAL = 1e18;
    uint128 public MAX_BPS;
    uint128 public MAX_LEVERAGE;
    uint128 public MIN_LEVERAGE;
    uint128 public MCPID;
    uint128 private constant GRACE_PERIOD_TIME = 3600; // 1 hour
    uint128 public DTVLimit;
    uint256 public DTVSlippage;
    uint256 public timeAdjustment;

    address[] public allUsers;
    address public keeper;

    uint256[50] private __gaps;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    modifier zeroAddress(address addr) {
        require(addr != address(0), "Zero address");
        _;
    }

    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "Vodka: positionID !valid");
        _;
    }

    modifier onlyBurner() {
        require(burner[msg.sender], "!allowed");
        _;
    }

    modifier onlyKeeper() {
        require(msg.sender == keeper, "!allowed");
        _;
    }

    function initialize() external initializer {
        MAX_BPS = 100_000;
        MAX_LEVERAGE = 10_000;
        MIN_LEVERAGE = 2_000;
        defaulLiquiditySize = 1_000e6;
        __Ownable_init(msg.sender);
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AARKPOD", "AARKPOD");
    }

    function setArbitrumSequencer(address _arbitrumSequencer) external onlyOwner {
        arbitrumSequencer = _arbitrumSequencer;
        emit ArbitrumSequencerSet(_arbitrumSequencer);
    }

    function setChainlinkOracleForAsset(address _token, address _oracle) external onlyOwner {
        require(_token != address(0), "Zero address");
        chainlinkOracle[_token] = _oracle;
        emit ChainlinkOracleSet(_token, _oracle);
    }

    function setStrategyAddresses(address _vault, address _masterRouter, address _lpManager, address _tierStorage) external onlyOwner {
        strategyAddresses.Vault = _vault;
        strategyAddresses.MasterRouter = _masterRouter;
        strategyAddresses.LPManager = _lpManager;
        strategyAddresses.TierStorage = _tierStorage;
        emit SetStrategyAddress(_vault, _masterRouter, _lpManager, _tierStorage);
    }

    function setPoolEnabled(address _asset, address _waterVault, bool _enabled) external onlyOwner {
        require(_asset != address(0), "Zero address");
        require(_waterVault != address(0), "Zero address");
        require(_waterVault.code.length > 0, "Water vault must be a contract address");

        enableAsset[_asset] = _enabled;
        assetToWaterVault[_asset] = _waterVault;
        emit EnabledAsset(_asset, _waterVault, _enabled);
    }

    function setProtocolFees(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _waterFeeReceiver,
        uint256 _liquidatorsRewardPercentage,
        uint256 _fixedFeeSplit,
        uint128 _mFeePercent,
        address _mFeeReceiver
    ) external onlyOwner zeroAddress(_feeReceiver) zeroAddress(_waterFeeReceiver) {
        require(_withdrawalFee <= MAX_BPS && _fixedFeeSplit < 100, "Invalid fees");
        require(_mFeePercent <= 10000, "Invalid mFeePercent");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.waterFeeReceiver = _waterFeeReceiver;
        feeConfiguration.liquidatorsRewardPercentage = _liquidatorsRewardPercentage;
        feeConfiguration.fixedFeeSplit = _fixedFeeSplit;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;
        feeConfiguration.mFeePercent = _mFeePercent;
        
        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _waterFeeReceiver,
            _liquidatorsRewardPercentage,
            _fixedFeeSplit
        );
    }

    function setMC(address _MasterChef, uint128 _MCPID) external onlyOwner zeroAddress(_MasterChef) {
        strategyAddresses.MasterChef = _MasterChef;
        MCPID = _MCPID;
        emit UpdateMCAndPID(_MasterChef, _MCPID);
    }

    function setAllowed(address _sender, bool _allowed) external onlyOwner {
        allowedSenders[_sender] = _allowed;
        emit AllowedSender(_sender, _allowed);
    }

    function setDTVLimit(uint128 _DTVLimit, uint256 _DTVSlippage) external {
        require(_DTVSlippage <= 1000, "Slippage < 1000");
        DTVLimit = _DTVLimit;
        DTVSlippage = _DTVSlippage;
        emit DTVLimitSet(_DTVLimit, _DTVSlippage);
    }
    
    function setBurnerAndKeeper(address _burner, bool _allowed, address _keeper) external onlyOwner {
        burner[_burner] = _allowed;
        keeper = _keeper;
        emit SetBurnerAndKeeper(_burner, _allowed, _keeper);
    }

    function getLatestData(address _token) public view returns (uint256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int256 sqAnswer,
            uint256 sqStartedAt,
            /*uint256 updatedAt*/,
            /*uint80 answeredInRound*/
        ) = IAggregatorV3Interface(arbitrumSequencer).latestRoundData();

        // Answer == 0: Sequencer is up
        // Answer == 1: Sequencer is down
        bool isSequencerUp = sqAnswer == 0;

        // Make sure the grace period has passed after the
        // sequencer is back up.
        uint256 timeSinceUp = block.timestamp - sqStartedAt;
        require(timeSinceUp > GRACE_PERIOD_TIME, "Grace period not over");

        require(isSequencerUp, "Sequencer is down");

        (, /* uint80 roundID */ int answer /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/, , , ) 
            = IAggregatorV3Interface(
                chainlinkOracle[_token]
            ).latestRoundData(); //in 1e8        

        return uint256(answer);
    }

    function getUpdatedDebt(
        uint256 _positionID,
        address _user
    ) public view returns (uint256 currentDTV, uint256 currentPosition, uint256 currentDebt) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0);

        uint256 previousValueInAsset;
        // Get the current position and previous value in USDT using the `getCurrentPosition` function
        (currentPosition, previousValueInAsset) = getCurrentPosition(_positionID, _user);
        uint256 leverage = _userInfo.leverageAmount;

        // Calculate the current DTV by dividing the amount owed to water by the current position
        currentDTV = leverage.mulDiv(DECIMAL, currentPosition);
        // Return the current DTV, current position, and amount owed to water
        return (currentDTV, currentPosition, leverage);
    }

    function getCurrentPosition(
        uint256 _positionID,
        address _user
    ) public view returns (uint256 currentPosition, uint256 previousValueInAsset) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        // UserAssetAndVault memory _userAssetAndVault = userAssetAndVault[msg.sender][_positionID];
        return (
            _convertAARKToAsset(_userInfo.position,  getLpPosistionPrice()), 
            _convertAARKToAsset(_userInfo.position,  _userInfo.price)
        );
    }

    function getLpPosistionPrice() public view returns (uint256) {
        return ILPManager(strategyAddresses.LPManager).getLpPositionPrice();
    }

    function getAllUsers() external view returns (address[] memory) {
        return allUsers;
    }

    function getTotalOpenPosition(address _user) external view returns (uint256) {
        return userInfo[_user].length;
    }

    // @note not been used at the moment
    function getVaultPosition() external view returns (uint256, ILPManager.Account memory) { // ILPManager.Account memory
        return (
            ILPManager(strategyAddresses.LPManager).positions(address(this)).qty,
            ILPManager(strategyAddresses.LPManager).getAccount(address(this))
        );
    }

    // @note not been used at the moment
    function getEntryPrice() external view returns (uint256) {
        return ILPManager(strategyAddresses.LPManager).entryPrices(address(this));
    }

    // @note not been used at the moment
    function getAArkTierCOnfig() external view returns (uint32 _feeDiscountRate, uint32 _maxLeverage) {
        return ITierStorage(strategyAddresses.TierStorage).getTierConfigs(address(this), ITierStorage.UserType.LP);
    }

    function openLiquidityPosition(uint128 _amount, uint128 _leverage, address _asset) external nonReentrant whenNotPaused {
        require(_leverage >= MIN_LEVERAGE && _leverage <= MAX_LEVERAGE, "AARKVault: !leverage");
        require(_amount > 0, "AARKVault: amount must be greater than zero");
        address water = assetToWaterVault[_asset];

        require(enableAsset[_asset], "AARKVault: Pool is not enabled");
        require(water != address(0), "AARKVault: Water vault not set for asset");

        ERC20BurnableUpgradeable(_asset).transferFrom(msg.sender, address(this), _amount);

        // get leverage amount
        uint256 _leveragedAmount = _amount.mulDiv(_leverage, DENOMINATOR) - _amount;
        bool status = IWater(water).lend(_leveragedAmount, address(this));
        require(status, "Water: Lend failed");
        
        uint128 sumAmount = _amount + uint128(_leveragedAmount);

        ERC20BurnableUpgradeable(_asset).approve(strategyAddresses.Vault, sumAmount);

        IMasterRouter(strategyAddresses.MasterRouter)
            .addCollateral(address(this), _asset, sumAmount, true);

        uint256 positionBefore = ILPManager(strategyAddresses.LPManager).positions(address(this)).qty;
        // order for lp
        // orderLP() takes amount in decimals of 10 so there need to be some conversion for other assets
        IMasterRouter(strategyAddresses.MasterRouter).orderLp(_toAndFromLpConversion(_asset, sumAmount, true), true); 

        uint256 positionAfter = ILPManager(strategyAddresses.LPManager).positions(address(this)).qty;
        uint256 _lpAmount = positionAfter - positionBefore;
        
        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            price: getLpPosistionPrice(),
            deposit: _amount,
            leverage: _leverage,
            position: _lpAmount,
            closedPositionValue: 0,
            closePNL: 0,
            liquidated: false,
            leverageAmount: uint128(_leveragedAmount),
            positionId: uint128(userInfo[msg.sender].length),
            liquidator: address(0),
            closed: false
        });

        userAssetAndVault[msg.sender][userInfo[msg.sender].length] = UserAssetAndVault({
            asset: _asset,
            waterVault: water
        });

        //frontend helper to fetch all users and then their userInfo
        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);
        
        _mint(msg.sender, _lpAmount);
        emit OpenPosition(msg.sender, _amount, block.timestamp, _leverage, _userInfo.positionId);
    }

    function closeLiquidityPosition(uint256 _userPositionId) external nonReentrant whenNotPaused InvalidID(_userPositionId, msg.sender) {
        UserInfo storage _userInfo = userInfo[msg.sender][_userPositionId];
        require(!_userInfo.closed, "AARKVault: position is already closed");
        require(!_userInfo.liquidated, "AARKVault: position is already liquidated");
        require(_userInfo.user == msg.sender, "AARKVault: position is not owned by user");
        uint256 userPOS = _userInfo.position;
        require(userPOS > 0, "AARKVault: position is 0");
        UserAssetAndVault memory _userAssetAndVault = userAssetAndVault[msg.sender][_userPositionId];

        // check for liquidation
        CloseData memory closeData;
        (closeData.currentDTV, , ) = getUpdatedDebt(_userPositionId, _userInfo.user);

        if (closeData.currentDTV >= (DTVSlippage * DTVLimit) / 1000) {
            revert("liquidation");
        }

        _handlePODToken(_userInfo.user, userPOS);

        
        closeData.totalPositionValue = _getLpAndRemoveCollateral(userPOS, _userAssetAndVault.asset);

        closeData.totalPosition = _userInfo.position;

        if (closeData.totalPositionValue > closeData.totalPosition) {
            closeData.profits = closeData.totalPositionValue - closeData.totalPosition;
        }

        uint256 waterRepayment;
        if (closeData.totalPositionValue < _userInfo.leverageAmount) {
            _userInfo.liquidator = msg.sender;
            _userInfo.liquidated = true;
            waterRepayment = closeData.totalPositionValue;
        } else {
            if (closeData.profits > 0) {
                (closeData.waterProfits, closeData.mFee, closeData.userShares) = _getProfitSplit(closeData.profits, _userInfo.leverage);
            }
            
            waterRepayment = _userInfo.leverageAmount; // return water debt
            closeData.toLeverageUser = (closeData.totalPositionValue - waterRepayment) - closeData.waterProfits - closeData.mFee;
        }

        ERC20BurnableUpgradeable(_userAssetAndVault.asset).approve(_userAssetAndVault.waterVault, waterRepayment);
        bool success = IWater(_userAssetAndVault.waterVault).repayDebt(uint256(_userInfo.leverageAmount), waterRepayment);
        require(success, "Water: Repay debt failed");
        _userInfo.position = 0;
        _userInfo.leverageAmount = 0;
        _userInfo.closed = true;

        if (_userInfo.liquidated) {
            return;
        }

        if (closeData.waterProfits > 0) {
            ERC20BurnableUpgradeable(_userAssetAndVault.asset).transfer(feeConfiguration.waterFeeReceiver, closeData.waterProfits);
        }

        if (closeData.mFee > 0) {
                ERC20BurnableUpgradeable(_userAssetAndVault.asset).transfer(feeConfiguration.mFeeReceiver, closeData.mFee);
        }

        // take protocol fee
        uint256 amountAfterFee;
        if (feeConfiguration.withdrawalFee > 0) {
            uint256 fee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            ERC20BurnableUpgradeable(_userAssetAndVault.asset).transfer(feeConfiguration.feeReceiver, fee);
            amountAfterFee = closeData.toLeverageUser - fee;
        } else {
            amountAfterFee = closeData.toLeverageUser;
        }

        ERC20BurnableUpgradeable(_userAssetAndVault.asset).transfer(_userInfo.user, amountAfterFee);
        
        _userInfo.closedPositionValue = uint128(closeData.totalPositionValue);
        _userInfo.closePNL += uint128(closeData.profits);
        emit ClosePosition(msg.sender, userPOS, block.timestamp, closeData.totalPositionValue, closeData.waterProfits, closeData.userShares, getLpPosistionPrice(), _userInfo.positionId);
    }

    function liquidatePosition(uint256 _userPositionId, address _user) external nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_userPositionId];
        require(!_userInfo.liquidated, "Sake: Already liquidated");
        require(_userInfo.user != address(0), "Sake: liquidation request does not exist");
        (uint256 currentDTV, , ) = getUpdatedDebt(_userPositionId, _user);
        require(currentDTV >= (95 * 1e17) / 10, "Liquidation Threshold Has Not Reached");
        UserAssetAndVault memory _userAssetAndVault = userAssetAndVault[msg.sender][_userPositionId];

        uint256 userPOS = _userInfo.position;

        _handlePODToken(_user, userPOS);
        CloseData memory closeData;

        IMasterRouter(strategyAddresses.MasterRouter).orderLp(userPOS, false); 

        closeData.totalPositionValue =_getLpAndRemoveCollateral(userPOS, _userAssetAndVault.asset);

        _userInfo.liquidator = msg.sender;
        _userInfo.liquidated = true;

        if (closeData.totalPositionValue > _userInfo.leverageAmount) {

        }

        uint256 liquidatorReward = closeData.totalPositionValue.mulDiv(feeConfiguration.liquidatorsRewardPercentage, MAX_BPS);
        uint256 amountAfterLiquidatorReward = closeData.totalPositionValue - liquidatorReward;

        ERC20BurnableUpgradeable(_userAssetAndVault.asset).approve(_userAssetAndVault.waterVault, amountAfterLiquidatorReward);

        bool success = IWater(_userAssetAndVault.waterVault).repayDebt(_userInfo.leverageAmount, amountAfterLiquidatorReward);
        require(success, "Water: Repay failed");
        ERC20BurnableUpgradeable(_userAssetAndVault.asset).transfer(msg.sender, liquidatorReward);

        emit Liquidated(_user, _userPositionId, msg.sender, closeData.totalPositionValue, liquidatorReward);
    }

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        require(allowedSenders[from] || allowedSenders[to] || allowedSenders[spender], "ERC20: transfer not allowed");
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address ownerOf = _msgSender();
        require(allowedSenders[ownerOf] || allowedSenders[to], "ERC20: transfer not allowed");
        _transfer(ownerOf, to, amount);
        return true;
    }

    function burn(uint256 amount) public virtual override onlyBurner {
        _burn(_msgSender(), amount);
    }

    function decimals() public pure override returns (uint8) {
        return 10;
    }

    function _getLpAndRemoveCollateral(uint256 _amount, address _asset) internal returns (uint256) {
        IMasterRouter(strategyAddresses.MasterRouter).orderLp(_amount, false); 

        // get USDT balance before execution
        uint256 _getBalanceBefore = ERC20BurnableUpgradeable(_asset).balanceOf(address(this));

        IMasterRouter(strategyAddresses.MasterRouter)
            .removeCollateral(address(this), _asset, _toAndFromLpConversion(_asset, _amount, false), true);

        uint256 _getbalanceAfter = ERC20BurnableUpgradeable(_asset).balanceOf(address(this));
        return (_getbalanceAfter - _getBalanceBefore);
    }

    function _toAndFromLpConversion(address _asset, uint256 _amount, bool _toLp) view internal returns(uint256 outputAmount) {
        if (_amount == 0) return 0;
        // get current price of lp 
        uint256 decimal = ERC20BurnableUpgradeable(_asset).decimals();
        uint256 lpPrice = getLpPosistionPrice(); // 8 decimals
        if (_toLp) {
            /*
                lpPrice is in 8 decimals
                outputAmount is expected to be in 10 decimals
            */
            // outputAmount = _amount.mulDiv(lpPrice * 1e2, 10**decimal);
            outputAmount = (_amount * 1e2).mulDiv(1e10, lpPrice);
        } else {
            uint256 price = getLatestData(_asset); 
            /* 
                @notice: since Non-ETH pairs: 8 decimals
                @notice: since ETH pairs: 18 decimals
                and the plan is to support only Non-ETH pairs, so we can assume that all decimals are 8
                amount is in 10 decimals
                should always return in the decimal of the asset
            */
            if (decimal < 10) {
                outputAmount = (_amount.mulDiv(price, lpPrice)) / (10**(10-decimal));
            } else {
                outputAmount = (_amount.mulDiv(price, lpPrice)) * (10**(decimal-10));
            }
        }
    }

    function _getProfitSplit(uint256 _profit, uint256 _leverage) internal view returns (uint256, uint256, uint256) {
        uint256 split = (feeConfiguration.fixedFeeSplit * _leverage + (feeConfiguration.fixedFeeSplit * 10000)) / 100;
        uint256 toWater = (_profit * split) / 10000;
        uint256 mFee = (_profit * feeConfiguration.mFeePercent) / 10000;
        uint256 toSakeUser = _profit - (toWater + mFee);

        return (toWater, mFee, toSakeUser);
    }

    function _convertAARKToAsset(uint256 _amount, uint256 _price) internal pure returns (uint256) {
        // amount is in 10 decimals
        // price is in 8 decimals
        return _amount.mulDiv(1e6, _price * 1e2);
    }

    function _handlePODToken(address _user, uint256 position) internal {
        if (strategyAddresses.MasterChef != address(0)) {
            uint256 userBalance = balanceOf(_user);
            if (userBalance >= position) {
                _burn(_user, position);
            } else {
                _burn(_user, userBalance);
                uint256 remainingPosition = position - userBalance;
                IMasterChef(strategyAddresses.MasterChef).unstakeAndLiquidate(MCPID, _user, remainingPosition);
            }
        } else {
            _burn(_user, position);
        }
    }

    // should be able to receive ETH
    receive() external payable {}

}
