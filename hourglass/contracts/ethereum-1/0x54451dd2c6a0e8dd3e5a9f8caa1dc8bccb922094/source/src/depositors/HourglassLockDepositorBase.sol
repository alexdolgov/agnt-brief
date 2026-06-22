// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import "@openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import "@interfaces/IHourglassLockingTBTFactory.sol";
import "@interfaces/IHourglassERC20TBT.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "transient-goodies/TransientPrimitives.sol";

/**
 *  @notice Each timelocked token will be responsible for managing it's own types of deposits & withdrawals.
 *      This may include different numbers of receipt tokens.
 */
abstract contract HourglassLockDepositorBase is Initializable {
    using SafeERC20 for IERC20;
    using TransientPrimitivesLib for taddress;
    using TransientPrimitivesLib for tuint256;

    /// This contract will be the implementation added to the TBT proxy where users can deposit an ERC20 token for this contract's defined duration, receiving this contract (as an ERC20) in return.
    /// Each new maturity will be represented by a newly cloned version of this contract.
    /// The user will be able to withdraw the underlying ERC20 token after the maturity duration has passed, plus any extra assets received.

    /// @notice Address of the factory that created this contract
    address public factory;
    /// @notice The timestamp of the maturity
    uint256 public maturity;
    /// @notice The block number of the contract creation
    uint256 public creationBlock;

    address internal underlying;
    address internal combinedToken;
    address internal principalToken;
    address internal yieldToken;

    /// @notice The max allowable deposits (in underlying token/decimals) for this maturity
    uint256 internal depositCap;
    /// @notice The amount of finalized deposits (in underlying token/decimals)
    uint256 internal currentDeposits;

    taddress internal _tEntrant;
    tuint256 internal _tAmount;

    modifier onlyMatured() {
        if (block.timestamp < maturity) revert PrematureRedeem();
        _;
    }

    modifier notMatured() {
        if (block.timestamp > maturity) revert Matured();
        _;
    }

    modifier onlyFactory() {
        if (msg.sender != factory) revert CallerNotFactory();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the depositor
    /// @param _underlying The underlying token address
    /// @param _maturity The maturity timestamp
    /// @param _nameSuffix The suffix to append to the name
    /// @param _symbolSuffix The suffix to append to the symbol
    /// @param _receiptImpl The receipt implementation address
    /// @param _decimals The number of decimals of the underlying
    function __Depositor_Init(
        address _underlying,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        uint256 _decimals
    ) internal onlyInitializing {
        uint256 decimals = IERC20Metadata(_underlying).decimals();
        if (_underlying == address(0)) revert InvalidUnderlying();
        if (_maturity <= block.timestamp) revert InvalidMaturity();
        if (decimals != _decimals || _decimals == 0 || _decimals > 18) revert InvalidDecimals();
        underlying = _underlying;
        maturity = _maturity;
        depositCap = type(uint256).max;
        factory = msg.sender;
        creationBlock = block.number;

        // forgefmt: disable-start
        // clone & initialize the combined token
        address tkn1 = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(tkn1).initialize(
            string(abi.encodePacked("ct-", _nameSuffix)), 
            string(abi.encodePacked("ct-", _symbolSuffix)), 
            uint8(_decimals)
        );
        combinedToken = tkn1;

        // clone & initialize the principal token
        address tkn2 = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(tkn2).initialize(
            string(abi.encodePacked("pt-", _nameSuffix)), 
            string(abi.encodePacked("pt-", _symbolSuffix)), 
            uint8(_decimals)
        );
        principalToken = tkn2;

        // clone & initialize the yield token
        address tkn3 = IHourglassLockingTBTFactory(msg.sender).cloneReceipt(_receiptImpl);
        IHourglassERC20TBT(tkn3).initialize(
            string(abi.encodePacked("pyt-", _nameSuffix)), 
            string(abi.encodePacked("pyt-", _symbolSuffix)), 
            uint8(_decimals)
        );
        yieldToken = tkn3;
        // forgefmt: disable-end
        emit NewMaturityCreated(tkn1, tkn2, tkn3);
    }

    /// @notice Enter the contract, locking the sender as the entrant, callable by contracts only
    /// @param amountToBeDeposited The amount of the deposit token being pushed in after entering
    function enter(uint256 amountToBeDeposited) external virtual {
        if (_tEntrant.get() != address(0)) revert AlreadyEntered();
        if (msg.sender.code.length == 0) revert NoCode();
        _tEntrant.set(msg.sender);
        _tAmount.set(amountToBeDeposited);
    }

    ////////// DEPOSITS & WITHDRAWALS //////////

    /// @notice Deposit, sending the minted assets to `msg.sender`
    /// @param amount The amount of the deposit token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    function deposit(uint256 amount, bool receiveSplit) external virtual notMatured {
        _deposit(msg.sender, amount, receiveSplit);
    }

    /// @notice Deposit, sending the minted assets to `user`
    /// @param user The address to send the minted assets to
    /// @param amount The amount of the deposit token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev This doesn't pull funds from the user, but from the caller & therefor doesn't require permissioned access
    function depositFor(address user, uint256 amount, bool receiveSplit) external virtual notMatured {
        _deposit(user, amount, receiveSplit);
    }

    /// @notice Allows a deposit to occur where the principal & yield tokens are sent to different addresses
    /// @param principalRecipient The address to send the principal tokens to
    /// @param pointRecipient The address to send the yield tokens to
    /// @param amount The amount of the deposit token to deposit
    function depositTo(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit)
        external
        virtual
        notMatured
    {
        // since funds are pushed in prior to this being called, lock the contract
        address entrant = _tEntrant.get();
        uint256 amountAvailableForDeposit = _tAmount.get();
        if (entrant == address(0)) revert NotEntered();
        if (msg.sender != entrant) revert CallerNotEntrant();
        if (amountAvailableForDeposit == 0) revert InsufficientFunds();
        if (amount != amountAvailableForDeposit) revert AmountMismatch();
        // un-enter
        _tEntrant.set(address(0));
        _tAmount.set(0);

        // Check that the funds were sent to this contract prior to this call
        uint256 currentBalance = IERC20(underlying).balanceOf(address(this));
        if (currentBalance - currentDeposits < amount) revert InsufficientAssetSupplied();

        // check that deposit cap has not been reached
        if (currentDeposits + amount > depositCap) revert DepositCapExceeded();

        // increment the current deposits
        currentDeposits += amount;

        if (!receiveSplit) {
            // if not receiving split tokens, check that the principal & point recipients are the same
            // this isn't minting either token, but is minting the combined token
            if (principalRecipient != pointRecipient) revert RecipientMismatch();
            // mint the combined token
            IHourglassERC20TBT(combinedToken).mint(principalRecipient, amount);
        } else {
            // mint both the principal and yield tokens
            IHourglassERC20TBT(principalToken).mint(principalRecipient, amount);
            IHourglassERC20TBT(yieldToken).mint(pointRecipient, amount);
        }

        emit DepositedTo(principalRecipient, pointRecipient, amount);
    }

    function _deposit(address user, uint256 amount, bool receiveSplit) internal virtual {
        // amount should not be zero
        if (amount == 0) revert InsufficientFunds();
        // check that deposit cap has not been reached
        if (currentDeposits + amount > depositCap) revert DepositCapExceeded();
        // increment the current deposits
        currentDeposits += amount;

        // pull the deposit token in from the caller, not the user
        IERC20(underlying).safeTransferFrom(msg.sender, address(this), amount);

        if (receiveSplit) {
            // mint both the principal and yield tokens
            IHourglassERC20TBT(principalToken).mint(user, amount);
            IHourglassERC20TBT(yieldToken).mint(user, amount);
        } else {
            // otherwise just mint the combined token, which could be this contract.
            IHourglassERC20TBT(combinedToken).mint(user, amount);
        }

        emit Deposit(user, amount);
    }

    /// @notice Redeem the combined token for the underlying & return the yield token to caller
    /// @param amount The amount of combined tokens to redeem
    /// @dev This will only be callable after the maturity has passed
    function redeem(uint256 amount) external virtual onlyMatured {
        _redemption(amount, combinedToken);
        IHourglassERC20TBT(yieldToken).mint(msg.sender, amount);
    }

    /// @notice Redeem the principal-only token for the underlying
    /// @param amount The amount of principal tokens to redeem
    /// @dev This will only be callable after the maturity has passed
    function redeemPrincipal(uint256 amount) external virtual onlyMatured {
        _redemption(amount, principalToken);
    }

    function _redemption(uint256 amount, address subToken) internal virtual {
        // note deposit cap only relevant while not matured, so no need to decrease the tracker here
        // ensure that the user has enough funds to redeem
        IHourglassERC20TBT(subToken).burn(msg.sender, amount);

        // transfer funds to user
        IERC20(underlying).safeTransfer(msg.sender, amount);

        emit Redeem(msg.sender, amount);
    }

    /// @notice Split the combined token into the principal & yield tokens
    /// @dev only callable before the maturity has passed
    function split(uint256 amount) external virtual notMatured {
        // burn the combined token
        IHourglassERC20TBT(combinedToken).burn(msg.sender, amount);

        // mint both the yield & principal tokens
        IHourglassERC20TBT(principalToken).mint(msg.sender, amount);
        IHourglassERC20TBT(yieldToken).mint(msg.sender, amount);

        emit Split(msg.sender, amount);
    }

    /// @notice Recombine the principal & yield tokens into the combined token
    /// @notice Must have at least `amount` of both the principal & yield tokens
    /// @dev only callable before the maturity has passed
    function recombine(uint256 amount) external virtual notMatured {
        // burn both the yield & principal tokens
        IHourglassERC20TBT(principalToken).burn(msg.sender, amount);
        IHourglassERC20TBT(yieldToken).burn(msg.sender, amount);

        // mint the combined token
        IHourglassERC20TBT(combinedToken).mint(msg.sender, amount);

        emit Recombine(msg.sender, amount);
    }

    ////////// GETTERS //////////

    /// @notice Returns the addresses of the TBT reciepts for this maturity
    /// @return tokens The addresses of the TBT reciepts for this maturity as an array
    function getTokens() external view returns (address[] memory) {
        address[] memory tokens = new address[](3);
        tokens[0] = combinedToken;
        tokens[1] = principalToken;
        tokens[2] = yieldToken;
        return tokens;
    }

    /// @notice Returns the address of the point token
    function getPointToken() external view returns (address) {
        return yieldToken;
    }

    /// @notice Returns the address of the principal token
    function getPrincipalToken() external view returns (address) {
        return principalToken;
    }

    /// @notice Returns the address of the deposit token
    function getUnderlying() external view returns (address) {
        return underlying;
    }

    ////////// ADMIN FUNCTIONS //////////

    /// @notice Set the deposit cap
    function setMaxDeposits(uint256 _depositCap) external onlyFactory {
        if (_depositCap < currentDeposits) revert InsufficientDeposit();
        depositCap = _depositCap;
    }

    /// @notice For recovering tokens sent to the contract that shouldn't be there.
    ///         Some examples of when this would be used include for airdrops and
    ///         tokens sent by mistake.
    /// @dev Only callable by the factory. Access control for the factory function
    ///      that delegates to this method is handled by the factory.
    /// @param token The address of the token to recover.
    /// @param recoverTo The address to recover the tokens to.
    /// @return amount The amount of the token recovered.
    function recoverToken(address token, address recoverTo) external onlyFactory returns (uint256 amount) {
        if (token == address(0)) revert InvalidTokenToRecover();
        if (token == underlying) {
            // Withdraw any excess beyond what should be deposited, denoted by currentDeposits
            amount = IERC20(token).balanceOf(address(this)) - currentDeposits;
        } else {
            amount = IERC20(token).balanceOf(address(this));
        }
        IERC20(token).safeTransfer(recoverTo, amount);
    }

    ////////// EVENTS //////////

    event Deposit(address user, uint256 amount);
    event DepositedTo(address principalRecipient, address pointRecipient, uint256 amount);
    event Redeem(address user, uint256 amount);
    event Recombine(address user, uint256 amount);
    event Split(address user, uint256 amount);
    event NewMaturityCreated(address combined, address principal, address yield);

    ////////// ERRORS //////////

    error NotEntered();
    error AlreadyEntered();
    error NoCode();
    error CallerNotEntrant();
    error CallerNotFactory();
    error Matured();
    error InsufficientFunds();
    error AmountMismatch();
    error RecipientMismatch();
    error PrematureRedeem();
    error InsufficientDeposit();
    error InsufficientAssetSupplied();
    error InvalidSlippageBps();
    error DepositCapExceeded();
    error InvalidTokenToRecover();
    error UnauthorizedCaller();

    // init errors
    error InvalidDecimals();
    error InvalidUnderlying();
    error InvalidMaturity();
}
