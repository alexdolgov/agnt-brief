// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { AccessManagedUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC1967Proxy } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import { NoncesUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import { SignatureChecker } from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import { UpgradeableClock } from "./UpgradeableClock.sol";
import { IStakeToken } from "./IStakeToken.sol";
import { IUUPSUpgradeableMinimal } from "./IUUPSUpgradeableMinimal.sol";

/*
 * @title Stake
 * @dev The Stake contract allows users to stake tokens.
 */
contract Stake is
    Initializable,
    AccessManagedUpgradeable,
    EIP712Upgradeable,
    NoncesUpgradeable,
    UpgradeableClock,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;
    using SignatureChecker for address;
    // ERRORS

    error InvalidWithdrawSignature(address owner, bytes signature);
    error NotEnoughTokens(IERC20 token, address owner, uint amount);
    error UnstakeLocked(address owner, uint64 unlockAt);
    error ZeroInitialAuthority();
    error ZeroStakeTokenImplementation();
    error ExpiredSignature(uint deadline);
    error InvalidSpender(address msgSender, address spender);

    // EVENTS
    event Deposit(IERC20 indexed token, address indexed user, uint amount);
    event Withdrawn(IERC20 indexed token, address indexed owner, address indexed to, address spender, uint amount);
    event StakeTokenDeployed(address indexed stakeToken);
    event LockupPeriodUpdated(uint32 oldPeriod, uint32 newPeriod);
    event StakeTokenUpgraded(address indexed newImplementation);

    /// @custom:storage-location erc7201:turtle.storage.Stake
    struct StakeStorage {
        IStakeToken stakeToken;
        IERC20 underlying;
        address implementation;
        uint32 lockupPeriod;
        mapping(address => uint64) unlockAt;
    }

    /// keccak256(abi.encode(uint256(keccak256("turtle.storage.Stake")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant StorageLocation = 0x59945893c69ba6c3d538c0219425f268a2af3b55a8269ad7ac278240b4350500;

    bytes32 private constant WITHDRAW_TYPEHASH =
        keccak256("Withdraw(address owner,address spender,address to,uint256 amount,uint256 nonce,uint256 deadline)");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the Stake contract, setting its core parameters and deploying the associated StakeToken proxy.
     * @dev This is the initializer for the upgradeable contract. It sets the initial authority for access control,
     * configures EIP-712 for signatures, stores the underlying asset and stake token implementation, sets the
     * global lockup period, and deploys a new ERC1967 proxy for the StakeToken.
     * This function can only be called once on the proxy.
     * @param initialAuthority The address granted the authority role for access management.
     * @param initialImplementation The address of the `StakeToken` implementation contract to be used for the proxy.
     * @param _underlying The ERC20 token that users will deposit to receive stake tokens.
     * @param lockupPeriod The global time in seconds that a user's deposit is locked before they can withdraw.
     * @custom:revert ZeroInitialAuthority If `initialAuthority` is the zero address.
     * @custom:revert ZeroStakeTokenImplementation If `initialImplementation` is the zero address.
     */
    function initialize(
        address initialAuthority,
        address initialImplementation,
        IERC20 _underlying,
        uint32 lockupPeriod
    ) public initializer {
        // solhint-disable gas-custom-errors
        if (initialAuthority == address(0)) {
            revert ZeroInitialAuthority();
        }
        if (initialImplementation == address(0)) {
            revert ZeroStakeTokenImplementation();
        }

        __Nonces_init();
        __EIP712_init("Turtle Stake", "v1");
        __AccessManaged_init(initialAuthority);
        __Clock_init();
        __UUPSUpgradeable_init();

        StakeStorage storage $ = _getStorage();

        $.implementation = initialImplementation;
        $.underlying = _underlying;
        $.lockupPeriod = lockupPeriod;

        // deploy the stake token
        _deployStakeTokenProxy(initialImplementation);
    }

    /**
     * @notice Deposits a specified amount of the underlying token as a stake.
     * @dev Transfers tokens from the user to the contract, mints stake tokens, and updates the user's unlock time if a lockup period is set.
     * Emits a {Deposit} event upon successful deposit.
     * @param amount The amount of the underlying token to stake.
     */
    function deposit(
        uint amount
    ) public {
        address user = msg.sender;
        StakeStorage storage $ = _getStorage();
        IERC20 token = $.underlying;
        token.safeTransferFrom(user, address(this), amount);

        $.stakeToken.mint(user, amount);

        uint32 period = $.lockupPeriod;
        if (period > 0) {
            uint64 newUnlock = uint64(_time() + period);
            uint64 prevUnlock = $.unlockAt[user];
            if (newUnlock > prevUnlock) {
                $.unlockAt[user] = newUnlock;
            }
        }

        emit Deposit(token, user, amount);
    }

    /*
     * @dev Withdraws a stake.
     */
    function withdraw(
        uint amount
    ) external {
        withdraw(msg.sender, amount);
    }

    /*
     * @dev Withdraws a stake.
     * @param to The address of the user the withdrawal is for.
     */
    function withdraw(address to, uint amount) public {
        IERC20 token = _getStorage().underlying;
        _withdraw(token, msg.sender, msg.sender, to, amount);
    }

    /*
     * @dev Withdraws a stake.
     * @param to The address of the user the withdrawal is for.
     * @param amount The amount of the stake.
     * @param deadline The deadline for the withdrawal.
     * @param v The v of the signature.
     * @param r The r of the signature.
     * @param s The s of the signature.
     */
    function withdraw(
        address owner,
        address spender,
        address to,
        uint amount,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        withdraw(owner, spender, to, amount, deadline, abi.encodePacked(r, s, v));
    }

    /*
     * @dev Withdraws a stake.
     * @param owner The address of the owner of the tokens.
     * @param spender The address of the spender of the tokens.
     * @param to The address of the user the withdrawal is for.
     * @param amount The amount of the stake.
     * @param deadline The deadline for the withdrawal.
     * @param signature The signature of the withdrawal.
     */
    function withdraw(
        address owner,
        address spender,
        address to,
        uint amount,
        uint deadline,
        bytes memory signature
    ) public {
        IERC20 token = _getStorage().underlying;

        // validate deadline
        if (_time() > deadline) {
            revert ExpiredSignature(deadline);
        }

        bytes32 structHash =
            keccak256(abi.encode(WITHDRAW_TYPEHASH, owner, spender, to, amount, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        if (!owner.isValidSignatureNow(hash, signature)) {
            revert InvalidWithdrawSignature(owner, signature);
        }

        _withdraw(token, owner, spender, to, amount);
    }

    /// @notice Upgrades the stake token contract to a new implementation.
    /// @dev Uses the UUPS proxy pattern to upgrade the stake token contract.
    ///      Calls `upgradeToAndCall` on the proxy with the new implementation and initialization data.
    ///      Updates the stored implementation address and emits a `StakeTokenUpgraded` event.
    /// @param newImplementation The address of the new stake token implementation contract.
    /// @param initData Initialization data to be passed to the new implementation.
    /// @custom:restricted Only callable by accounts with the restricted role.
    /// @custom:revert ZeroStakeTokenImplementation If the new implementation address is zero.
    function upgradeStakeToken(address newImplementation, bytes calldata initData) external restricted {
        if (newImplementation == address(0)) {
            revert ZeroStakeTokenImplementation();
        }

        StakeStorage storage $ = _getStorage();
        address proxy = address($.stakeToken);

        IUUPSUpgradeableMinimal(proxy).upgradeToAndCall(newImplementation, initData);

        $.implementation = newImplementation;

        emit StakeTokenUpgraded(newImplementation);
    }

    /* solhint-disable no-empty-blocks */
    /*
     * @inheritdoc UUPSUpgradeable
     */
    function _authorizeUpgrade(
        address
    ) internal override restricted { }

    /**
     * @dev Internal logic to perform a withdrawal. It checks for unstake locks,
     * burns the corresponding amount of stake tokens from the owner, and transfers
     * the underlying tokens to the recipient.
     * @notice This is the core implementation for all `withdraw` functions.
     * @param token The underlying token being withdrawn.
     * @param owner The staker's address from which stake tokens are burned.
     * @param spender The address that initiated the withdrawal transaction.
     * @param to The address that will receive the underlying tokens.
     * @param amount The amount of underlying tokens to withdraw.
     * @custom:revert UnstakeLocked If the owner's unstake cooldown period has not yet passed.
     * @custom:revert NotEnoughTokens If the owner does not have enough stake tokens to cover the withdrawal.
     */
    function _withdraw(IERC20 token, address owner, address spender, address to, uint amount) private {
        // check spender is msg.sender
        if (msg.sender != spender) {
            revert InvalidSpender(msg.sender, spender);
        }

        StakeStorage storage $ = _getStorage();
        IStakeToken stake = $.stakeToken;

        uint64 unlockTs = $.unlockAt[owner];
        if (unlockTs != 0 && _time() < unlockTs) {
            revert UnstakeLocked(owner, unlockTs);
        }

        if (IERC20(address(stake)).balanceOf(owner) < amount) {
            revert NotEnoughTokens(token, owner, amount);
        }

        stake.burn(owner, amount);
        token.safeTransfer(to, amount);

        emit Withdrawn(token, owner, to, spender, amount);
    }

    /*
     * @dev Sets the supported token.
     * @param token The underlying token.
     * @param supported The supported status of the token.
     */
    function _deployStakeTokenProxy(
        address _implementation
    ) private {
        StakeStorage storage $ = _getStorage();
        ERC1967Proxy proxy =
            new ERC1967Proxy(_implementation, abi.encodeCall(IStakeToken.initialize, (address($.underlying))));

        $.stakeToken = IStakeToken(address(proxy));
        emit StakeTokenDeployed(address(proxy));
    }

    /*
     * @dev Returns the contract storage in the form of StakeStorage.
     * @return The contract storage.
     */
    function _getStorage() private pure returns (StakeStorage storage $) {
        assembly {
            $.slot := StorageLocation
        }
    }

    /// @notice Set global lockup period (seconds). 0 disables the lockup.
    function setLockupPeriod(
        uint32 period
    ) external restricted {
        StakeStorage storage $ = _getStorage();
        uint32 old = $.lockupPeriod;
        $.lockupPeriod = period;
        emit LockupPeriodUpdated(old, period);
    }

    /// @notice Current global lockup period in seconds.
    function getLockupPeriod() external view returns (uint32) {
        return _getStorage().lockupPeriod;
    }

    /// @notice Timestamp when an account can next withdraw without lock (0 if no lock).
    function unlockTimeOf(
        address account
    ) external view returns (uint64) {
        return _getStorage().unlockAt[account];
    }

    /**
     * @notice Returns the underlying ERC20 token that users deposit.
     * @return token The underlying ERC20 token.
     */
    function underlying() external view returns (IERC20 token) {
        token = _getStorage().underlying;
    }

    /**
     * @notice Returns the stake token proxy that represents staked balances.
     * @dev This proxy implements IStakeToken and is also an ERC20.
     * @return stake The IStakeToken proxy.
     */
    function stakeToken() external view returns (IStakeToken stake) {
        stake = _getStorage().stakeToken;
    }

    /**
     * @notice Returns the implementation used to deploy the stake token proxy.
     * @dev This affects new deployments; existing proxies can be upgraded separately.
     * @return impl The current IStakeToken implementation address.
     */
    function stakeTokenImplementation() external view returns (address impl) {
        impl = _getStorage().implementation;
    }

    /**
     * @notice Returns whether an account is currently locked for unstake and the unlock timestamp.
     * @dev Lock is enforced until the returned timestamp; returns false if no lock is set.
     * @param account The account to check.
     * @return locked True if the account cannot withdraw yet.
     * @return unlockAt The timestamp when the account can withdraw (0 if no lock).
     */
    function isUnstakeLocked(
        address account
    ) external returns (bool locked, uint64 unlockAt) {
        unlockAt = _getStorage().unlockAt[account];
        locked = (unlockAt != 0 && _time() < unlockAt);
    }
}
