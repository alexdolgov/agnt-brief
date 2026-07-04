// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import { UUPSUpgradeable } from
    "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { OwnableUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import { ConfigurableAddresses } from "../dependencies/ConfigurableAddresses.sol";
import { DECIMAL_PRECISION as _DECIMAL_PRECISION, TrenMath } from "../dependencies/TrenMath.sol";

import { IFeeCollector } from "../interfaces/IFeeCollector.sol";
import { IAdminContract } from "../interfaces/IAdminContract.sol";
import { IStabilityPool } from "../interfaces/IStabilityPool.sol";
import { ITrenBoxStorage } from "../interfaces/ITrenBoxStorage.sol";

/**
 * @title AdminContract
 * @notice Contains all the functions to create a new collateral or modify its parameters.
 * It is called by other contracts to check if a collateral is valid and what are their parameters.
 */
contract AdminContract is
    IAdminContract,
    UUPSUpgradeable,
    OwnableUpgradeable,
    ConfigurableAddresses
{
    // Constants
    // --------------------------------------------------------------------------------------------------------

    /// @notice The contract name.
    string public constant NAME = "AdminContract";

    /// @notice The scaled number which means 100 percent, 1e18 == 100%.
    uint256 public constant _100pct = 1e18;

    /// @notice The one week in seconds.
    uint256 public constant ONE_WEEK = 1 weeks;

    /// @notice The default borrowing fee, 0.5%.
    uint256 public constant BORROWING_FEE_DEFAULT = 5e15;

    /// @notice The default critical collateral ratio, 150%.
    uint256 public constant CCR_DEFAULT = 1.5e18;

    /// @notice The default minimum collateral ratio, 110%.
    uint256 public constant MCR_DEFAULT = 1.1e18;

    /// @notice The default minimum amount of debt token to mint.
    uint256 public constant MIN_NET_DEBT_DEFAULT = 2000e18;

    /// @notice The default mint cap, 1 million trenUSD.
    uint256 public constant MINT_CAP_DEFAULT = 1_000_000e18;

    /// @notice The default liquidation fee, dividing by 200 yields 0.5%.
    uint256 public constant PERCENT_DIVISOR_DEFAULT = 200;

    // State
    // ------------------------------------------------------------------------------------------------------------

    /**
     * @dev The mapping from collateral asset to its parameters.
     * Cannot be public as struct has too many variables for the stack.
     * Create special view structs/getters instead.
     */
    mapping(address collateral => CollateralParams params) internal collateralParams;

    /**
     * @dev The mapping from collateral asset to which are initial setup.
     */
    mapping(address collateral => bool initialSetup) internal initialSetups;

    /// @notice The storage struct variable to store flash loan parameters.
    FlashLoanParams public flashLoanParams;

    /// @notice The compound fee amount.
    uint256 public compoundFee;

    /// @notice list of all collateral types in collateralParams (active and deprecated).
    address[] public validCollateral;

    /// @notice Checks if all initial collaterals have been configured or not.
    bool public isSetupInitialized;

    /// @notice If true, collected fees go to stakers; if false, to the treasury.
    bool public routeToTRENStaking;

    /**
     * @dev The mapping from collateral asset to which are compounded.
     */
    mapping(address collateral => bool compounded) public compoundedCollaterals;

    // Modifiers
    // --------------------------------------------------------------------------------------------------------

    /**
     * @dev Require that the collateral exists in the controller. If it is not the 0th index, and
     * the index is still 0 then it does not exist in the mapping.
     * no require here for valid collateral 0 index because that means it exists.
     */
    modifier exists(address _collateral) {
        _exists(_collateral);
        _;
    }

    /// @dev Modifier to check that the caller is timelock contract.
    modifier onlyTimelock() {
        if (isSetupInitialized) {
            if (msg.sender != timelockAddress) {
                revert AdminContract__OnlyTimelock();
            }
        } else {
            if (msg.sender != owner()) {
                revert AdminContract__OnlyOwner();
            }
        }
        _;
    }

    /// @dev Modifier to check that the specific collateral is active and the input value is valid.
    modifier safeCheck(
        string memory parameter,
        address _collateral,
        uint256 enteredValue,
        uint256 min,
        uint256 max
    ) {
        if (!collateralParams[_collateral].active) {
            revert AdminContract__CollateralNotConfigured();
        }

        if (enteredValue < min || enteredValue > max) {
            revert SafeCheckError(parameter, enteredValue, min, max);
        }
        _;
    }

    // Initializers
    // -----------------------------------------------------------------------------------------------------

    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Runs all the setup logic only once.
     * @param initialOwner The address of initial owner.
     */
    function initialize(address initialOwner) external initializer {
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
    }

    /**
     * @dev The deployment script will call this function when all initial collaterals
     * have been configured; after this is set to true,
     * all subsequent config/setters will need to go through the timelocks.
     */
    function setSetupIsInitialized() external onlyTimelock {
        if (isSetupInitialized) {
            revert AdminContract__AlreadyInitialized();
        }

        isSetupInitialized = true;

        emit SetupInitialized();
    }

    // External Functions
    // -----------------------------------------------------------------------------------------------

    /// @inheritdoc IAdminContract
    function addNewCollateral(
        address _collateral,
        uint256 _debtTokenGasCompensation
    )
        external
        override
        onlyTimelock
    {
        _addNewCollateral(_collateral, _debtTokenGasCompensation);
    }

    /// @inheritdoc IAdminContract
    function setCollateralParameters(
        address _collateral,
        uint256 _borrowingFee,
        uint256 _ccr,
        uint256 _mcr,
        uint256 _minNetDebt,
        uint256 _mintCap,
        uint256 _percentDivisor
    )
        external
        override
        onlyTimelock
        exists(_collateral)
    {
        if (initialSetups[_collateral]) {
            revert AdminContract__CollateralHasInitialSetupAlready();
        }
        initialSetups[_collateral] = true;
        _setCollateralParameters(
            _collateral, _borrowingFee, _ccr, _mcr, _minNetDebt, _mintCap, _percentDivisor
        );
    }

    /// @inheritdoc IAdminContract
    function setIsActive(
        address _collateral,
        bool _active
    )
        external
        onlyTimelock
        exists(_collateral)
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        collParams.active = _active;
    }

    function setCompounded(
        address _collateral,
        bool _compounded
    )
        external
        onlyTimelock
        exists(_collateral)
    {
        compoundedCollaterals[_collateral] = _compounded;
    }

    /// @inheritdoc IAdminContract
    function setBorrowingFee(
        address _collateral,
        uint256 _borrowingFee
    )
        public
        override
        onlyTimelock
    {
        _setBorrowingFee(_collateral, _borrowingFee);
    }

    /// @inheritdoc IAdminContract
    function setCCR(address _collateral, uint256 _newCCR) public override onlyTimelock {
        _setCCR(_collateral, _newCCR, false);
    }

    /// @inheritdoc IAdminContract
    function setMCR(address _collateral, uint256 _newMCR) public override onlyTimelock {
        _setMCR(_collateral, _newMCR, false);
    }

    /// @inheritdoc IAdminContract
    function setMinNetDebt(address _collateral, uint256 _minNetDebt) public override onlyTimelock {
        _setMinNetDebt(_collateral, _minNetDebt);
    }

    /// @inheritdoc IAdminContract
    function setMintCap(address _collateral, uint256 _mintCap) public override onlyTimelock {
        _setMintCap(_collateral, _mintCap);
    }

    /// @inheritdoc IAdminContract
    function setPercentDivisor(
        address _collateral,
        uint256 _percentDivisor
    )
        public
        override
        onlyTimelock
    {
        _setPercentDivisor(_collateral, _percentDivisor);
    }

    /// @inheritdoc IAdminContract
    function setFeeForFlashLoan(uint256 _flashLoanFee) external onlyTimelock {
        uint256 oldFlashLoanFee = flashLoanParams.flashLoanFee;
        flashLoanParams.flashLoanFee = _flashLoanFee;

        emit FlashLoanFeeChanged(oldFlashLoanFee, _flashLoanFee);
    }

    /// @inheritdoc IAdminContract
    function setMinDebtForFlashLoan(uint256 _flashLoanMinDebt) external onlyTimelock {
        uint256 oldFlashLoanMinDebt = flashLoanParams.flashLoanMinDebt;
        flashLoanParams.flashLoanMinDebt = _flashLoanMinDebt;

        emit FlashLoanMinDebtChanged(oldFlashLoanMinDebt, _flashLoanMinDebt);
    }

    /// @inheritdoc IAdminContract
    function setMaxDebtForFlashLoan(uint256 _flashLoanMaxDebt) external onlyTimelock {
        uint256 oldFlashLoanMaxDebt = flashLoanParams.flashLoanMaxDebt;
        flashLoanParams.flashLoanMaxDebt = _flashLoanMaxDebt;

        emit FlashLoanMaxDebtChanged(oldFlashLoanMaxDebt, _flashLoanMaxDebt);
    }

    /// @inheritdoc IAdminContract
    function setFeeForCompound(uint256 _compoundFee) external onlyTimelock {
        uint256 oldCompoundFee = compoundFee;
        compoundFee = _compoundFee;

        emit CompoundFeeChanged(oldCompoundFee, _compoundFee);
    }

    /// @inheritdoc IAdminContract
    function switchRouteToTRENStaking() external onlyTimelock {
        if (IFeeCollector(feeCollector).trenStaking() == address(0)) {
            revert AdminContract__TRENStakingAreNotSet();
        }
        routeToTRENStaking = !routeToTRENStaking;
    }

    // View functions
    // ---------------------------------------------------------------------------------------------------

    /// @inheritdoc IAdminContract
    function DECIMAL_PRECISION() external pure returns (uint256) {
        return _DECIMAL_PRECISION;
    }

    /// @inheritdoc IAdminContract
    function getValidCollateral() external view override returns (address[] memory) {
        return validCollateral;
    }

    /// @inheritdoc IAdminContract
    function getIsActive(address _collateral)
        external
        view
        override
        exists(_collateral)
        returns (bool)
    {
        return collateralParams[_collateral].active;
    }

    /// @inheritdoc IAdminContract
    function getIndex(address _collateral)
        external
        view
        override
        exists(_collateral)
        returns (uint256)
    {
        return collateralParams[_collateral].index;
    }

    /// @inheritdoc IAdminContract
    function getIndices(address[] memory _colls) external view returns (uint256[] memory indices) {
        uint256 len = _colls.length;
        indices = new uint256[](len);

        for (uint256 i; i < len;) {
            _exists(_colls[i]);
            indices[i] = collateralParams[_colls[i]].index;
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IAdminContract
    function getMcr(address _collateral) public view override returns (uint256) {
        CollateralParams storage collParams = collateralParams[_collateral];
        if (block.timestamp < collParams.timestampForMCRupdate || collParams.updatedMCR == 0) {
            return collParams.mcr;
        } else {
            return collParams.updatedMCR;
        }
    }

    /// @inheritdoc IAdminContract
    function getCcr(address _collateral) public view override returns (uint256) {
        CollateralParams storage collParams = collateralParams[_collateral];
        if (block.timestamp < collParams.timestampForCCRupdate || collParams.updatedCCR == 0) {
            return collParams.ccr;
        } else {
            return collParams.updatedCCR;
        }
    }

    /// @inheritdoc IAdminContract
    function getDebtTokenGasCompensation(address _collateral)
        external
        view
        override
        returns (uint256)
    {
        return collateralParams[_collateral].debtTokenGasCompensation;
    }

    /// @inheritdoc IAdminContract
    function getMinNetDebt(address _collateral) external view override returns (uint256) {
        return collateralParams[_collateral].minNetDebt;
    }

    /// @inheritdoc IAdminContract
    function getPercentDivisor(address _collateral) external view override returns (uint256) {
        return collateralParams[_collateral].percentDivisor;
    }

    /// @inheritdoc IAdminContract
    function getBorrowingFee(address _collateral) external view override returns (uint256) {
        return collateralParams[_collateral].borrowingFee;
    }

    /// @inheritdoc IAdminContract
    function getMintCap(address _collateral) external view override returns (uint256) {
        return collateralParams[_collateral].mintCap;
    }

    /// @inheritdoc IAdminContract
    function getTotalAssetDebt(address _asset) external view override returns (uint256) {
        return ITrenBoxStorage(trenBoxStorage).getTotalDebtBalance(_asset);
    }

    /// @inheritdoc IAdminContract
    function getFlashLoanFee() external view override returns (uint256) {
        return flashLoanParams.flashLoanFee;
    }

    /// @inheritdoc IAdminContract
    function getFlashLoanMinNetDebt() external view override returns (uint256) {
        return flashLoanParams.flashLoanMinDebt;
    }

    /// @inheritdoc IAdminContract
    function getFlashLoanMaxNetDebt() external view override returns (uint256) {
        return flashLoanParams.flashLoanMaxDebt;
    }

    /// @inheritdoc IAdminContract
    function getRouteToTRENStaking() external view override returns (bool) {
        return routeToTRENStaking;
    }

    // Internal Functions
    // -----------------------------------------------------------------------------------------------

    function _authorizeUpgrade(address) internal override onlyOwner { }

    /**
     * @dev Checks if the specific collateral asset exists or not.
     * @param _collateral The address of collateral asset.
     */
    function _exists(address _collateral) private view {
        if (collateralParams[_collateral].mcr == 0) {
            revert AdminContract__CollateralDoesNotExist();
        }
    }

    function _addNewCollateral(address _collateral, uint256 _debtTokenGasCompensation) internal {
        if (collateralParams[_collateral].mcr != 0) {
            revert AdminContract__CollateralExists();
        }

        validCollateral.push(_collateral);
        collateralParams[_collateral] = CollateralParams({
            index: validCollateral.length - 1,
            active: false,
            borrowingFee: BORROWING_FEE_DEFAULT,
            ccr: CCR_DEFAULT,
            updatedCCR: 0,
            timestampForCCRupdate: 0,
            mcr: MCR_DEFAULT,
            updatedMCR: 0,
            timestampForMCRupdate: 0,
            debtTokenGasCompensation: _debtTokenGasCompensation,
            minNetDebt: MIN_NET_DEBT_DEFAULT,
            mintCap: MINT_CAP_DEFAULT,
            percentDivisor: PERCENT_DIVISOR_DEFAULT
        });

        emit CollateralAdded(_collateral);

        IStabilityPool(stabilityPool).addCollateralType(_collateral);
    }

    function _setBorrowingFee(
        address _collateral,
        uint256 _borrowingFee
    )
        internal
        safeCheck("Borrowing Fee", _collateral, _borrowingFee, 0.005 ether, 0.1 ether) // 0.5% - 10%
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        uint256 oldBorrowing = collParams.borrowingFee;
        collParams.borrowingFee = _borrowingFee;
        emit BorrowingFeeChanged(oldBorrowing, _borrowingFee);
    }

    function _setCCR(
        address _collateral,
        uint256 _ccr,
        bool _initialCall
    )
        internal
        safeCheck("CCR", _collateral, _ccr, 1.45 ether, 10 ether) // 145% - 1,000%
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        if (_ccr - getMcr(_collateral) < 0.4 ether) {
            revert AdminContract__CCRTooLow();
        }
        if (!_initialCall) {
            uint256 diff = TrenMath._getAbsoluteDifference(getCcr(_collateral), _ccr);
            if (diff > 0.1 ether) {
                revert AdminContract__CCRsDiffIsTooHigh(diff);
            }
            if (block.timestamp < collParams.timestampForCCRupdate) {
                revert AdminContract__TimeForUpdatingCCRNotPassed();
            }

            if (collParams.updatedCCR != 0) collParams.ccr = collParams.updatedCCR;
            collParams.updatedCCR = _ccr;
        } else {
            collParams.ccr = _ccr;
        }
        collParams.timestampForCCRupdate = block.timestamp + ONE_WEEK;

        emit CCRChanged(collParams.ccr, _ccr);
    }

    function _setMCR(
        address _collateral,
        uint256 _mcr,
        bool _initialCall
    )
        internal
        safeCheck("MCR", _collateral, _mcr, 1.05 ether, 10 ether) // 105% - 1,000%
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        if (getCcr(_collateral) - _mcr < 0.4 ether) {
            revert AdminContract__MCRTooHigh();
        }
        if (!_initialCall) {
            uint256 diff = TrenMath._getAbsoluteDifference(getMcr(_collateral), _mcr);
            if (diff > 0.1 ether) {
                revert AdminContract__MCRsDiffIsTooHigh(diff);
            }
            if (block.timestamp < collParams.timestampForMCRupdate) {
                revert AdminContract__TimeForUpdatingMCRNotPassed();
            }

            if (collParams.updatedMCR != 0) collParams.mcr = collParams.updatedMCR;
            collParams.updatedMCR = _mcr;
        } else {
            collParams.mcr = _mcr;
        }
        collParams.timestampForMCRupdate = block.timestamp + ONE_WEEK;

        emit MCRChanged(collParams.mcr, _mcr);
    }

    function _setMinNetDebt(
        address _collateral,
        uint256 _minNetDebt
    )
        internal
        safeCheck("Min Net Debt", _collateral, _minNetDebt, 100 ether, 2000 ether)
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        uint256 oldMinNet = collParams.minNetDebt;
        collParams.minNetDebt = _minNetDebt;
        emit MinNetDebtChanged(oldMinNet, _minNetDebt);
    }

    function _setMintCap(address _collateral, uint256 _mintCap) internal {
        CollateralParams storage collParams = collateralParams[_collateral];
        uint256 oldMintCap = collParams.mintCap;
        collParams.mintCap = _mintCap;
        emit MintCapChanged(oldMintCap, _mintCap);
    }

    function _setPercentDivisor(
        address _collateral,
        uint256 _percentDivisor
    )
        internal
        safeCheck("Percent Divisor", _collateral, _percentDivisor, 2, 200)
    {
        CollateralParams storage collParams = collateralParams[_collateral];
        uint256 oldPercent = collParams.percentDivisor;
        collParams.percentDivisor = _percentDivisor;
        emit PercentDivisorChanged(oldPercent, _percentDivisor);
    }

    function _setCollateralParameters(
        address _collateral,
        uint256 _borrowingFee,
        uint256 _ccr,
        uint256 _mcr,
        uint256 _minNetDebt,
        uint256 _mintCap,
        uint256 _percentDivisor
    )
        internal
    {
        collateralParams[_collateral].active = true;

        _setBorrowingFee(_collateral, _borrowingFee);
        _setCCR(_collateral, _ccr, true);
        _setMCR(_collateral, _mcr, true);
        _setMinNetDebt(_collateral, _minNetDebt);
        _setMintCap(_collateral, _mintCap);
        _setPercentDivisor(_collateral, _percentDivisor);
    }
}
