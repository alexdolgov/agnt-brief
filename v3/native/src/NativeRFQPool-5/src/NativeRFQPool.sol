// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

import "./libraries/ConstantsLib.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";

import {IWETH9} from "./interfaces/IWETH9.sol";
import {ICreditVault} from "./interfaces/ICreditVault.sol";
import {INativeRFQPool} from "./interfaces/INativeRFQPool.sol";

contract NativeRFQPool is INativeRFQPool, Ownable2Step, EIP712 {
    using SafeERC20 for IERC20;
    using SafeCast for int256;
    using SafeCast for uint256;
    using Address for address payable;

    /// @notice Flag to indicate if this pool uses credit vault funds for market making
    /// @dev If true, market maker uses credit vault funds for quotes. If false, market maker uses their own funds
    bool public immutable isCreditPool;

    /// @notice The Pool name
    /// @dev Every market maker has their own pool if they use their own funds to quote
    string public name;

    /// @notice Address of the router contract that can execute trades
    address public router;

    /// @dev Address of the Wrapped Ether (WETH9) contract
    address public immutable WETH9;

    /// @notice Address that holds and manages tokens - points to CreditVault if isCreditPool is true, otherwise points to market maker's own account
    address public treasury;

    /// @notice Mapping to track used nonces for preventing replay attacks
    mapping(uint256 => bool) public nonces;

    /// @notice Mapping of authorized market makers who can sign RFQ quotes
    mapping(address => bool) public rfqSigners;

    /// @notice Mapping of whitelisted market makers who can trade without signatures
    mapping(address => bool) public isWhitelisedSigners;

    /*//////////////////////////////////////////////////////////////////////////
                                     RECEIVE FUNCTION
    //////////////////////////////////////////////////////////////////////////*/

    receive() external payable {
        require(msg.sender == WETH9, ErrorsLib.OnlyWETH9());
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(
        bool _isCreditPool,
        address _WETH9,
        address _router,
        address _treasury,
        string memory _name
    ) EIP712("Native RFQ Pool", "1") {
        require(
            _WETH9 != address(0) && _router != address(0) && _treasury != address(0) && bytes(_name).length > 0,
            ErrorsLib.ZeroInput()
        );

        isCreditPool = _isCreditPool;
        name = _name;
        router = _router;
        WETH9 = _WETH9;
        treasury = _treasury;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                      RFQ TRADING
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice See NativeRouter.tradeRFQT for detailed documentation
    /// @dev Called by NativeRouter to execute RFQ trades in the pool
    function tradeRFQT(uint256 effectiveSellerTokenAmount, RFQTQuote memory quote) external override onlyRouter {
        // Prevent replay attacks
        require(!nonces[quote.nonce], ErrorsLib.NonceUsed());

        // Mark nonce as used
        nonces[quote.nonce] = true;

        // Store original buyerToken address to handle ETH unwrapping if buyerToken is zero address
        address originalBuyerToken = quote.buyerToken;

        // Handle ETH case: convert zero address to WETH9 for buyer or seller token
        quote.buyerToken = quote.buyerToken == address(0) ? WETH9 : quote.buyerToken;
        quote.sellerToken = quote.sellerToken == address(0) ? WETH9 : quote.sellerToken;

        // Verify market maker signature
        _verifyPMMSignature(quote);

        uint256 buyerTokenAmount = _transferAndCallback(
            quote.signer,
            quote.recipient,
            quote.buyerToken,
            originalBuyerToken,
            quote.sellerToken,
            quote.buyerTokenAmount,
            quote.sellerTokenAmount,
            effectiveSellerTokenAmount
        );

        emit RFQTrade(
            quote.recipient,
            quote.sellerToken,
            quote.buyerToken,
            effectiveSellerTokenAmount,
            buyerTokenAmount,
            quote.quoteId,
            quote.signer
        );
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates the treasury address that receives token
    /// @param newTreasury The new treasury address
    function setTreasury(address newTreasury) public onlyOwner {
        require(newTreasury != address(0), ErrorsLib.ZeroAddress());

        treasury = newTreasury;
        emit TreasurySet(newTreasury);
    }

    /// @notice Adds or removes a market maker's authorization to sign quotes
    /// @param signer The market maker's address
    /// @param isSigner True to authorize, false to revoke
    function setSigner(address signer, bool isSigner) external onlyOwner {
        require(signer != address(0), ErrorsLib.ZeroAddress());

        rfqSigners[signer] = isSigner;
        emit SignerUpdated(signer, isSigner);
    }

    /// @notice Sets the whitelisted status for a market maker to bypass signature verification
    /// @param account The address of the market maker
    /// @param status The new whitelisted status
    /// @dev Can only be called by the owner
    function setWhitelistedSigner(address account, bool status) external onlyOwner {
        require(account != address(0), ErrorsLib.ZeroAddress());

        isWhitelisedSigners[account] = status;
        emit WhitelistedSignerUpdated(account, status);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _transferAndCallback(
        address signer,
        address recipient,
        address buyerToken,
        address originalBuyerToken,
        address sellerToken,
        uint256 buyerTokenAmount,
        uint256 sellerTokenAmount,
        uint256 effectiveSellerTokenAmount
    ) internal returns (uint256 _buyerTokenAmount) {
        _buyerTokenAmount = effectiveSellerTokenAmount != sellerTokenAmount
            ? (effectiveSellerTokenAmount * buyerTokenAmount) / sellerTokenAmount
            : buyerTokenAmount;

        if (isCreditPool) {
            require(
                effectiveSellerTokenAmount <= (type(int256).max).toUint256()
                    && _buyerTokenAmount <= (type(int256).max).toUint256(),
                ErrorsLib.Overflow()
            );

            ICreditVault(treasury).swapCallback(
                signer, sellerToken, effectiveSellerTokenAmount.toInt256(), buyerToken, _buyerTokenAmount.toInt256()
            );
        }

        _transferFromTreasury(originalBuyerToken, recipient, _buyerTokenAmount);
    }

    /// @dev Helper function to transfer buyerToken from external account.
    function _transferFromTreasury(address token, address receiver, uint256 value) private {
        if (token == address(0)) {
            // slither-disable-next-line arbitrary-send-erc20
            IERC20(WETH9).safeTransferFrom(treasury, address(this), value);
            IWETH9(WETH9).withdraw(value);

            // Skip ETH initial balance check for saving gas
            payable(receiver).sendValue(value);
        } else {
            // slither-disable-next-line arbitrary-send-erc20
            IERC20(token).safeTransferFrom(treasury, receiver, value);
        }
    }

    function _verifyPMMSignature(RFQTQuote memory quote) internal view {
        if (isWhitelisedSigners[quote.signer]) {
            return;
        }

        require(rfqSigners[quote.signer], ErrorsLib.InvalidSigner());

        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    ORDER_SIGNATURE_HASH,
                    quote.nonce,
                    quote.signer,
                    address(this),
                    quote.recipient,
                    quote.buyerToken,
                    quote.sellerToken,
                    quote.buyerTokenAmount,
                    quote.sellerTokenAmount,
                    quote.deadlineTimestamp,
                    quote.recipient,
                    quote.quoteId
                )
            )
        );

        require(quote.signer == ECDSA.recover(digest, quote.signature), ErrorsLib.InvalidSignature());
    }

    modifier onlyRouter() {
        require(msg.sender == router, ErrorsLib.OnlyNativeRouter());
        _;
    }
}
