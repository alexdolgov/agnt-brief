// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IRecoverable} from "../interfaces/IRecoverable.sol";
import {IFeeManager, FeeStructure} from "../interfaces/IFeeManager.sol";
import {IAccountableStrategy} from "../interfaces/IAccountableStrategy.sol";

import {
    Unauthorized,
    ZeroAddress,
    InvalidManagerSplit,
    InvalidEstablishmentFee,
    InvalidPrepaymentFee,
    InvalidPerformanceFee,
    InvalidManagementFee,
    InvalidFeeStructure
} from "../constants/Errors.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @title FeeManager
/// @notice A contract that manages fees for strategies
contract FeeManager is
    IFeeManager,
    UUPSUpgradeable,
    MulticallUpgradeable,
    Ownable2StepUpgradeable,
    ReentrancyGuardUpgradeable
{
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @notice Whether the strategy has a prepayment fee
    mapping(address strategy => bool hasPrepaymentFee) private _hasPrepaymentFee;

    /// @notice The fee structures for each strategy
    mapping(address strategy => FeeStructure feeStructure) private _feeStructures;

    /// @notice The pending fee structure for each strategy
    mapping(address strategy => FeeStructure pendingFeeStructure) private _pendingFeeStructures;

    /// @dev performance fee in basis points (10%)
    uint256 private constant _performanceFee = 1e5;
    /// @dev management fee annualized in basis points (1%)
    uint256 private constant _managementFee = 1e4;
    /// @dev prepayment fee in basis points (2%)
    uint256 private constant _prepaymentFee = 2e4;
    /// @dev manager split in basis points (50%)
    uint256 private constant _managerSplit = 5e5;

    /// @dev max performance fee in basis points (50%)
    uint256 public constant MAX_PERFORMANCE_FEE = 5e5;
    /// @dev max management fee in basis points (10%)
    uint256 public constant MAX_MANAGEMENT_FEE = 1e5;
    /// @dev max establishment fee in basis points (10%)
    uint256 public constant MAX_ESTABLISHMENT_FEE = 1e5;
    /// @dev max prepayment fee in basis points (50%)
    uint256 public constant MAX_PREPAYMENT_FEE = 5e5;

    /// @dev basis points (100%)
    uint256 public constant BASIS_POINTS = 1e6;

    /// @notice The treasury address
    address public treasury;

    /// @notice The prepayment fees grouped by strategy
    mapping(address strategy => uint256 prepaymentFee) public prepaymentFees;

    /// @notice The protocol fees grouped by asset
    mapping(address asset => uint256 protocolFee) public protocolFees;

    /// @notice The manager fees grouped by (manager, asset, strategy)
    mapping(address manager => mapping(address asset => mapping(address strategy => uint256))) public managerFees;

    modifier onlyTreasury() {
        if (msg.sender != treasury) revert Unauthorized();
        _;
    }

    modifier onlyManager(address strategy) {
        if (msg.sender != IAccountableStrategy(strategy).investmentManager()) revert Unauthorized();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address treasury_, address owner_) external initializer {
        __Ownable2Step_init();
        __Ownable_init(owner_);
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        treasury = treasury_;
    }

    /// @inheritdoc IFeeManager
    function collect(address asset, uint256 performanceFee_, uint256 managementFee_, uint256 establishmentFee_)
        public
        nonReentrant
    {
        if (performanceFee_ > 0) {
            _collectFeeSplit(asset, msg.sender, performanceFee_, true);
        }
        if (managementFee_ > 0) {
            _collectFeeSplit(asset, msg.sender, managementFee_, false);
        }
        protocolFees[asset] += establishmentFee_;

        IERC20(asset).safeTransferFrom(msg.sender, address(this), performanceFee_ + managementFee_ + establishmentFee_);

        emit Collected(asset, msg.sender, performanceFee_, managementFee_, establishmentFee_);
    }

    /// @dev Collects fees and splits between manager and protocol
    function _collectFeeSplit(address asset, address strategy, uint256 amount, bool isPerformanceFee) private {
        address managerFeeRecipient = IAccountableStrategy(strategy).managerFeeRecipient();
        if (managerFeeRecipient == address(0)) revert ZeroAddress();

        uint256 split = managerSplit(strategy, isPerformanceFee);
        uint256 managerFee;
        uint256 protocolFee;

        if (split == 0) {
            managerFee = 0;
            protocolFee = amount;
        } else {
            managerFee = _split(amount, split);
            protocolFee = amount - managerFee;
        }

        protocolFees[asset] += protocolFee;
        managerFees[managerFeeRecipient][asset][strategy] += managerFee;
    }

    /// @inheritdoc IFeeManager
    function withdrawProtocolFee(address asset) public nonReentrant onlyTreasury {
        uint256 amount = protocolFees[asset];
        if (amount > 0) {
            protocolFees[asset] = 0;
            IERC20(asset).safeTransfer(treasury, amount);

            emit Withdraw(asset, address(0), treasury, amount);
        }
    }

    /// @inheritdoc IFeeManager
    function withdrawManagerFee(address receiver, address asset, address strategy) public nonReentrant {
        uint256 amount = managerFees[msg.sender][asset][strategy];
        if (amount > 0) {
            managerFees[msg.sender][asset][strategy] = 0;
            IERC20(asset).safeTransfer(receiver, amount);

            emit Withdraw(asset, strategy, receiver, amount);
        }
    }

    /// @inheritdoc IFeeManager
    function setFeeStructure(address strategy, FeeStructure memory fees) public onlyOwner {
        _requireValidFeeStructure(fees);

        _feeStructures[strategy] = fees;
        _feeStructures[strategy].overrideDefaults = true;
        IAccountableStrategy(strategy).onFeeStructureChange();

        emit FeeStructureSet(strategy, fees);
    }

    /// @inheritdoc IFeeManager
    function setPendingFeeStructure(address strategy, FeeStructure memory fees) public onlyManager(strategy) {
        _requireValidFeeStructure(fees);

        _pendingFeeStructures[strategy] = fees;

        emit PendingFeeStructureSet(strategy, fees);
    }

    function _requireValidFeeStructure(FeeStructure memory fees) private pure {
        if (fees.establishmentFee > 0 && fees.managementFee > 0) revert InvalidFeeStructure();
        if (fees.performanceFee > MAX_PERFORMANCE_FEE) revert InvalidPerformanceFee();
        if (fees.establishmentFee > MAX_ESTABLISHMENT_FEE) revert InvalidEstablishmentFee();
        if (fees.managementFee > MAX_MANAGEMENT_FEE) revert InvalidManagementFee();
        if (fees.managerPerformanceFeeSplit > BASIS_POINTS || fees.managerManagementFeeSplit > BASIS_POINTS) {
            revert InvalidManagerSplit();
        }
    }

    /// @inheritdoc IFeeManager
    function approvePendingFeeStructure(address strategy) public onlyOwner {
        _feeStructures[strategy] = _pendingFeeStructures[strategy];
        _feeStructures[strategy].overrideDefaults = true;
        delete _pendingFeeStructures[strategy];

        IAccountableStrategy(strategy).onFeeStructureChange();

        emit FeeStructureSet(strategy, _feeStructures[strategy]);
    }

    /// @inheritdoc IFeeManager
    function setPerformanceFee(address strategy, uint256 fee) public onlyManager(strategy) {
        if (fee > MAX_PERFORMANCE_FEE) revert InvalidPerformanceFee();

        FeeStructure memory feeStructure_ = _feeStructures[strategy];
        if (feeStructure_.overrideDefaults) {
            feeStructure_.performanceFee = fee;
        } else {
            feeStructure_.performanceFee = fee;
            feeStructure_.managementFee = _managementFee;
            feeStructure_.establishmentFee = 0;
            feeStructure_.managerPerformanceFeeSplit = _managerSplit;
            feeStructure_.managerManagementFeeSplit = _managerSplit;
            feeStructure_.overrideDefaults = true;
        }

        _feeStructures[strategy] = feeStructure_;
        IAccountableStrategy(strategy).onFeeStructureChange();

        emit PerformanceFeeSet(strategy, fee);
    }

    /// @inheritdoc IFeeManager
    function setPrepaymentFee(address strategy, uint256 fee) public onlyManager(strategy) {
        if (fee > MAX_PREPAYMENT_FEE) revert InvalidPrepaymentFee();
        prepaymentFees[strategy] = fee;
        _hasPrepaymentFee[strategy] = true;
        IAccountableStrategy(strategy).onFeeStructureChange();

        emit PrepaymentFeeSet(strategy, fee);
    }

    /// @inheritdoc IFeeManager
    function setTreasury(address treasury_) public onlyOwner {
        if (treasury_ == address(0)) revert ZeroAddress();
        emit TreasurySet(treasury, treasury_);
        treasury = treasury_;
    }

    /// @inheritdoc IFeeManager
    function establishmentFee(address strategy) public view returns (uint256) {
        if (_feeStructures[strategy].overrideDefaults) {
            return _feeStructures[strategy].establishmentFee;
        }
        return 0;
    }

    /// @inheritdoc IFeeManager
    function managementFee(address strategy) public view returns (uint256) {
        if (_feeStructures[strategy].overrideDefaults) {
            return _feeStructures[strategy].managementFee;
        }
        return _managementFee;
    }

    /// @inheritdoc IFeeManager
    function performanceFee(address strategy) public view returns (uint256) {
        if (_feeStructures[strategy].overrideDefaults) {
            return _feeStructures[strategy].performanceFee;
        }
        return _performanceFee;
    }

    /// @inheritdoc IFeeManager
    function managerSplit(address strategy, bool isPerformanceFee) public view returns (uint256) {
        if (_feeStructures[strategy].overrideDefaults) {
            return isPerformanceFee
                ? _feeStructures[strategy].managerPerformanceFeeSplit
                : _feeStructures[strategy].managerManagementFeeSplit;
        }
        return _managerSplit;
    }

    /// @inheritdoc IFeeManager
    function protocolSplit(address strategy, bool isPerformanceFee) public view returns (uint256) {
        return BASIS_POINTS - managerSplit(strategy, isPerformanceFee);
    }

    /// @inheritdoc IFeeManager
    function prepaymentFee(address strategy) public view returns (uint256) {
        if (_hasPrepaymentFee[strategy]) {
            return prepaymentFees[strategy];
        }
        return _prepaymentFee;
    }

    /// @inheritdoc IFeeManager
    function feeStructure(address strategy) public view returns (FeeStructure memory) {
        return _feeStructures[strategy];
    }

    /// @inheritdoc IFeeManager
    function pendingFeeStructure(address strategy) public view returns (FeeStructure memory) {
        return _pendingFeeStructures[strategy];
    }

    /// @inheritdoc IFeeManager
    function managerTotalFees(address manager, address asset, address[] calldata strategies)
        public
        view
        returns (uint256 totalFees)
    {
        for (uint256 i = 0; i < strategies.length;) {
            totalFees += managerFees[manager][asset][strategies[i]];
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IRecoverable
    function recoverTokens(address token, address receiver, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(receiver, amount);
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public pure override returns (bool) {
        return interfaceId == type(IFeeManager).interfaceId || interfaceId == type(IERC165).interfaceId;
    }

    /// @dev Splits an amount by a split percentage
    /// @param amount_ The amount to split
    /// @param split_ The split percentage
    /// @return The split amount
    function _split(uint256 amount_, uint256 split_) private pure returns (uint256) {
        if (split_ == 0) {
            return 0;
        }
        return amount_.mulDiv(split_, BASIS_POINTS, Math.Rounding.Ceil);
    }

    /// @dev Prevents renouncement of ownership
    function renounceOwnership() public virtual override onlyOwner {
        revert Unauthorized();
    }

    /// @dev Authorizes the upgrade of the implementation
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
