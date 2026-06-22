// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import "@openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import "@interfaces/IHourglassLockingTBTFactory.sol";
import "@interfaces/IHourglassERC20TBT.sol";
import "@interfaces/depositors/IHourglassLockDepositorBaseV3.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "transient-goodies/TransientPrimitives.sol";

/**
 * @title HourglassLockDepositorBaseV3
 * @notice Base abstract contract for the Hourglass locking depositor V3
 * @dev This contract handles token deposits before maturity and redemption after maturity
 */
abstract contract HourglassLockDepositorBaseV3 is Initializable, IHourglassLockDepositorBaseV3 {
    using SafeERC20 for IERC20;
    using TransientPrimitivesLib for taddress;
    using TransientPrimitivesLib for tuint256;

    /*//////////////////////////////////////////////////////////////////////////
                                    STORAGE
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassLockDepositorBaseV3
    uint256 public creationBlock;

    /// @inheritdoc IHourglassLockDepositorBaseV3
    uint256 public maturity;

    /// @inheritdoc IHourglassLockDepositorBaseV3
    address public factory;

    /// @notice The underlying token address that users deposit into the vault
    address internal underlying;

    /// @notice The ERC20 token representing combined principal and point positions
    address internal combinedToken;

    /// @notice The ERC20 token representing only the principal position
    address internal principalToken;

    /// @notice The ERC20 token representing only the point (yield) position
    address internal pointToken;

    /// @notice The max allowable deposits (in underlying token) for this maturity
    uint256 internal depositCap;

    /// @notice The amount of deposits (in underlying token). Incremented on deposits, decremented on redemptions.
    uint256 internal currentDeposits;

    /// @notice Transient storage for the address that holds the deposit lock
    taddress internal _tDepositLockEntrant;

    /// @notice Transient storage for the balance snapshot when the deposit lock is acquired
    /// @dev Used to track the amount of assets pushed to the contract during locked operations
    tuint256 internal _tDepositLockBalSnapshot;

    /// @notice The major version of the contract
    uint8 private constant _versionMajor = 3;

    /// @notice The minor version of the contract
    uint8 private constant _versionMinor = 0;

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    /*//////////////////////////////////////////////////////////////////////////
                                    MODIFIERS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Ensures function is only callable after maturity
    modifier onlyPostMaturity() {
        if (block.timestamp < maturity) revert NotPostMaturity();
        _;
    }

    /// @notice Ensures function is only callable before maturity
    modifier onlyPreMaturity() {
        if (block.timestamp >= maturity) revert NotPreMaturity();
        _;
    }

    /// @notice Ensures function is only callable by the factory contract
    modifier onlyFactory() {
        if (msg.sender != factory) revert CallerNotFactory();
        _;
    }

    /// @notice Ensures function is only callable by the deposit lock holder
    /// @dev The lock can be held either by an external contract or by this contract itself
    modifier onlyHasDepositLock() {
        address entrant = _tDepositLockEntrant.get();
        if (entrant == address(0)) revert DepositLockNotHeld();
        if (entrant != msg.sender && entrant != address(this)) revert DepositLockCallerNotEntrant();
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                            CONSTRUCTOR & INITIALIZER
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Disable initializers on the implementation contract (only proxy initializable)
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the depositor with token and maturity information
    /// @param _underlying The underlying token address that users will deposit
    /// @param _maturity The maturity timestamp when redemption becomes available
    /// @param _nameSuffix The suffix to append to token names
    /// @param _symbolSuffix The suffix to append to token symbols
    /// @param _receiptImpl The implementation address for receipt tokens
    function __Depositor_Init(
        address _underlying,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl
    ) internal onlyInitializing {
        if (_underlying == address(0)) revert InvalidUnderlying();
        if (_maturity <= block.timestamp) revert InvalidMaturity();
        uint8 decimals = IERC20Metadata(_underlying).decimals();
        if (decimals == 0 || decimals > 18) revert InvalidDecimals();

        underlying = _underlying;
        maturity = _maturity;
        depositCap = type(uint256).max;
        factory = msg.sender;
        creationBlock = block.number;

        combinedToken = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(combinedToken).initialize(
            string(abi.encodePacked("ct-", _nameSuffix)), string(abi.encodePacked("ct-", _symbolSuffix)), decimals
        );

        principalToken = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(principalToken).initialize(
            string(abi.encodePacked("pt-", _nameSuffix)), string(abi.encodePacked("pt-", _symbolSuffix)), decimals
        );

        pointToken = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(pointToken).initialize(
            string(abi.encodePacked("pyt-", _nameSuffix)), string(abi.encodePacked("pyt-", _symbolSuffix)), decimals
        );
    }

    /*//////////////////////////////////////////////////////////////////////////
                        USER-FACING VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function versionMajor() external pure virtual returns (uint8) {
        return _versionMajor;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function versionMinor() external pure virtual returns (uint8) {
        return _versionMinor;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getTokens() external view returns (address[] memory) {
        address[] memory tokens = new address[](3);
        tokens[0] = combinedToken;
        tokens[1] = principalToken;
        tokens[2] = pointToken;
        return tokens;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getPointToken() external view returns (address) {
        return pointToken;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getPrincipalToken() external view returns (address) {
        return principalToken;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getCombinedToken() external view returns (address) {
        return combinedToken;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getUnderlying() external view returns (address) {
        return underlying;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getDepositCap() external view returns (uint256) {
        return depositCap;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function getCurrentDeposits() external view returns (uint256) {
        return currentDeposits;
    }

    /*//////////////////////////////////////////////////////////////////////////
                    USER-FACING DEPOSIT AND REDEMPTION FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function acquireDepositLock() external {
        // When called externally, we use msg.sender as entrant
        _acquireDepositLock({selfAsEntrant: false});
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function deposit(uint256 amount, bool receiveSplit) external onlyPreMaturity {
        _safePullUnderlyingFromCaller(amount);
        _deposit(msg.sender, msg.sender, amount, receiveSplit);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function depositFor(address user, uint256 amount, bool receiveSplit) external onlyPreMaturity {
        _safePullUnderlyingFromCaller(amount);
        _deposit(user, user, amount, receiveSplit);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    /// @dev onlyPreMaturity is enforced in the _depositWithLock function
    function depositWithLock(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit)
        external
    {
        _depositWithLock(principalRecipient, pointRecipient, amount, receiveSplit);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function redeemCombined(uint256 amount) external onlyPostMaturity {
        _redeem(amount, combinedToken);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function redeemPrincipal(uint256 amount) external onlyPostMaturity {
        _redeem(amount, principalToken);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function split(uint256 amount) external onlyPreMaturity {
        IHourglassERC20TBT(combinedToken).burn(msg.sender, amount);

        IHourglassERC20TBT(principalToken).mint(msg.sender, amount);
        IHourglassERC20TBT(pointToken).mint(msg.sender, amount);
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function recombine(uint256 amount) external onlyPreMaturity {
        IHourglassERC20TBT(principalToken).burn(msg.sender, amount);
        IHourglassERC20TBT(pointToken).burn(msg.sender, amount);

        IHourglassERC20TBT(combinedToken).mint(msg.sender, amount);
    }

    /*//////////////////////////////////////////////////////////////////////////
                            INTERNAL HELPER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Safely pulls underlying tokens from caller into contract
    /// @param amount The amount of underlying tokens to pull
    /// @dev Uses balance snapshots to ensure exact amount is received
    /// @dev Will revert if token has transfer fees or similar mechanics
    function _safePullUnderlyingFromCaller(uint256 amount) internal {
        // Pull deposit token into contract from msg.sender. Use ERC20 balance snapshots to ensure
        // that we receive the amount expected. Will fail for tax on transfer tokens (by design).
        uint256 preBalance = IERC20(underlying).balanceOf(address(this));
        IERC20(underlying).safeTransferFrom(msg.sender, address(this), amount);
        if (IERC20(underlying).balanceOf(address(this)) - preBalance != amount) revert DepositPullFailed();
    }

    /// @notice Internal function to acquire the deposit lock
    /// @param selfAsEntrant Whether to set this contract as the entrant or msg.sender
    /// @dev This is used to protect against reentrancy attacks during deposits
    function _acquireDepositLock(bool selfAsEntrant) internal {
        address entrant = _tDepositLockEntrant.get();

        // 1. Ensure lock not already held
        if (entrant != address(0)) revert DepositLockAlreadyHeld();

        // 2. Acquire the lock
        if (selfAsEntrant) {
            // Since using this as entrant, no need to check if caller is a contract
            _tDepositLockEntrant.set(address(this));
        } else {
            // Ensure caller is a contract
            if (msg.sender.code.length == 0) revert DepositLockCallerNotContract();
            _tDepositLockEntrant.set(msg.sender);
        }
        _tDepositLockBalSnapshot.set(IERC20(underlying).balanceOf(address(this)));
    }

    /// @notice Internal function to process deposits with a lock
    /// @param principalRecipient The address to send the principal tokens to
    /// @param pointRecipient The address to send the point tokens to
    /// @param amount The amount of the deposit token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev Requires the deposit lock to be held, only callable before maturity
    function _depositWithLock(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit)
        internal
        onlyPreMaturity
        onlyHasDepositLock
    {
        // When acquiring the lock, we stored a snapshot of the depositor's balance of the underlying token.
        // We compare the contract's balance of the underlying now vs the snapshot and ensure the amount pushed
        // into the contract is as expected.
        if (IERC20(underlying).balanceOf(address(this)) - _tDepositLockBalSnapshot.get() != amount) {
            revert DepositPushFailed();
        }

        _deposit(principalRecipient, pointRecipient, amount, receiveSplit);

        // Release the deposit lock
        _tDepositLockEntrant.set(address(0));
        _tDepositLockBalSnapshot.set(0);
    }

    /// @notice Internal function to process deposits
    /// @param principalRecipient The address to send the principal tokens to
    /// @param pointRecipient The address to send the point tokens to
    /// @param amount The amount of the deposit token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev Only ever called after we validate that `amount` units of underlying have been transferred to the contract
    function _deposit(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit) internal {
        // Ensure the deposit is non-zero
        if (amount == 0) revert DepositZeroAmount();

        // Validate deposit doesn't put us past the cap, update the current deposits counter
        if (currentDeposits + amount > depositCap) revert DepositCapExceeded();
        currentDeposits += amount;

        // Mint receipt tokens
        if (receiveSplit) {
            IHourglassERC20TBT(principalToken).mint(principalRecipient, amount);
            IHourglassERC20TBT(pointToken).mint(pointRecipient, amount);
        } else {
            if (principalRecipient != pointRecipient) revert DepositCombinedRecipientMismatch();
            IHourglassERC20TBT(combinedToken).mint(principalRecipient, amount);
        }

        emit Deposit(address(this), principalRecipient, pointRecipient, receiveSplit, amount);
    }

    /// @notice Internal function to process token redemption
    /// @param amount The amount of tokens to redeem
    /// @param token The address of the token to redeem (combined or principal)
    /// @dev Called by the redeemCombined and redeemPrincipal functions
    function _redeem(uint256 amount, address token) internal {
        // Burn receipt token
        IHourglassERC20TBT(token).burn(msg.sender, amount);

        // Return underlying token to msg.sender
        IERC20(underlying).safeTransfer(msg.sender, amount);

        // Update current deposits counter
        currentDeposits -= amount;

        emit Redeem(msg.sender, amount);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function setMaxDeposits(uint256 _depositCap) external onlyFactory onlyPreMaturity {
        if (_depositCap < currentDeposits) revert InvalidDepositCap();
        depositCap = _depositCap;
    }

    /// @inheritdoc IHourglassLockDepositorBaseV3
    function recoverToken(address token, address recipient) external onlyFactory {
        if (token == address(0)) {
            payable(recipient).transfer(address(this).balance);
        } else if (token == underlying) {
            // Only allows for recovering excess beyond current deposits
            IERC20(token).safeTransfer(recipient, IERC20(token).balanceOf(address(this)) - currentDeposits);
        } else {
            IERC20(token).safeTransfer(recipient, IERC20(token).balanceOf(address(this)));
        }
    }
}
