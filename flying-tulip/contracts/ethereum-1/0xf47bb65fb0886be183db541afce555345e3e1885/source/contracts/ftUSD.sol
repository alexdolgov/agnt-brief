// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity 0.8.30;

import {Initializable} from "openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    ERC20Upgradeable
} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {
    ERC20PermitUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {
    PausableUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/utils/PausableUpgradeable.sol";
import {
    OwnableUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import {
    Ownable2StepUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {
    UUPSUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {
    ReentrancyGuardTransient
} from "openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol";
import {
    SignatureChecker
} from "openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol";

/// @title Flying Tulip USD (ftUSD)
/// @notice Stablecoin token with role-separated controls, per-minter mint allowances,
///         blacklist/pause controls and EIP-2612 permit.
contract FlyingTulipUSD is
    Initializable,
    ERC20PermitUpgradeable,
    PausableUpgradeable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardTransient
{
    using SafeERC20 for IERC20;

    uint8 private constant _DECIMALS = 6;
    bytes32 private constant _PERMIT_TYPEHASH = keccak256(
        "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
    );

    address public masterMinter;
    address public pauser;
    address public blacklister;

    /// @notice Sole authorized minter (expected: FtUSDCore).
    address public minter;

    /// @notice Current remaining mint allowance for the sole minter.
    uint256 public minterAllowance;

    /// @notice Upper bound to which `burn()` can restore `minterAllowance`.
    uint256 public minterAllowanceCap;

    mapping(address => bool) public isBlacklisted;

    /// @notice Maximum total supply (0 = unlimited)
    uint256 public maxSupply;

    error ZeroAddress();
    error NotMasterMinter(address caller);
    error NotMinter(address caller);
    error NotPauser(address caller);
    error NotBlacklister(address caller);
    error MinterAllowanceExceeded(uint256 requested, uint256 remaining);
    error AccountBlacklisted(address account);
    error InvalidSignature();
    error NotBlacklisted(address account);
    error NothingToWipe(address account);
    error MaxSupplyExceeded(uint256 requested, uint256 available);
    error MaxSupplyBelowCurrentSupply(uint256 newMaxSupply, uint256 currentSupply);
    error RenounceOwnershipDisabled();
    error NativeTransferFailed();
    error ZeroAmount();

    event MasterMinterChanged(address indexed newMasterMinter);
    event PauserChanged(address indexed newPauser);
    event BlacklisterChanged(address indexed newBlacklister);

    event MinterConfigured(address indexed minter, uint256 minterAllowedAmount);
    event MinterAllowanceIncreased(
        address indexed minter, uint256 increment, uint256 newAllowance, uint256 newCap
    );
    event MinterAllowanceCapUpdated(address indexed minter, uint256 newCap);
    event MinterRemoved(address indexed minter);

    event Mint(address indexed minter, address indexed to, uint256 amount);
    event Burn(address indexed minter, address indexed from, uint256 amount);

    event Blacklisted(address indexed account);
    event UnBlacklisted(address indexed account);
    event BlacklistedAddressWiped(address indexed account, uint256 balance);

    event MaxSupplyChanged(uint256 newMaxSupply);

    /// @notice Emitted when tokens (ERC20 or native) are recovered from this contract.
    /// @dev Use `token = address(0)` for native token recovery.
    event Recovered(address indexed token, address indexed to, uint256 amount);

    modifier onlyMasterMinter() {
        _onlyMasterMinter();
        _;
    }

    modifier onlyMinter() {
        _onlyMinter();
        _;
    }

    modifier onlyPauser() {
        _onlyPauser();
        _;
    }

    modifier onlyBlacklister() {
        _onlyBlacklister();
        _;
    }

    function _onlyMasterMinter() internal view {
        if (msg.sender != masterMinter) revert NotMasterMinter(msg.sender);
    }

    function _onlyMinter() internal view {
        if (msg.sender != minter) revert NotMinter(msg.sender);
    }

    function _onlyPauser() internal view {
        if (msg.sender != pauser) revert NotPauser(msg.sender);
    }

    function _onlyBlacklister() internal view {
        if (msg.sender != blacklister) revert NotBlacklister(msg.sender);
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address initialOwner,
        address initialMasterMinter,
        address initialPauser,
        address initialBlacklister
    )
        public
        initializer
    {
        if (
            initialOwner == address(0) || initialMasterMinter == address(0)
                || initialPauser == address(0) || initialBlacklister == address(0)
        ) revert ZeroAddress();

        __ERC20_init("Flying Tulip USD", "ftUSD");
        __ERC20Permit_init("Flying Tulip USD");
        __Pausable_init();
        __Ownable_init(initialOwner);
        __Ownable2Step_init();

        masterMinter = initialMasterMinter;
        pauser = initialPauser;
        blacklister = initialBlacklister;

        emit MasterMinterChanged(initialMasterMinter);
        emit PauserChanged(initialPauser);
        emit BlacklisterChanged(initialBlacklister);
    }

    function decimals() public pure override returns (uint8) {
        return _DECIMALS;
    }

    /// @notice Ownership renounce is permanently disabled for this token.
    /// @dev Prevents accidentally losing admin control of regulated roles.
    function renounceOwnership() public view override(OwnableUpgradeable) onlyOwner {
        revert RenounceOwnershipDisabled();
    }

    function updateMasterMinter(address newMasterMinter) external onlyOwner {
        if (newMasterMinter == address(0)) revert ZeroAddress();
        masterMinter = newMasterMinter;
        emit MasterMinterChanged(newMasterMinter);
    }

    function updatePauser(address newPauser) external onlyOwner {
        if (newPauser == address(0)) revert ZeroAddress();
        pauser = newPauser;
        emit PauserChanged(newPauser);
    }

    function updateBlacklister(address newBlacklister) external onlyOwner {
        if (newBlacklister == address(0)) revert ZeroAddress();
        blacklister = newBlacklister;
        emit BlacklisterChanged(newBlacklister);
    }

    /// @param newMaxSupply The new maximum supply (0 = unlimited)
    function setMaxSupply(uint256 newMaxSupply) external onlyOwner {
        if (newMaxSupply != 0) {
            uint256 supply = totalSupply();
            if (newMaxSupply < supply) revert MaxSupplyBelowCurrentSupply(newMaxSupply, supply);
        }
        maxSupply = newMaxSupply;
        emit MaxSupplyChanged(newMaxSupply);
    }

    /// @notice Recover ERC20 tokens accidentally sent to this contract.
    /// @dev Supports recovering ftUSD itself while paused by bypassing pause checks.
    function recoverERC20(IERC20 token, address to, uint256 amount)
        external
        onlyOwner
        nonReentrant
    {
        address tokenAddress = address(token);
        if (tokenAddress == address(0) || to == address(0)) revert ZeroAddress();

        if (tokenAddress == address(this)) {
            if (isBlacklisted[to]) revert AccountBlacklisted(to);
            super._update(address(this), to, amount);
        } else {
            token.safeTransfer(to, amount);
        }

        emit Recovered(tokenAddress, to, amount);
    }

    /// @notice Recover native tokens (e.g., ETH) stuck in this contract (e.g., via `SELFDESTRUCT`).
    function recoverNative(address payable to, uint256 amount) external onlyOwner nonReentrant {
        if (to == address(0)) revert ZeroAddress();
        (bool ok,) = to.call{value: amount}("");
        if (!ok) revert NativeTransferFailed();
        emit Recovered(address(0), to, amount);
    }

    function pause() external onlyPauser {
        _pause();
    }

    function unpause() external onlyPauser {
        _unpause();
    }

    function blacklist(address account) external onlyBlacklister {
        if (account == address(0)) revert ZeroAddress();
        isBlacklisted[account] = true;
        if (account == minter) {
            minter = address(0);
            minterAllowance = 0;
            minterAllowanceCap = 0;
            emit MinterRemoved(account);
        }
        emit Blacklisted(account);
    }

    function unBlacklist(address account) external onlyBlacklister {
        if (account == address(0)) revert ZeroAddress();
        isBlacklisted[account] = false;
        emit UnBlacklisted(account);
    }

    function wipeBlacklistedAddress(address account)
        external
        onlyBlacklister
        returns (uint256 wiped)
    {
        if (account == address(0)) revert ZeroAddress();
        if (!isBlacklisted[account]) revert NotBlacklisted(account);

        wiped = balanceOf(account);
        if (wiped == 0) revert NothingToWipe(account);

        super._update(account, address(0), wiped);
        emit BlacklistedAddressWiped(account, wiped);
    }

    /// @notice Configure (or reconfigure) a minter with an allowance.
    /// @dev Overwrites both the minter's current allowance and allowance cap.
    /// @param minter_ The address to configure as a minter.
    /// @param minterAllowedAmount The minting allowance to set (also becomes the cap).
    function configureMinter(
        address minter_,
        uint256 minterAllowedAmount
    )
        external
        onlyMasterMinter
        returns (bool)
    {
        if (minter_ == address(0)) revert ZeroAddress();
        if (isBlacklisted[minter_]) revert AccountBlacklisted(minter_);

        address prevMinter = minter;
        if (prevMinter != address(0) && prevMinter != minter_) {
            emit MinterRemoved(prevMinter);
        }

        minter = minter_;
        minterAllowance = minterAllowedAmount;
        minterAllowanceCap = minterAllowedAmount;
        emit MinterConfigured(minter_, minterAllowedAmount);
        return true;
    }

    /// @notice Increase a minter's allowance.
    /// @dev Allows incrementing allowance without resetting cap
    /// @param minter_ The minter address
    /// @param increment The amount to add to current allowance
    function increaseMinterAllowance(
        address minter_,
        uint256 increment
    )
        external
        onlyMasterMinter
        returns (bool)
    {
        if (minter_ == address(0)) revert ZeroAddress();
        if (isBlacklisted[minter_]) revert AccountBlacklisted(minter_);
        if (minter != minter_) revert NotMinter(minter_);

        uint256 newAllowance = minterAllowance + increment;
        uint256 cap = minterAllowanceCap;

        // If new allowance exceeds cap, update cap as well
        if (newAllowance > cap) {
            cap = newAllowance;
            minterAllowanceCap = cap;
        }

        minterAllowance = newAllowance;
        emit MinterAllowanceIncreased(minter_, increment, newAllowance, cap);
        return true;
    }

    /// @notice Set the minter's allowance cap without changing its current allowance.
    /// @dev The cap controls how much allowance can be restored by `burn()` over time.
    function setMinterAllowanceCap(
        address minter_,
        uint256 newCap
    )
        external
        onlyMasterMinter
        returns (bool)
    {
        if (minter_ == address(0)) revert ZeroAddress();
        if (isBlacklisted[minter_]) revert AccountBlacklisted(minter_);
        if (minter != minter_) revert NotMinter(minter_);
        minterAllowanceCap = newCap;
        emit MinterAllowanceCapUpdated(minter_, newCap);
        return true;
    }

    function removeMinter(address minter_) external onlyMasterMinter returns (bool) {
        if (minter_ == address(0)) revert ZeroAddress();
        if (minter != minter_) revert NotMinter(minter_);
        minter = address(0);
        minterAllowance = 0;
        minterAllowanceCap = 0;
        emit MinterRemoved(minter_);
        return true;
    }

    function mint(address to, uint256 amount) external onlyMinter nonReentrant returns (bool) {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();

        uint256 remaining = minterAllowance;
        if (amount > remaining) revert MinterAllowanceExceeded(amount, remaining);

        uint256 cap = maxSupply;
        if (cap != 0) {
            uint256 supply = totalSupply();
            uint256 available = cap > supply ? cap - supply : 0;
            if (amount > available) revert MaxSupplyExceeded(amount, available);
        }

        minterAllowance = remaining - amount;

        _mint(to, amount);
        emit Mint(msg.sender, to, amount);
        return true;
    }

    /// @notice Burn tokens from the minter's own balance
    function burn(uint256 amount) external onlyMinter nonReentrant returns (bool) {
        if (amount == 0) revert ZeroAmount();
        _burn(msg.sender, amount);

        uint256 currentAllowance = minterAllowance;
        uint256 cap = minterAllowanceCap;
        uint256 newAllowance;
        if (currentAllowance >= cap) {
            newAllowance = cap;
        } else {
            uint256 remainingToCap = cap - currentAllowance;
            newAllowance = amount >= remainingToCap ? cap : currentAllowance + amount;
        }
        minterAllowance = newAllowance;

        emit Burn(msg.sender, msg.sender, amount);
        return true;
    }

    /// @notice Burn tokens from another account using allowance.
    /// @dev Does not restore the caller minter's mint allowance on this call path.
    ///      Only `burn()` mutates `minterAllowance`, so minters must be trusted not to route
    ///      approved third-party balances through themselves and then call `burn()` to replenish.
    function burnFrom(
        address account,
        uint256 amount
    )
        external
        onlyMinter
        nonReentrant
        returns (bool)
    {
        if (amount == 0) revert ZeroAmount();
        _spendAllowance(account, msg.sender, amount);
        _burn(account, amount);

        // Intentionally NOT restoring minter allowance on burnFrom itself.

        emit Burn(msg.sender, account, amount);
        return true;
    }

    /// @notice EIP-2612 permit with ERC-1271 smart wallet support
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        public
        override
        nonReentrant
    {
        bytes memory signature = abi.encodePacked(r, s, v);
        _permitWithSignature(owner, spender, value, deadline, signature);
    }

    /// @notice EIP-2612 permit that accepts a `bytes` signature for broad ERC-1271 compatibility.
    /// @dev Supports signatures that cannot be represented as `(v,r,s)` (e.g., multisig wallets).
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        bytes calldata signature
    )
        external
        nonReentrant
    {
        _permitWithSignature(owner, spender, value, deadline, signature);
    }

    function _permitWithSignature(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        bytes memory signature
    )
        internal
    {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(
            abi.encode(_PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline)
        );
        bytes32 digest = _hashTypedDataV4(structHash);

        if (!SignatureChecker.isValidSignatureNow(owner, digest, signature)) {
            revert InvalidSignature();
        }

        // Call `_approve` directly since we've already validated deadline, nonce usage, and signature.
        ERC20Upgradeable._approve(owner, spender, value, true);
    }

    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable) {
        _requireNotPaused();

        // Also block blacklisted spenders (e.g., via transferFrom).
        if (isBlacklisted[msg.sender]) revert AccountBlacklisted(msg.sender);
        if (from != address(0) && isBlacklisted[from]) revert AccountBlacklisted(from);
        if (to != address(0) && isBlacklisted[to]) revert AccountBlacklisted(to);

        super._update(from, to, value);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
