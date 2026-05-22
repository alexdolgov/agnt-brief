// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IReceiveApproval.sol";

contract Portal is Ownable2StepUpgradeable, IReceiveApproval {
    using SafeERC20 for IERC20;

    /// @notice Supported token ability defines what can be done with
    ///         a given token. Some tokens can be deposited but can not be locked.
    enum TokenAbility {
        None,
        Deposit,
        DepositAndLock
    }

    /// @notice Supported token struct to pair a token address with its ability
    /// @dev This an auxiliary struct is used to initialize the contract with
    ///      the supported tokens and for governance to add new supported tokens.
    struct SupportedToken {
        address token;
        TokenAbility tokenAbility;
    }

    /// @notice DepositInfo keeps track of the deposit balance and unlock time.
    ///         Each deposit is tracked separately and associated with a specific
    ///         token. Some tokens can be deposited but can not be locked - in
    ///         that case the unlockAt is the block timestamp of when the deposit
    ///         was created. The same is true for tokens that can be locked but
    ///         the depositor decided not to lock them.
    struct DepositInfo {
        uint96 balance;
        uint32 unlockAt;
    }

    /// @notice Mapping of the details of all the deposited funds:
    ///         depositor address -> token address -> deposit id -> DepositInfo
    mapping(address => mapping(address => mapping(uint256 => DepositInfo)))
        public deposits;

    /// @notice The number of deposits created. Includes the deposits that
    //          were fully withdrawn. This is also the identifier of the next
    //          deposit to be created.
    uint256 public depositCount;

    /// @notice List of tokens enabled for deposit or for deposit and lock.
    mapping(address => TokenAbility) public tokenAbility;

    /// @notice Minimum time a deposit can be locked.
    uint32 public minLockPeriod;

    /// @notice Maximum time a deposit can be locked.
    uint32 public maxLockPeriod;

    event Deposited(
        address indexed depositor,
        address indexed token,
        uint256 indexed depositId,
        uint256 amount
    );

    event Withdrawn(
        address indexed depositor,
        address indexed token,
        uint256 indexed depositId,
        uint256 amount
    );

    event Locked(
        address indexed depositor,
        address indexed token,
        uint256 indexed depositId,
        uint32 unlockAt,
        uint32 lockPeriod
    );

    event SupportedTokenAdded(address indexed token, TokenAbility tokenAbility);

    event MaxLockPeriodUpdated(uint32 maxLockPeriod);

    event MinLockPeriodUpdated(uint32 minLockPeriod);

    error IncorrectTokenAddress(address token);

    error IncorrectTokenAbility(TokenAbility ability);

    error IncorrectDepositor(address depositor);

    error IncorrectAmount(uint256 amount);

    error InsufficientDepositAmount(uint256 amount, uint256 depositBalance);

    error TokenNotSupported(address token);

    error TokenAlreadySupported(address token, TokenAbility tokenAbility);

    error InsufficientTokenAbility(address token, TokenAbility tokenAbility);

    error LockPeriodOutOfRange(uint32 lockPeriod);

    error IncorrectLockPeriod(uint256 lockPeriod);

    error LockPeriodTooShort(
        uint32 lockPeriod,
        uint32 newUnlockAt,
        uint32 existingUnlockAt
    );

    error DepositLocked(uint32 unlockAt);

    error DepositNotFound();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the contract with the supported tokens and their
    ///         abilities.
    /// @dev We are using OpenZeppelin's initializer pattern to initialize
    ///      the contract. This function is called only once during the contract
    ///      deployment.
    /// @param supportedTokens List of supported tokens and their abilities
    function initialize(
        SupportedToken[] memory supportedTokens
    ) external initializer {
        __Ownable_init(msg.sender);

        minLockPeriod = 4 weeks;
        maxLockPeriod = 39 weeks;
        depositCount = 0;

        for (uint256 i = 0; i < supportedTokens.length; i++) {
            address token = supportedTokens[i].token;
            TokenAbility ability = supportedTokens[i].tokenAbility;

            if (token == address(0)) {
                revert IncorrectTokenAddress(token);
            }

            tokenAbility[token] = ability;
        }
    }

    /// @notice Add a new supported token and define its ability.
    /// @dev Only the owner can add a new supported token.
    /// @param supportedToken Supported token and its ability
    function addSupportedToken(
        SupportedToken calldata supportedToken
    ) external onlyOwner {
        address token = supportedToken.token;
        TokenAbility ability = supportedToken.tokenAbility;

        if (token == address(0)) {
            revert IncorrectTokenAddress(token);
        }

        if (ability == TokenAbility.None) {
            revert IncorrectTokenAbility(ability);
        }

        if (tokenAbility[token] != TokenAbility.None) {
            revert TokenAlreadySupported(token, tokenAbility[token]);
        }

        tokenAbility[token] = ability;

        emit SupportedTokenAdded(token, ability);
    }

    /// @notice Set the minimum lock period for deposits.
    /// @dev Only the owner can update the minimum lock period. The new value
    ///      must be normalized to weeks, non-zero, and not higher than the
    ///      maximum lock period.
    /// @param _minLockPeriod new minimum lock period
    function setMinLockPeriod(uint32 _minLockPeriod) external onlyOwner {
        uint32 normalizedLockPeriod = _normalizeLockPeriod(_minLockPeriod);

        if (
            _minLockPeriod != normalizedLockPeriod ||
            normalizedLockPeriod == 0 ||
            _minLockPeriod > maxLockPeriod
        ) {
            revert IncorrectLockPeriod(_minLockPeriod);
        }

        minLockPeriod = _minLockPeriod;
        emit MinLockPeriodUpdated(_minLockPeriod);
    }

    /// @notice Set the maximum lock period for deposits. Maximum lock
    ///      period is used as a limit to prevent users from accidentally
    ///      locking their deposits for too long.
    /// @dev Only the owner can update the maximum lock period. The new value
    ///      must be normalized to weeks and not lower than the minimum lock
    ///      period.
    /// @param _maxLockPeriod new maximum lock period
    function setMaxLockPeriod(uint32 _maxLockPeriod) external onlyOwner {
        if (
            _maxLockPeriod != _normalizeLockPeriod(_maxLockPeriod) ||
            _maxLockPeriod < minLockPeriod
        ) {
            revert IncorrectLockPeriod(_maxLockPeriod);
        }

        maxLockPeriod = _maxLockPeriod;
        emit MaxLockPeriodUpdated(_maxLockPeriod);
    }

    /// @notice Get the balance and unlock time of a given deposit.
    /// @param depositor depositor address
    /// @param token token address to get the balance
    /// @param depositId id of the deposit
    function getDeposit(
        address depositor,
        address token,
        uint256 depositId
    ) external view returns (DepositInfo memory) {
        return deposits[depositor][token][depositId];
    }

    /// @notice Withdraw deposited tokens.
    ///         Deposited lockable tokens can be withdrawn at any time if
    ///         there is no lock set on the deposit or the lock period has passed.
    ///         There is no way to withdraw locked deposit. Tokens that are not
    ///         lockable can be withdrawn at any time. Deposit can be withdrawn
    ///         partially.
    /// @param token deposited token address
    /// @param depositId id of the deposit
    /// @param amount amount of the token to be withdrawn from the deposit
    function withdraw(
        address token,
        uint256 depositId,
        uint96 amount
    ) external {
        TokenAbility ability = tokenAbility[token];

        if (amount == 0) {
            revert IncorrectAmount(amount);
        }

        if (ability == TokenAbility.None) {
            revert TokenNotSupported(token);
        }

        DepositInfo memory selectedDeposit = deposits[msg.sender][token][
            depositId
        ];

        if (
            ability == TokenAbility.DepositAndLock &&
            // solhint-disable-next-line not-rely-on-time
            block.timestamp < selectedDeposit.unlockAt
        ) {
            revert DepositLocked(selectedDeposit.unlockAt);
        }

        uint96 depositedAmount = selectedDeposit.balance;

        if (depositedAmount == 0) {
            revert DepositNotFound();
        }

        if (amount > depositedAmount) {
            revert InsufficientDepositAmount(amount, depositedAmount);
        }

        emit Withdrawn(msg.sender, token, depositId, amount);

        if (amount == depositedAmount) {
            delete deposits[msg.sender][token][depositId];
        } else {
            deposits[msg.sender][token][depositId].balance =
                depositedAmount -
                amount;
        }

        IERC20(token).safeTransfer(msg.sender, amount);
    }

    /// @notice Receive approval from a token contract and deposit the tokens in
    ///         one transaction. If the the token is lockable and lock period is
    ///         greater than 0, the deposit will be locked for the given period.
    /// @dev This function is called by the token following the `approveAndCall`
    ///      pattern.
    //       Encoded lock period is counted in seconds, will be normalized to
    ///      weeks. If non-zero, it must not be shorter than the minimum lock
    ///      period and must not be longer than the maximum lock period. To not
    ///      lock the deposit, the lock period must be 0.
    /// @param from address which approved and sent the tokens
    /// @param amount amount of tokens sent
    /// @param token address of the token contract
    /// @param data encoded lock period
    function receiveApproval(
        address from,
        uint256 amount,
        address token,
        bytes calldata data
    ) external override {
        if (token != msg.sender) {
            revert IncorrectTokenAddress(token);
        }
        if (amount > type(uint96).max) {
            revert IncorrectAmount(amount);
        }

        uint32 lockPeriod = abi.decode(data, (uint32));

        _depositFor(from, from, token, uint96(amount), lockPeriod);
    }

    /// @notice Deposit and optionally lock tokens for the given period.
    /// @dev Lock period will be normalized to weeks. If non-zero, it must not
    ///      be shorter than the minimum lock period and must not be longer than
    ///      the maximum lock period.
    /// @param token token address to deposit
    /// @param amount amount of tokens to deposit
    /// @param lockPeriod lock period in seconds, 0 to not lock the deposit
    function deposit(address token, uint96 amount, uint32 lockPeriod) external {
        _depositFor(msg.sender, msg.sender, token, amount, lockPeriod);
    }

    /// @notice Deposit and optionally lock tokens to the contract on behalf of
    ///         someone else.
    /// @dev Lock period will be normalized to weeks. If non-zero, it must not
    ///      be shorter than the minimum lock period and must not be longer than
    ///      the maximum lock period.
    /// @param depositOwner address that will be able to withdraw the deposit
    /// @param token token address to deposit
    /// @param amount amount of tokens to deposit
    /// @param lockPeriod lock period in seconds, 0 to not lock the deposit
    function depositFor(
        address depositOwner,
        address token,
        uint96 amount,
        uint32 lockPeriod
    ) external {
        _depositFor(depositOwner, msg.sender, token, amount, lockPeriod);
    }

    /// @notice Lock existing deposit for a given period. This function can be
    ///         used to lock a deposit that was not locked when it was created or
    ///         to extend the lock period of an already locked deposit.
    /// @param token address of the deposited token
    /// @param depositId id of the deposit
    /// @param lockPeriod new lock period in seconds
    function lock(
        address token,
        uint256 depositId,
        uint32 lockPeriod
    ) external {
        DepositInfo storage depositInfo = deposits[msg.sender][token][
            depositId
        ];

        if (depositInfo.balance == 0) {
            revert DepositNotFound();
        }

        TokenAbility ability = tokenAbility[token];
        if (ability != TokenAbility.DepositAndLock) {
            revert InsufficientTokenAbility(token, ability);
        }

        uint32 existingUnlockAt = depositInfo.unlockAt;
        uint32 newUnlockAt = _calculateUnlockTime(
            msg.sender,
            token,
            depositId,
            lockPeriod
        );
        if (newUnlockAt <= existingUnlockAt) {
            revert LockPeriodTooShort(
                lockPeriod,
                newUnlockAt,
                existingUnlockAt
            );
        }

        depositInfo.unlockAt = newUnlockAt;
    }

    /// @notice Internal deposit function to deposit tokens on behalf of a given
    ///         address - sender or someone else. If the lock period passed as
    ///         a parameter is non-zero, the function will lock the deposit.
    /// @param depositOwner address that will be able to withdraw the deposit
    /// @param token token address to deposit
    /// @param amount amount of tokens to deposit
    /// @param lockPeriod lock period in seconds, 0 to not lock the deposit
    function _depositFor(
        address depositOwner,
        address depositFunder,
        address token,
        uint96 amount,
        uint32 lockPeriod
    ) internal {
        TokenAbility ability = tokenAbility[token];
        if (ability == TokenAbility.None) {
            revert TokenNotSupported(token);
        }
        if (lockPeriod > 0 && ability == TokenAbility.Deposit) {
            revert InsufficientTokenAbility(token, ability);
        }

        if (depositOwner == address(0)) {
            revert IncorrectDepositor(depositOwner);
        }

        if (amount == 0) {
            revert IncorrectAmount(amount);
        }

        depositCount++;

        uint256 depositId = depositCount;

        emit Deposited(depositOwner, token, depositId, amount);

        deposits[depositOwner][token][depositId] = DepositInfo({
            balance: amount,
            // solhint-disable-next-line not-rely-on-time
            unlockAt: _calculateUnlockTime(
                depositOwner,
                token,
                depositId,
                lockPeriod
            )
        });

        IERC20(token).safeTransferFrom(depositFunder, address(this), amount);
    }

    /// @notice Calculates the unlock time normalizing the lock time value and
    ///         making sure it is in the allowed range. Returns the timestamp at
    ///         which the deposit can be unlocked.
    /// @dev This function DOES NOT check if the deposit exists and if the
    ///      existing deposit already has a lock time. Please validate it before
    ///      calling this function.
    /// @param depositor depositor address
    /// @param token token of the deposit that will be locked
    /// @param depositId id of the deposit that will be locked
    /// @param lockPeriod lock period in seconds
    function _calculateUnlockTime(
        address depositor,
        address token,
        uint depositId,
        uint32 lockPeriod
    ) internal returns (uint32) {
        // Short-circuit if there is no intention to lock. There is no need to
        // check the minimum/maximum lock time or normalize the lock period.
        if (lockPeriod == 0) {
            // solhint-disable-next-line not-rely-on-time
            return uint32(block.timestamp);
        }

        uint32 normalizedLockPeriod = _normalizeLockPeriod(lockPeriod);

        if (
            normalizedLockPeriod == 0 ||
            normalizedLockPeriod < minLockPeriod ||
            normalizedLockPeriod > maxLockPeriod
        ) {
            revert LockPeriodOutOfRange(lockPeriod);
        }

        // solhint-disable-next-line not-rely-on-time
        uint32 unlockAt = uint32(block.timestamp) + normalizedLockPeriod;

        // It is gas-cheaper to pass the required parameters and emit the event
        // here instead of checking the result and emit the event in the calling
        // function. Keep in mind internal functions are inlined.
        emit Locked(
            depositor,
            token,
            depositId,
            unlockAt,
            normalizedLockPeriod
        );

        return unlockAt;
    }

    /// @notice Normalizes the lock period to weeks. Will round down if not
    ///         normalized.
    /// @param lockPeriod the lock period to be normalized
    function _normalizeLockPeriod(
        uint32 lockPeriod
    ) internal pure returns (uint32) {
        // slither-disable-next-line divide-before-multiply
        return (lockPeriod / 1 weeks) * 1 weeks;
    }
}
