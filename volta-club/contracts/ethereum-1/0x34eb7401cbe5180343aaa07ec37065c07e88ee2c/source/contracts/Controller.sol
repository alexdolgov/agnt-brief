// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./interfaces/IPositionToken.sol";
import "./interfaces/IController.sol";
import "./interfaces/ICollateralAggregator.sol";
import "./interfaces/IDebtAggregator.sol";

/// @title JPEG'd Synthetic Positions Controller
/// @notice This contract is the main entry point for users who want to interact with the JPEG synthetics protocol
/// @dev Roles (at launch)
/// DEFAULT_ADMIN_ROLE: DAO
/// LIQUIDATOR_ROLE: JPEG Internal Liquidator Service
contract Controller is
    IController,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    enum Action {
        OPENPOSITION,
        CLOSEPOSITION,
        BORROW,
        REPAY,
        DEPOSIT,
        WITHDRAW,
        LIQUIDATE
    }

    bytes32 private constant LIQUIDATOR_ROLE = keccak256("LIQUIDATOR_ROLE");
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IPositionToken public immutable positionsContract;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    ICollateralAggregator public immutable collateralAggregator;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IDebtAggregator public immutable debtAggregator;

    error ZeroAddress();
    error ZeroAmount();
    error Unauthorised();
    error NotEnoughDebtCredit();
    error InvalidWithdrawAmount();
    error InvalidPosition();
    error InvalidLength();
    error UnknownAction(uint8 action);
    error NotEligibleForLiquidation();
    error CannotClosePosition();

    event NewPositionOpened(address indexed owner, uint256 positionId);
    event PositionLiquidated(
        address indexed liquidator,
        address indexed receiver,
        uint256 positionId
    );
    event PositionClosed(address indexed owner, uint256 positionId);

    modifier ensureNonZeroAddress(address someone) {
        if (someone == address(0)) revert ZeroAddress();
        _;
    }

    modifier ensureNonZeroAmount(uint256 _amount) {
        if (_amount == 0) revert ZeroAmount();
        _;
    }

    modifier ensurePositionOwner(uint256 positionId, address owner) {
        if (positionsContract.ownerOf(positionId) != owner)
            revert Unauthorised();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @notice Contsctructor of the implementation contract
    /// @dev This constructor only sets IMMUTABLE variable and lock initializing of the implementation
    constructor(
        address _positionsContract,
        address _collateralAggregator,
        address _debtAggregator
    )
        ensureNonZeroAddress(_positionsContract)
        ensureNonZeroAddress(_collateralAggregator)
        ensureNonZeroAddress(_debtAggregator)
    {
        positionsContract = IPositionToken(_positionsContract);
        collateralAggregator = ICollateralAggregator(_collateralAggregator);
        debtAggregator = IDebtAggregator(_debtAggregator);
        _disableInitializers();
    }

    /// @notice Initialized function called via the proxy contract on deployment
    function initialize() public initializer {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice Allows depositing collateral into a newly opened position.
    /// @param _asset Address of the collateral asset.
    /// @param _amount The amount to borrow.
    /// @dev emits a {NewPositionOpened} event
    function depositToNewPosition(
        address _asset,
        uint256 _amount
    ) external override nonReentrant {
        _deposit(_asset, _openPosition(), _amount);
    }

    /// @notice Allows opening a new position for the caller.
    /// @dev emits a {NewPositionOpened} event
    function openPosition() external override nonReentrant {
        _openPosition();
    }

    /// @notice Allows closing a position for the caller.
    /// @dev Reverts with {CannotClosePosition} if position has any open debt or not withdrawn collateral left. On success Emits a {PositionClosed} event
    function closePosition(uint256 _positionId) external override nonReentrant {
        _closePosition(_positionId);
    }

    /// @notice Allows borrowing from a registered debt vault.
    /// @dev This function can be called only by the position owner.
    /// @param _asset Address of the debt asset.
    /// @param _positionId The position ID.
    /// @param _amount The amount to borrow.
    function borrow(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external override nonReentrant {
        _borrow(_asset, _positionId, _amount);
    }

    /// @notice Repays a borrowed amount to a registered debt vault.
    /// @dev This function can be called only by the position owner.
    /// @param _asset Address of the debt asset.
    /// @param _positionId The position ID.
    /// @param _amount The amount to repay.
    function repay(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external override nonReentrant {
        _repay(_asset, _positionId, _amount);
    }

    /// @notice Deposits collateral to a position.
    /// @dev This function can be called only by the position owner.
    /// @param _asset Address of the collateral asset.
    /// @param _positionId The position ID.
    /// @param _amount The amount to deposit.
    function deposit(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external override nonReentrant {
        _deposit(_asset, _positionId, _amount);
    }

    /// @notice Withdraws collateral from a position.
    /// @dev This function can be called only by the position owner.
    /// @param _asset Address of the collateral asset.
    /// @param _positionId The position ID.
    /// @param _amount The amount to withdraw.
    function withdraw(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external override nonReentrant {
        _withdraw(_asset, _positionId, _amount);
    }

    /// @notice Allows liquidating a position.
    /// @dev emits a {PositionLiquidated} event and reverts if caller does not have LIQUIDATION_ROLE
    ///      The liquidator is required to provide the whole debt amount that the position has.
    /// @param _positionId ID of the position to be liquidated
    /// @param _receiver Address of the receiver of the collateral for the position
    function liquidate(
        uint256 _positionId,
        address _receiver
    ) external override nonReentrant {
        _liquidate(_positionId, _receiver);
    }

    /// @notice Allows to execute multiple actions in a single transaction.
    /// @dev For Action.OPENPOSITION you need to provide a zero bytes32 value
    /// @param _actions The actions to execute.
    /// @param _data The abi encoded parameters for the actions to execute.
    function doActions(
        uint8[] calldata _actions,
        bytes[] calldata _data
    ) external nonReentrant {
        if (_actions.length != _data.length) revert InvalidLength();
        for (uint256 i; i < _actions.length; ++i) {
            // action index should in in the enum range
            if (_actions[i] > uint8(type(Action).max)) {
                revert UnknownAction(_actions[i]);
            }
            Action action = Action(_actions[i]);
            if (action == Action.OPENPOSITION) {
                _openPosition();
            } else if (action == Action.CLOSEPOSITION) {
                uint256 _positionId = abi.decode(_data[i], (uint256));
                _closePosition(_positionId);
            } else if (action == Action.BORROW) {
                (address _asset, uint256 _positionId, uint256 _amount) = abi
                    .decode(_data[i], (address, uint256, uint256));
                _borrow(_asset, _positionId, _amount);
            } else if (action == Action.REPAY) {
                (address _asset, uint256 _positionId, uint256 _amount) = abi
                    .decode(_data[i], (address, uint256, uint256));
                _repay(_asset, _positionId, _amount);
            } else if (action == Action.DEPOSIT) {
                (address _asset, uint256 _positionId, uint256 _amount) = abi
                    .decode(_data[i], (address, uint256, uint256));
                _deposit(_asset, _positionId, _amount);
            } else if (action == Action.WITHDRAW) {
                (address _asset, uint256 _positionId, uint256 _amount) = abi
                    .decode(_data[i], (address, uint256, uint256));
                _withdraw(_asset, _positionId, _amount);
            } else if (action == Action.LIQUIDATE) {
                (uint256 _positionId, address _receiver) = abi.decode(
                    _data[i],
                    (uint256, address)
                );
                _liquidate(_positionId, _receiver);
            }
        }
    }

    /// @param _positionId ID of the position
    /// @return The available credit for the position in ETH scaled by 1e18
    function getAvailableCredit(
        uint256 _positionId
    ) external view override returns (uint256) {
        return _getPositionAvailableCredit(_positionId);
    }

    /// @dev See {openPosition}
    function _openPosition() private returns (uint256) {
        uint256 positionId = positionsContract.openPosition(msg.sender);
        emit NewPositionOpened(msg.sender, positionId);
        return positionId;
    }

    /// @dev See {closePosition}
    function _closePosition(
        uint256 _positionId
    ) private ensurePositionOwner(_positionId, msg.sender) {
        if (
            debtAggregator.getDebt(_positionId) != 0 ||
            collateralAggregator.getPositionCollaterals(_positionId).length != 0
        ) {
            revert CannotClosePosition();
        }
        positionsContract.closePosition(_positionId);
        emit PositionClosed(msg.sender, _positionId);
    }

    /// @dev See {borrow}
    function _borrow(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    )
        private
        ensurePositionOwner(_positionId, msg.sender)
        ensureNonZeroAmount(_amount)
    {
        // borrow amount should be <= available credit amount - open debt
        if (
            debtAggregator.getAssetETHValue(_asset, _amount) >
            _getPositionAvailableCredit(_positionId)
        ) {
            revert NotEnoughDebtCredit();
        }
        debtAggregator.borrow(_asset, _positionId, msg.sender, _amount);
    }

    /// @dev See {repay}
    function _repay(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    )
        private
        ensurePositionOwner(_positionId, msg.sender)
        ensureNonZeroAmount(_amount)
    {
        debtAggregator.repay(_asset, _positionId, msg.sender, _amount);
    }

    /// @dev See {deposit}
    function _deposit(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    )
        private
        ensurePositionOwner(_positionId, msg.sender)
        ensureNonZeroAmount(_amount)
    {
        collateralAggregator.deposit(_asset, _positionId, msg.sender, _amount);
    }

    /// @dev See {withdraw}
    function _withdraw(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    )
        private
        ensurePositionOwner(_positionId, msg.sender)
        ensureNonZeroAmount(_amount)
    {
        // if position has debt, the creditLimit after the withdrawal should be bigger than the debt
        uint256 positionDebtETH = debtAggregator.getDebt(_positionId);
        if (positionDebtETH != 0) {
            if (
                collateralAggregator.previewWithdrawalCreditLimitETH(
                    _positionId,
                    _asset,
                    _amount
                ) < positionDebtETH
            ) {
                revert InvalidWithdrawAmount();
            }
        }

        collateralAggregator.withdraw(_asset, _positionId, msg.sender, _amount);
    }

    /// @dev See {liquidate}
    function _liquidate(
        uint256 _positionId,
        address _receiver
    ) private onlyRole(LIQUIDATOR_ROLE) ensureNonZeroAddress(_receiver) {
        if (!positionsContract.exists(_positionId)) {
            revert InvalidPosition();
        }
        if (
            debtAggregator.getDebt(_positionId) <
            collateralAggregator.getLiquidationThreshold(_positionId)
        ) {
            revert NotEligibleForLiquidation();
        }

        debtAggregator.liquidate(_positionId, msg.sender);
        collateralAggregator.seizeCollateral(_positionId, _receiver);
        positionsContract.closePosition(_positionId);
        emit PositionLiquidated(msg.sender, _receiver, _positionId);
    }

    /// @dev See {getAvailableCredit}
    function _getPositionAvailableCredit(
        uint256 _positionId
    ) private view returns (uint256) {
        uint256 creditLimit = collateralAggregator.getCreditLimit(_positionId);
        uint256 debt = debtAggregator.getDebt(_positionId);
        if (creditLimit < debt) {
            return 0;
        } else {
            return creditLimit - debt;
        }
    }
}
