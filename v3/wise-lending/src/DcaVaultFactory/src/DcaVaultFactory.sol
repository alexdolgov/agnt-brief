// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { MinimalClone } from "./MinimalClone.sol";
import { SafeTransfer } from "./SafeTransfer.sol";
import { PersonalDcaVault, TwapAsk } from "./PersonalDcaVault.sol";

interface IERC20Balance {
    function balanceOf(
        address account
    ) 
        external 
        view 
        returns (uint256);
}

/**
 * One EIP-1167 minimal-proxy `PersonalDcaVault` per user. Token-agnostic and chain-agnostic:
 * no token or TWAP addresses are baked in — everything is passed at call time.
 *
 * Entry points:
 *   getOrCreateVault() — create the vault (no token transfer)
 *   placeOrder(token, amount, twap, ask) — pull from wallet + place in one tx
 *
 * Fee model — withdraw-only:
 *   Order placement is free. The vault skims feeBps on every withdraw (any ERC20)
 *   to feeRecipient.
 *
 * Order funding:
 *   placeOrder is the only way to place an order. The wallet must send at least
 *   ask.srcAmount in this tx (_amount >= srcAmount and balance delta >= srcAmount).
 *   Prior vault src balance does not count toward the order — only this tx's transfer.
 *
 * Fee-on-Transfer tokens:
 *   Tokens that deduct a tax on transfer (deflationary / FoT tokens) are NOT supported.
 */
contract DcaVaultFactory {

    address public immutable vaultImplementation;
    address public owner;
    address public pendingOwner;
    address public feeRecipient;
    uint16  public feeBps; // basis points: 100 = 1%, max enforced at 1_000 (10%)

    address private constant ZERO_ADDRESS = address(0x0);

    mapping(address => address) public vaultOf;
    mapping(address => bool) public approvedTwapContracts;
    mapping(address => bool) public approvedSwapRouters;

    uint8 private _factoryLocked;

    event VaultCreated(
        address indexed user,
        address vault
    );

    event VaultFunded(
        address indexed user,
        address indexed vault,
        address indexed token,
        uint256 amount
    );

    event FeeUpdated(
        address feeRecipient,
        uint16  feeBps
    );

    event OwnershipTransferInitiated(
        address indexed currentOwner,
        address indexed pendingOwner
    );

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    event TwapContractUpdated(
        address indexed twapContract,
        bool approved
    );

    event SwapRouterUpdated(
        address indexed swapRouter,
        bool approved
    );

    event RescueERC20(
        address indexed token,
        address indexed to,
        uint256 amount
    );

    error TokenMismatch();
    error OnlyOwner();
    error OnlyPendingOwner();
    error FeeTooHigh();
    error ZeroOwner();
    error ZeroFeeRecipient();
    error UnapprovedTwapContract();
    error InsufficientDepositForOrder();
    error Reentrancy();

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert OnlyOwner();
        }
        _;
    }

    modifier nonReentrant() {
        if (_factoryLocked == 2) {
            revert Reentrancy();
        }
        _factoryLocked = 2;
        _;
        _factoryLocked = 1;
    }

    constructor(
        address _feeRecipient,
        uint16  _feeBps
    ) {
        if (_feeBps > 1_000) {
            revert FeeTooHigh();
        }

        if (_feeBps > 0 && _feeRecipient == ZERO_ADDRESS) {
            revert ZeroFeeRecipient();
        }

        owner = msg.sender;
        feeRecipient = _feeRecipient;
        feeBps = _feeBps;
        _factoryLocked = 1;

        vaultImplementation = address(
            new PersonalDcaVault()
        );
    }

    function setFee(
        address _feeRecipient,
        uint16  _feeBps
    )
        external
        onlyOwner
    {
        if (_feeBps > 1_000) {
            revert FeeTooHigh();
        }

        if (_feeBps > 0 && _feeRecipient == ZERO_ADDRESS) {
            revert ZeroFeeRecipient();
        }

        feeRecipient = _feeRecipient;
        feeBps = _feeBps;
        emit FeeUpdated(
            _feeRecipient,
            _feeBps
        );
    }

    function transferOwnership(
        address _newOwner
    )
        external
        onlyOwner
    {
        if (_newOwner == ZERO_ADDRESS) {
            revert ZeroOwner();
        }

        pendingOwner = _newOwner;
        emit OwnershipTransferInitiated(
            owner,
            _newOwner
        );
    }

    function acceptOwnership()
        external
    {
        if (msg.sender != pendingOwner) {
            revert OnlyPendingOwner();
        }

        emit OwnershipTransferred(
            owner,
            pendingOwner
        );

        owner = pendingOwner;
        pendingOwner = ZERO_ADDRESS;
    }

    function setTwapContract(
        address _twapContract,
        bool _approved
    )
        external
        onlyOwner
    {
        approvedTwapContracts[_twapContract] = _approved;

        emit TwapContractUpdated(
            _twapContract,
            _approved
        );
    }

    function setSwapRouter(
        address _swapRouter,
        bool _approved
    )
        external
        onlyOwner
    {
        approvedSwapRouters[_swapRouter] = _approved;

        emit SwapRouterUpdated(
            _swapRouter,
            _approved
        );
    }

    function isApprovedSwapRouter(
        address _swapRouter
    )
        external
        view
        returns (bool)
    {
        return approvedSwapRouters[_swapRouter];
    }

    function getOrCreateVault()
        public
        returns (address vault)
    {
        vault = vaultOf[
            msg.sender
        ];

        if (vault != ZERO_ADDRESS) {
            return vault;
        }

        vault = MinimalClone.clone(
            vaultImplementation
        );

        PersonalDcaVault(vault).initialize(
            msg.sender
        );

        vaultOf[msg.sender] = vault;

        emit VaultCreated(
            msg.sender,
            vault
        );
    }

    function placeOrder(
        address _token,
        uint256 _amount,
        address _twapContract,
        TwapAsk calldata _ask
    )
        external
        nonReentrant
        returns (
            address vault,
            uint64  id
        )
    {
        if (approvedTwapContracts[_twapContract] == false) {
            revert UnapprovedTwapContract();
        }

        if (_token != _ask.srcToken) {
            revert TokenMismatch();
        }

        if (_amount < _ask.srcAmount) {
            revert InsufficientDepositForOrder();
        }

        vault = getOrCreateVault();

        uint256 balanceBefore = IERC20Balance(_token).balanceOf(
            vault
        );

        SafeTransfer.safeTransferFrom(
            _token,
            msg.sender,
            vault,
            _amount
        );

        uint256 deposited = IERC20Balance(_token).balanceOf(vault) 
            - balanceBefore;

        if (deposited < _ask.srcAmount) {
            revert InsufficientDepositForOrder();
        }

        emit VaultFunded(
            msg.sender,
            vault,
            _token,
            _amount
        );

        id = PersonalDcaVault(vault).placeFromFactory(
            _twapContract,
            _ask
        );
    }

    function rescueERC20(
        address _token,
        address _to,
        uint256 _amount
    )
        external
        onlyOwner
    {
        SafeTransfer.safeTransfer(
            _token,
            _to,
            _amount
        );

        emit RescueERC20(
            _token,
            _to,
            _amount
        );
    }
}
