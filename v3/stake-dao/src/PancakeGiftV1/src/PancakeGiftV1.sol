// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "solmate/src/tokens/ERC20.sol";
import {SafeTransferLib} from "./utils/SafeTransferLib.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

contract PancakeGiftV1 is Ownable2Step, ReentrancyGuardTransient, Pausable {
    using SafeTransferLib for ERC20;
    using SafeTransferLib for address;
    using SafeCast for uint256;

    enum GiftStatus {
        NotExist,
        Pending,
        Claimed,
        Cancelled
    }

    struct GiftInfo {
        address token;
        address creator;
        uint128 tokenAmount;
        uint128 nativeAmount;
        uint128 gasPayment;
        GiftStatus status;
        uint96 expiry;
    }

    // Whether the address is an operator or not
    mapping(address => bool) public isOperator;

    // The maximum length of the gift code, default is set to 64
    // This is to prevent excessively long code which could lead to gas issues
    uint256 public MAX_CODE_LENGTH = 64;

    // The expiry time for the gift, default is set to 7 days
    uint256 public EXPIRY_TIME = 7 days;
    // Minimum expiry time allowed
    uint256 public constant MIN_EXPIRY_TIME = 1 hours;
    // Maximum expiry time allowed
    uint256 public constant MAX_EXPIRY_TIME = 365 days;

    // This is a fixed amount that the creator must pay in native token to create a gift
    // It is used to cover the gas costs of the transaction which will send the gift to the recipient
    // default is set to 0.000075 ether (0.5 Gwei * 150_000)
    uint128 public GAS_PAYMENT = 0.000075 ether;
    // Maximum gas payment allowed
    uint256 public constant MAX_GAS_PAYMENT = 1 ether;

    // Total gas fee claimable by PCS for processing claimGift
    uint256 public totalGasFeeClaimableByPCS;

    // Gas limit for transferring native currency, this is a fixed limit to prevent excessive gas usage when transferring native currency
    uint256 public NATIVE_TRANSFER_GAS_LIMIT = 4029;
    // Minimum gas limit for transferring native currency
    uint256 public constant MIN_NATIVE_TRANSFER_GAS_LIMIT = 2300;

    // Gas limit for token transfer, this is a fixed limit to prevent excessive gas usage when transferring token
    uint256 public TOKEN_TRANSFER_GAS_LIMIT = 80_000;
    // Maximum gas limit for token transfer
    uint256 public constant MAX_TOKEN_TRANSFER_GAS_LIMIT = 10_000_000;

    // giftCodeHash, The unique code hash for the gift, created using keccak256(abi.encodePacked(code))
    mapping(bytes32 giftCodeHash => GiftInfo) public gifts;

    event GiftCreated(
        bytes32 indexed codeHash,
        address indexed creator,
        address indexed token,
        uint128 tokenAmount,
        uint128 nativeAmount,
        uint128 gasPayment,
        uint128 expiry
    );
    event GiftClaimed(bytes32 indexed codeHash, address indexed to);
    event GiftCancelled(bytes32 indexed codeHash);
    event UpdateOperator(address indexed operator, bool isOperatorOrNot);
    event UpdateGasPayment(uint256 newGasPayment);
    event UpdateTokenTransferGasLimit(uint256 newTokenTransferGasLimit);
    event UpdateNativeTransferGasLimit(uint256 newNativeTransferGasLimit);
    event CollectGasFee(address to, uint256 amount);
    event UpdateExpiryTime(uint256 newExpiryTime);
    event UpdateCodeLength(uint256 newMaxCodeLength);
    event GiftClaimError(bytes32 indexed codeHash, address indexed to, bytes reason);
    event GiftCancelError(bytes32 indexed codeHash, bytes reason);

    error InvalidGiftAmount();
    error InvalidNativeAmount();
    error InvalidTokenAmount();
    error InvalidTokenFeeOnTransfer();
    error GiftAlreadyExists();
    error GiftNotExist();
    error GiftNotClaimable();
    error NotGiftCreatorOrOperator();
    error NotOperator();
    error NotOperatorOrSelf();
    error ZeroAddress();
    error InvalidGasPayment();
    error InvalidExpiryTime();
    error AlreadyExpired();
    error NotExpired();
    error InvalidTokenTransferGasLimit();
    error InvalidNativeTransferGasLimit();
    error CodeLengthTooLong();

    modifier onlyOperator() {
        if (!isOperator[msg.sender]) {
            revert NotOperator();
        }
        _;
    }

    modifier onlyOperatorOrSelf() {
        if (!isOperator[msg.sender] && msg.sender != address(this)) {
            revert NotOperatorOrSelf();
        }
        _;
    }

    /**
     * @notice Constructor to initialize the contract with the owner
     * @param owner The address of the contract owner
     */
    constructor(address owner) Ownable(owner) {}

    /**
     * @notice Create a gift with a unique code hash
     * @param codeHash The unique code hash for the gift, created using keccak256(abi.encodePacked(code))
     * @param token The address of the token to be gifted
     * @param tokenAmount The amount of the token to be gifted
     * @param nativeAmount The amount of native currency to be gifted (in wei)
     * @dev The function requires the sender to pay a gas fee (GAS_PAYMENT) in native currency.
     * @dev Please ensure gift code will not exceed the maximum length (MAX_CODE_LENGTH), or you will get a revert when claiming the gift.
     */
    function createGift(bytes32 codeHash, address token, uint128 tokenAmount, uint128 nativeAmount)
        external
        payable
        whenNotPaused
        nonReentrant
    {
        if (tokenAmount == 0 && nativeAmount == 0) {
            revert InvalidGiftAmount();
        }
        GiftInfo storage gift = gifts[codeHash];
        if (gift.status != GiftStatus.NotExist) {
            revert GiftAlreadyExists();
        }
        if (msg.value != (nativeAmount + GAS_PAYMENT)) {
            revert InvalidNativeAmount();
        }
        if (token == address(0)) {
            if (tokenAmount > 0) {
                revert InvalidTokenAmount();
            }
        } else {
            if (tokenAmount == 0) {
                revert InvalidTokenAmount();
            }

            uint256 tokenBalanceBefore = ERC20(token).balanceOf(address(this));
            ERC20(token).safeTransferFromWithGasLimit(msg.sender, address(this), tokenAmount, TOKEN_TRANSFER_GAS_LIMIT);
            uint256 tokenReceived = ERC20(token).balanceOf(address(this)) - tokenBalanceBefore;
            // Forbid the token which have fee on transfer
            if (tokenReceived != tokenAmount) {
                revert InvalidTokenFeeOnTransfer();
            }
        }
        gift.status = GiftStatus.Pending;
        gift.token = token;
        gift.tokenAmount = tokenAmount;
        gift.nativeAmount = nativeAmount;
        gift.gasPayment = GAS_PAYMENT;
        gift.creator = msg.sender;
        uint96 expiry = (block.timestamp + EXPIRY_TIME).toUint96();
        gift.expiry = expiry;

        // update the gas fee collected
        totalGasFeeClaimableByPCS += GAS_PAYMENT;
        emit GiftCreated(codeHash, msg.sender, token, tokenAmount, nativeAmount, GAS_PAYMENT, expiry);
    }

    struct BatchClaimGiftParam {
        string code; // The unique code for the gift
        address to; // Address to which the gifts will be sent
    }

    /**
     * @notice Batch claim gifts by code with revert reason
     * @param params An array of BatchClaimGiftParam containing the gift codes and recipient addresses
     * @return results An array of bytes containing the revert reason for each failed claim, or empty bytes if the claim was successful
     * @dev This function can only be called by the contract operator.
     * @dev Each claim will be attempted, and if it fails, it will return the revert reason instead of reverting the entire transaction.
     */
    function batchClaimGift(BatchClaimGiftParam[] calldata params) external onlyOperator returns (bytes[] memory) {
        uint256 length = params.length;
        bytes[] memory results = new bytes[](length);
        for (uint256 i = 0; i < length; i++) {
            try this.claimGift(params[i].code, params[i].to) {
                // do nothing, results[i] remains empty by default.
            } catch (bytes memory reason) {
                results[i] = reason;
                emit GiftClaimError(keccak256(abi.encodePacked(params[i].code)), params[i].to, reason);
            }
        }
        return results;
    }

    /**
     * @notice Admin function to claim a gift by code
     * @param code The unique code for the gift
     * @param to The address to which the gift will be sent
     * @dev This function can only be called by the contract operator or current contract.
     */
    function claimGift(string calldata code, address to) external nonReentrant whenNotPaused onlyOperatorOrSelf {
        if (to == address(0)) {
            revert ZeroAddress();
        }

        if (bytes(code).length > MAX_CODE_LENGTH) {
            revert CodeLengthTooLong();
        }

        bytes32 codeHash = keccak256(abi.encodePacked(code));
        GiftInfo storage gift = gifts[codeHash];

        if (gift.status != GiftStatus.Pending) {
            if (gift.status == GiftStatus.NotExist) {
                revert GiftNotExist();
            }
            revert GiftNotClaimable();
        }

        if (gift.expiry < block.timestamp) {
            revert AlreadyExpired();
        }

        gift.status = GiftStatus.Claimed;

        if (gift.tokenAmount > 0) {
            _transferToken(ERC20(gift.token), to, gift.tokenAmount);
        }

        if (gift.nativeAmount > 0) {
            to.safeTransferETHWithGasLimit(gift.nativeAmount, NATIVE_TRANSFER_GAS_LIMIT);
        }

        emit GiftClaimed(codeHash, to);
    }

    /**
     * @notice Batch cancel gifts by code hash with revert reason
     * @param codeHashList An array of code hashes for the gifts to be cancelled
     * @return results An array of bytes containing the revert reason for each failed cancellation, or empty bytes if the cancellation was successful
     * @dev This function can only be called by the contract operator.
     */
    function batchCancelGift(bytes32[] calldata codeHashList) external onlyOperator returns (bytes[] memory) {
        uint256 length = codeHashList.length;
        bytes[] memory results = new bytes[](length);
        for (uint256 i = 0; i < length; i++) {
            try this.cancelGift(codeHashList[i]) {
                // do nothing, results[i] remains empty by default.
            } catch (bytes memory reason) {
                results[i] = reason;
                emit GiftCancelError(codeHashList[i], reason);
            }
        }
        return results;
    }

    /**
     * @notice Cancel a gift and return the funds to the creator
     * @param codeHash The unique code hash for the gift, created using keccak256(abi.encodePacked(code))
     * @dev This function can only be called by the creator of the gift or an operator.
     */
    function cancelGift(bytes32 codeHash) external nonReentrant {
        GiftInfo storage gift = gifts[codeHash];
        address creator = gift.creator;
        bool isCreator = creator == msg.sender;

        // msg.sender will be address(this) if batchCancelGift function is called.
        if (!isCreator && !isOperator[msg.sender] && msg.sender != address(this)) {
            revert NotGiftCreatorOrOperator();
        }

        if (gift.status != GiftStatus.Pending) {
            if (gift.status == GiftStatus.NotExist) {
                revert GiftNotExist();
            }
            revert GiftNotClaimable();
        }

        // Operator can only cancel the gift after it has expired
        // if creator is operator, it can cancel the gift anytime
        if (!isCreator) {
            if (gift.expiry > block.timestamp) {
                revert NotExpired();
            }
        }

        gift.status = GiftStatus.Cancelled;

        if (gift.tokenAmount > 0) {
            if (isCreator) {
                // If it is the creator, will not check gas limit and transfer the token directly
                ERC20(gift.token).safeTransfer(creator, gift.tokenAmount);
            } else {
                _transferToken(ERC20(gift.token), creator, gift.tokenAmount);
            }
        }

        uint128 nativeAmount = gift.nativeAmount;
        if (nativeAmount > 0) {
            if (isCreator) {
                // If it is the creator, will not check gas limit and transfer the native directly
                creator.safeTransferETH(nativeAmount);
            } else {
                // If it is not the creator, will check gas limit and transfer the native
                creator.safeTransferETHWithGasLimit(nativeAmount, NATIVE_TRANSFER_GAS_LIMIT);
            }
        }
        emit GiftCancelled(codeHash);
    }

    /**
     * @dev Please be careful when using this function in blockchain explorer, it has a risk of leaking gift code.
     * @dev It is recommended to calculate the gift code hash in your local environment.
     * @notice Calculate the gift code hash
     * @param code The unique code for the gift
     * @return The keccak256 hash of the code
     */
    function calculateGiftCodeHash(string calldata code) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(code));
    }

    /**
     * @notice Pause the contract
     * @dev This function can only be called by the contract owner.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract
     * @dev This function can only be called by the contract owner.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Set the operator address
     * @param operator The address of the new operator
     * @param isOperatorOrNot True if the address is an operator, false otherwise
     * @dev This function can only be called by the contract owner.
     */
    function setOperator(address operator, bool isOperatorOrNot) external onlyOwner {
        if (operator == address(0)) {
            revert ZeroAddress();
        }
        isOperator[operator] = isOperatorOrNot;
        emit UpdateOperator(operator, isOperatorOrNot);
    }

    /**
     * @notice Update the maximum length of the gift code
     * @param newMaxCodeLength The new maximum length of the gift code
     * @dev This function can only be called by the contract owner.
     */
    function setMaxCodeLength(uint256 newMaxCodeLength) external onlyOwner {
        MAX_CODE_LENGTH = newMaxCodeLength;
        emit UpdateCodeLength(newMaxCodeLength);
    }

    /**
     * @notice Update the gas payment amount
     * @param newGasPayment The new gas payment amount in wei
     * @dev This function can only be called by the contract owner.
     */
    function setGasPayment(uint128 newGasPayment) external onlyOwner {
        if (newGasPayment > MAX_GAS_PAYMENT) {
            revert InvalidGasPayment();
        }
        GAS_PAYMENT = newGasPayment;
        emit UpdateGasPayment(newGasPayment);
    }

    /**
     * @notice Update the gas limit for token transfers
     * @param newTokenTransferGasLimit The new gas limit for token transfers
     * @dev This function can only be called by the contract owner.
     */
    function setTokenTransferGasLimit(uint256 newTokenTransferGasLimit) external onlyOwner {
        if (newTokenTransferGasLimit > MAX_TOKEN_TRANSFER_GAS_LIMIT) {
            revert InvalidTokenTransferGasLimit();
        }
        TOKEN_TRANSFER_GAS_LIMIT = newTokenTransferGasLimit;
        emit UpdateTokenTransferGasLimit(newTokenTransferGasLimit);
    }

    /**
     * @notice Update the gas limit for native currency transfers
     * @param newNativeTransferGasLimit The new gas limit for native currency transfers
     * @dev This function can only be called by the contract owner.
     */
    function setNativeTransferGasLimit(uint256 newNativeTransferGasLimit) external onlyOwner {
        if (newNativeTransferGasLimit < MIN_NATIVE_TRANSFER_GAS_LIMIT) {
            revert InvalidNativeTransferGasLimit();
        }
        NATIVE_TRANSFER_GAS_LIMIT = newNativeTransferGasLimit;
        emit UpdateNativeTransferGasLimit(newNativeTransferGasLimit);
    }

    /**
     * @notice Collect the total gas fee collected from gift creation
     * @param to The address to which the gas fee will be sent
     * @dev This function can only be called by the contract owner.
     */
    function collectGasFee(address to) external onlyOwner {
        if (to == address(0)) {
            revert ZeroAddress();
        }
        uint256 amount = totalGasFeeClaimableByPCS;
        if (amount == 0) {
            revert InvalidNativeAmount();
        }
        totalGasFeeClaimableByPCS = 0;
        to.safeTransferETH(amount);
        emit CollectGasFee(to, amount);
    }

    /**
     * @notice Update the expiry time for the gift
     * @param newExpiryTime The new expiry time in seconds
     * @dev This function can only be called by the contract owner.
     */
    function updateExpiryTime(uint256 newExpiryTime) external onlyOwner {
        if (newExpiryTime < MIN_EXPIRY_TIME || newExpiryTime > MAX_EXPIRY_TIME) {
            revert InvalidExpiryTime();
        }
        EXPIRY_TIME = newExpiryTime;
        emit UpdateExpiryTime(newExpiryTime);
    }

    function _transferToken(ERC20 token, address to, uint256 amount) internal {
        uint256 tokenBalanceBefore = token.balanceOf(to);
        token.safeTransferWithGasLimit(to, amount, TOKEN_TRANSFER_GAS_LIMIT);
        uint256 tokenReceived = token.balanceOf(to) - tokenBalanceBefore;
        // Forbid the token which have fee on transfer
        if (tokenReceived != amount) {
            revert InvalidTokenFeeOnTransfer();
        }
    }
}
