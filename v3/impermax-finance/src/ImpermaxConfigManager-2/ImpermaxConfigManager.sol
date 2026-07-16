pragma solidity =0.5.16;
pragma experimental ABIEncoderV2;

interface IBorrowable {
	function reserveFactor() external view returns (uint);
	function borrowTracker() external view returns (address);
	function kinkUtilizationRate() external view returns (uint);
	function adjustSpeed() external view returns (uint);

	function RESERVE_FACTOR_MAX() external pure returns (uint);
	function KINK_UR_MIN() external pure returns (uint);
	function KINK_UR_MAX() external pure returns (uint);
	function ADJUST_SPEED_MIN() external pure returns (uint);
	function ADJUST_SPEED_MAX() external pure returns (uint);

	function _setReserveFactor(uint newReserveFactor) external;
	function _setKinkUtilizationRate(uint newKinkUtilizationRate) external;
	function _setAdjustSpeed(uint newAdjustSpeed) external;
	function _setBorrowTracker(address newBorrowTracker) external;
}

interface ICollateral {
	function safetyMarginSqrt() external view returns (uint);
	function liquidationIncentive() external view returns (uint);
	function liquidationFee() external view returns (uint);

	function SAFETY_MARGIN_SQRT_MIN() external pure returns (uint);
	function SAFETY_MARGIN_SQRT_MAX() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MIN() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MAX() external pure returns (uint);
	function LIQUIDATION_FEE_MAX() external pure returns (uint);
	
	function _setSafetyMarginSqrt(uint newSafetyMarginSqrt) external;
	function _setLiquidationIncentive(uint newLiquidationIncentive) external;
	function _setLiquidationFee(uint newLiquidationFee) external;
}

interface IFactory {
	function admin() external view returns (address);
	function pendingAdmin() external view returns (address);
	function reservesAdmin() external view returns (address);
	function reservesPendingAdmin() external view returns (address);
	function reservesManager() external view returns (address);

	function getLendingPool(address uniswapV2Pair) external view returns (
		bool initialized, 
		uint24 lendingPoolId, 
		address collateral, 
		address borrowable0, 
		address borrowable1
	);
	function allLendingPools(uint) external view returns (address uniswapV2Pair);
	function allLendingPoolsLength() external view returns (uint);

	function _setPendingAdmin(address newPendingAdmin) external;
	function _acceptAdmin() external;
	function _setReservesPendingAdmin(address newPendingAdmin) external;
	function _acceptReservesAdmin() external;
	function _setReservesManager(address newReservesManager) external;
}


contract Ownable {
    address public admin;
    address public pendingAdmin;

    event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);
	event NewAdmin(address oldAdmin, address newAdmin);
    
    constructor(address _admin) public {
        admin = _admin;
        emit NewAdmin(address(0), admin);
    }

    function _setPendingAdmin(address newPendingAdmin) external onlyOwner {
		address oldPendingAdmin = pendingAdmin;
		pendingAdmin = newPendingAdmin;
		emit NewPendingAdmin(oldPendingAdmin, newPendingAdmin);
	}

	function _acceptAdmin() external {
		require(msg.sender == pendingAdmin, "ImpermaxOwnable: UNAUTHORIZED");
		address oldAdmin = admin;
		address oldPendingAdmin = pendingAdmin;
		admin = pendingAdmin;
		pendingAdmin = address(0);
		emit NewAdmin(oldAdmin, admin);
		emit NewPendingAdmin(oldPendingAdmin, address(0));
	}

	modifier onlyOwner() {
		require(msg.sender == admin, "ImpermaxOwnable: UNAUTHORIZED");
		_;
	}
}

interface IImpermaxWhitelist {
	enum State {
		Unlisted,
		Listed,
		Deprecated,
		Blacklisted
	}
    function pairsState(address factory, address pair) external view returns(State);
    event ChangedState(address indexed factory, address indexed pair, State state);
    function setPairState(address factory, address pair, State state) external;
}

contract ImpermaxWhitelist is Ownable, IImpermaxWhitelist {
	mapping(address => mapping(address => State)) public pairsState; 

    constructor(address _admin) public Ownable(_admin) {}

    function setPairState(address factory, address pair, State state) onlyOwner external {
        pairsState[factory][pair] = state;
        emit ChangedState(factory, pair, state);
    }
}


interface IImpermaxConfigManager {

    struct CollateralConfig {
        uint safetyMarginSqrt;
        uint liquidationIncentive;
        uint liquidationFee;
    }

    struct BorrowableConfig {
        uint reserveFactor;
        uint kinkUtilizationRate;
        uint adjustSpeed;
        address borrowTracker;
    }

    struct PairConfig {
        address factory;
        address pair;
        CollateralConfig collateralConfig;
        BorrowableConfig borrowable0Config;
        BorrowableConfig borrowable1Config;
        IImpermaxWhitelist.State whitelistState;
    }

    event NewProposal(uint indexed index, PairConfig[] proposal);
    event RejectedProposal(uint indexed index, PairConfig[] proposal);
    event ApprovedProposal(uint indexed index, PairConfig[] proposal);
    event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);
	event NewAdmin(address oldAdmin, address newAdmin);
    event BecomeContractAdmin(address factory);
    event TransferContractOwnership(address factory, address newPendingAdmin);
	
    function admin() external view returns(address);
    function pendingAdmin() external view returns(address);
    function proposals(uint, uint) external view returns(PairConfig memory);
    function proposalsLength() external view returns(uint);
    function getProposal(uint) external view returns (PairConfig[] memory);
    function whitelist() external view returns(address);
	
	function makeProposal(PairConfig[] calldata proposal) external;
    function rejectProposal(uint index) external;
    function approveProposal(uint index) external;

    function _setPendingAdmin(address newPendingAdmin) external;
	function _acceptAdmin() external;
    function _becomeContractAdmin(address ownableContract) external;
    function _setContractAdmin(address ownableContract, address newPendingAdmin) external;
}


contract ImpermaxConfigManager is IImpermaxConfigManager, Ownable {

    mapping(uint => PairConfig[]) public proposals;
    uint public proposalsLength;

    function getProposal(uint index) external view returns (PairConfig[] memory) {
        return proposals[index];
    }

    address public whitelist;
    
    constructor(address _admin, address _whitelist) public Ownable(_admin) {
        whitelist = _whitelist;
    }

	/* Internal */

    function _checkSetting(uint parameter, uint min, uint max) internal pure {
		require(parameter >= min, "ImpermaxConfigManager: INVALID_SETTING");
		require(parameter <= max, "ImpermaxConfigManager: INVALID_SETTING");
	}

    function _checkCSetting(address collateral, CollateralConfig memory config) internal pure {
        _checkSetting(config.safetyMarginSqrt, ICollateral(collateral).SAFETY_MARGIN_SQRT_MIN(), ICollateral(collateral).SAFETY_MARGIN_SQRT_MAX());
        _checkSetting(config.liquidationIncentive, ICollateral(collateral).LIQUIDATION_INCENTIVE_MIN(), ICollateral(collateral).LIQUIDATION_INCENTIVE_MAX());
        _checkSetting(config.liquidationFee, 0, ICollateral(collateral).LIQUIDATION_FEE_MAX());
    }

    function _checkBSetting(address borrowable, BorrowableConfig memory config) internal pure {
        _checkSetting(config.reserveFactor, 0, IBorrowable(borrowable).RESERVE_FACTOR_MAX());
        _checkSetting(config.kinkUtilizationRate, IBorrowable(borrowable).KINK_UR_MIN(), IBorrowable(borrowable).KINK_UR_MAX());
        _checkSetting(config.adjustSpeed, IBorrowable(borrowable).ADJUST_SPEED_MIN(), IBorrowable(borrowable).ADJUST_SPEED_MAX());
    }

    function _removeProposal(uint index) internal {
        delete proposals[index];
    }

    function _checkPending(uint index) internal view {
        require(proposals[index][0].factory != address(0), "ImpermaxConfigManager: NOT_PENDING");
    }

    function _actualCollateralConfig(address collateral) internal view returns (CollateralConfig memory oldConfig) {
        oldConfig.safetyMarginSqrt = ICollateral(collateral).safetyMarginSqrt();
        oldConfig.liquidationIncentive = ICollateral(collateral).liquidationIncentive();
        oldConfig.liquidationFee = ICollateral(collateral).liquidationFee();
    }

    function _actualBorrowableConfig(address borrowable) internal view returns (BorrowableConfig memory oldConfig) {
        oldConfig.reserveFactor = IBorrowable(borrowable).reserveFactor();
        oldConfig.kinkUtilizationRate = IBorrowable(borrowable).kinkUtilizationRate();
        oldConfig.adjustSpeed = IBorrowable(borrowable).adjustSpeed();
        oldConfig.borrowTracker = IBorrowable(borrowable).borrowTracker();
    }

    function _setCollateralConfig(address collateral, CollateralConfig memory newConfig) internal {
		CollateralConfig memory oldConfig = _actualCollateralConfig(collateral);
        if(newConfig.safetyMarginSqrt != oldConfig.safetyMarginSqrt)
            ICollateral(collateral)._setSafetyMarginSqrt(newConfig.safetyMarginSqrt);
        if(newConfig.liquidationIncentive != oldConfig.liquidationIncentive)
            ICollateral(collateral)._setLiquidationIncentive(newConfig.liquidationIncentive);
        if(newConfig.liquidationFee != oldConfig.liquidationFee)
            ICollateral(collateral)._setLiquidationFee(newConfig.liquidationFee);
    }

    function _setBorrowableConfig(address borrowable, BorrowableConfig memory newConfig) internal {
		BorrowableConfig memory oldConfig = _actualBorrowableConfig(borrowable);
        if(newConfig.reserveFactor != oldConfig.reserveFactor)
            IBorrowable(borrowable)._setReserveFactor(newConfig.reserveFactor);
        if(newConfig.kinkUtilizationRate != oldConfig.kinkUtilizationRate)
            IBorrowable(borrowable)._setKinkUtilizationRate(newConfig.kinkUtilizationRate);
        if(newConfig.adjustSpeed != oldConfig.adjustSpeed)
            IBorrowable(borrowable)._setAdjustSpeed(newConfig.adjustSpeed);
        if(newConfig.borrowTracker != oldConfig.borrowTracker)
            IBorrowable(borrowable)._setBorrowTracker(newConfig.borrowTracker);
    }

	/* External */

    function makeProposal(PairConfig[] calldata proposal) external nonReentrant {
        for(uint i = 0; i < proposal.length; i++) {
			PairConfig memory config = proposal[i];
            (,, address collateral, address borrowable0, address borrowable1) = IFactory(config.factory).getLendingPool(config.pair);
            _checkCSetting(collateral, config.collateralConfig);
            _checkBSetting(borrowable0, config.borrowable0Config);
            _checkBSetting(borrowable1, config.borrowable1Config);
			proposals[proposalsLength].push(config);
        }
        emit NewProposal(proposalsLength, proposal);
        proposalsLength++;
    }

    function rejectProposal(uint index) external onlyOwner nonReentrant {
        _checkPending(index);
        emit RejectedProposal(index, proposals[index]);
        _removeProposal(index);
    }

    function approveProposal(uint index) external onlyOwner nonReentrant {
        _checkPending(index);
		PairConfig[] memory proposal = proposals[index];
        uint length = proposal.length;
        for(uint i = 0; i < length; i++) {
			PairConfig memory config = proposal[i];
            (,, address collateral, address borrowable0, address borrowable1) = IFactory(config.factory).getLendingPool(config.pair);
            _setCollateralConfig(collateral, config.collateralConfig);
            _setBorrowableConfig(borrowable0, config.borrowable0Config);
            _setBorrowableConfig(borrowable1, config.borrowable1Config);
            IImpermaxWhitelist(whitelist).setPairState(config.factory, config.pair, config.whitelistState);
        }
        emit ApprovedProposal(index, proposal);
        _removeProposal(index);
    }

	/* Ownership management */

    function _becomeContractAdmin(address ownableContract) external onlyOwner nonReentrant {
        Ownable(ownableContract)._acceptAdmin();
		emit BecomeContractAdmin(ownableContract);
    }

    function _setContractAdmin(address ownableContract, address newPendingAdmin) external onlyOwner nonReentrant {
        Ownable(ownableContract)._setPendingAdmin(newPendingAdmin);
		emit TransferContractOwnership(ownableContract, newPendingAdmin);
    }

	/* Utils */

	// prevents a contract from calling itself, directly or indirectly.
	bool internal _notEntered = true;
	modifier nonReentrant() {
		require(_notEntered, "ImpermaxConfigManager: REENTERED");
		_notEntered = false;
		_;
		_notEntered = true;
	}
}