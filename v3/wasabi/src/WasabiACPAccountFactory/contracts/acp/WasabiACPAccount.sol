// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IWasabiACPAccount} from "./IWasabiACPAccount.sol";
import {IWasabiPerps} from "../IWasabiPerps.sol";
import {IWasabiVault} from "../vaults/IWasabiVault.sol";

contract WasabiACPAccount is IWasabiACPAccount, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    address public accountFactory;
    address public wasabiAgent;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Checks if the caller is the account factory
    modifier onlyOwnerOrAgent() {
        if (msg.sender != owner() && msg.sender != wasabiAgent) revert CallerNotOwnerOrAgent();
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        INITIALIZER                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the account
    /// @param _accountHolder The account holder address
    /// @param _wasabiAgent The WasabiAgent contract
    function initialize(address _accountHolder, address _wasabiAgent) external initializer {
        __Ownable_init(_accountHolder);
        __ReentrancyGuard_init();
        accountFactory = msg.sender;
        wasabiAgent = _wasabiAgent;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      TRADING FUNCTIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Opens a position
    /// @param _pool The pool to open the position on
    /// @param _request The request to open a position
    /// @param _signature The signature of the request
    function openPosition(
        IWasabiPerps _pool,
        IWasabiPerps.OpenPositionRequest calldata _request,
        IWasabiPerps.Signature calldata _signature
    ) external onlyOwnerOrAgent nonReentrant {
        bool isLongPool = _pool.isLongPool();
        address paymentCurrency = isLongPool ? _request.currency : _request.targetCurrency;
        uint256 paymentAmount = _request.downPayment + _request.fee;

        IERC20(paymentCurrency).safeTransferFrom(msg.sender, address(this), paymentAmount);
        IERC20(paymentCurrency).forceApprove(address(_pool), paymentAmount);

        _pool.openPosition(_request, _signature);
    }

    /// @notice Closes a position
    /// @param _pool The pool to close the position on
    /// @param _request The request to close a position
    /// @param _signature The signature of the request
    function closePosition(
        IWasabiPerps _pool,
        IWasabiPerps.PayoutType _payoutType,
        IWasabiPerps.ClosePositionRequest calldata _request,
        IWasabiPerps.Signature calldata _signature
    ) external onlyOwnerOrAgent nonReentrant {
        _pool.closePosition(_payoutType, _request, _signature);
    }
}