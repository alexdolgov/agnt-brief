// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { Chainlink } from "@chainlink/contracts/src/v0.8/operatorforwarder/Chainlink.sol";
import { VRFV2PlusClient } from "@chainlink/contracts/src/v0.8/vrf/dev/libraries/VRFV2PlusClient.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MessageHashUtils } from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";

import { Ownable2StepUpgradeable } from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";

import { ChainlinkClientUpgradeable } from "../libraries/ChainlinkClientUpgradeable.sol";
import { VRFConsumerBaseV2PlusUpgradeable } from "../libraries/VRFConsumerBaseV2PlusUpgradeable.sol";

import { ITokenPriceFeed } from "../interfaces/ITokenPriceFeed.sol";
import { InvalidAddress, InvalidAssignment } from "../shared/Errors.sol";

/**
 * @title RandomNumberService.
 * @author Rain Team.
 * @notice Chainlink VRF Service.
 */
contract RandomNumberService is
    VRFConsumerBaseV2PlusUpgradeable,
    PausableUpgradeable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    EIP712Upgradeable,
    ChainlinkClientUpgradeable
{
    using Chainlink for Chainlink.Request;
    using SafeERC20 for IERC20;
    using MessageHashUtils for bytes32;

    /// @notice Chainlink subscription ID for VRF.
    uint256 public s_subscriptionId;

    /// @notice The gas lane to use, which specifies the maximum gas price to bump to.
    bytes32 public s_keyHash;

    /// @notice Fee receiving wallet address.
    address public Fee_Wallet;

    /// @notice Address of the USD token, used for fee deduction
    IERC20 public Fee_Token;

    /// @notice Minimum block confirmations for VRF.
    uint16 public s_requestConfirmations;

    /// @notice Number of random words to request.
    uint32 public s_numWords;

    /// @notice Oracle payment amount.
    uint256 public Oracle_Payment;

    /// @notice Callback gas limit for VRF.
    /// @notice Depends on the number of requested values sent to the `fulfillRandomWords` function. Storing each word
    /// costs about 20,000 gas, so 100,000 is a safe default for this contract. Should be adjusted based on the network,
    /// the size of the request, and the processing of the callback request in the `fulfillRandomWords` function.
    uint32 public s_callbackGasLimit;

    /// @notice Fee for Chainlink VRF request in Fee_Token.
    uint256 public vrfFee;

    /// @notice Protocol token pricefeed.
    ITokenPriceFeed public tokenPriceFeed;

    /// @dev Random request typehash.
    bytes32 private constant _RANDOM_REQUEST_TYPEHASH =
        keccak256("RandomRequest(uint256 randomWord1,uint256 randomWord2,uint256 rainPrice)");

    /// @dev To store whitelisted address
    mapping(address => bool) public isWhitelisted;

    /// @dev To authorize node
    mapping(address => bool) public isAuthorizedSender;

    /// @dev A mapping to track if an callback request has been fulfilled.
    mapping(uint256 => RequestStatus) private s_request;

    struct RequestStatus {
        address requester;
        bool fulfilled;
        bool isOracleRequest;
        uint256[] randomWords;
        bytes32 oracleEncryptedNumber;
        uint256 priceSnapshot;
        bytes4 callbackSelector;
    }

    /**
     * @notice Emitted when a Chainlink VRF request is successfully sent.
     * @param requestId The ID of the VRF request.
     * @param requestor The address that initiated the VRF request.
     */
    event VRFRequestSent(uint256 indexed requestId, address indexed requestor);

    /**
     * @notice Emitted when the Chainlink VRF random words are successfully fulfilled.
     * @param requestId The ID of the VRF request.
     * @param requestor The address that initiated the request.
     * @param randomWords The array of random words returned from the VRF.
     */
    event VRFFulfilled(uint256 indexed requestId, address indexed requestor, uint256[] randomWords, bool success);

    /**
     * @notice Emitted when an oracle-based random number request is sent.
     * @param requestId The ID of the oracle request.
     * @param requestor The address that initiated the oracle request.
     */
    event OracleRequestSent(bytes32 indexed requestId, address indexed requestor);

    /**
     * @notice Emitted when the oracle returns an encrypted random number.
     * @param requestId The ID of the oracle request.
     * @param requestor The address that initiated the oracle request.
     * @param encryptedNumber The encrypted random number returned by the oracle.
     */
    event OracleFulfilled(bytes32 indexed requestId, address indexed requestor, bytes32 encryptedNumber, bool success);

    /**
     * @notice Emitted when the VRF feww is update.
     * @param prevFee Previous fee.
     * @param newFee New fee.
     */
    event VRFFeeUpdated(uint256 indexed prevFee, uint256 newFee);

    /**
     * @notice Emitted when the VRF returned number of words updated.
     * @param prevNumWords Previous fee.
     * @param newNumWords New fee.
     */
    event numWordsUpdated(uint32 indexed prevNumWords, uint32 newNumWords);

    /**
     * @dev Emitted when the oracle payment is updated.
     * @param previousPayment Previous oracle payment.
     * @param newPayment New oracle payment.
     */
    event OraclePaymentUpdated(uint256 indexed previousPayment, uint256 newPayment);

    /**
     * @notice Emitted when the price feed is updated.
     * @param prevFeed Previous price feed address.
     * @param newFeed New price feed address.
     */
    event tokenPriceFeedUpdated(address indexed prevFeed, address newFeed);

    /**
     * @notice Emitted when the callback gas is updated.
     * @param prevGas Previous callback.
     * @param newGas New callback.
     */
    event callBackGasUpdated(uint32 indexed prevGas, uint32 newGas);

    /**
     * @notice Emitted when the consumer wallet is added or removed.
     * @param consumer Consumer address added or removed from whitelist.
     * @param status Status of consumer true or false.
     */
    event updatedWhitelist(address indexed consumer, bool status);

    /**
     * @notice Emitted when the consumer wallet is added or removed.
     * @param node Consumer address added or removed from whitelist.
     * @param status Status of consumer true or false.
     */
    event updatedAuthorizeList(address indexed node, bool status);

    /**
     * @dev Oracle request already processed.
     */
    error RoundAlreadyProcessed();

    /**
     * @dev Node is not authorized to perform the action.
     */
    error Unauthorized();

    /**
     * @dev Constructor.
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract with core configuration parameters.
     * @dev This function sets up ownership, UUPS upgradeability, pausability, and EIP-712 domain separator.
     * @param _callbackgaslimit The gas limit for Chainlink VRF or any oracle callback execution.
     * @param _vrfFee The fee in LINK token required for Chainlink VRF or oracle services.
     * @param _linkToken The link token address.
     * @param _s_subscriptionId Chainlink Subscription ID for VRF.
     * @param _s_keyHash Chainlink key hash.
     * @param _Fee_Wallet Fee collecting wallet.
     * @param _Fee_Token Fee deducting token address.
     * @param _s_requestConfirmations VRF confirmations.
     * @param _s_numWords VRF words.
     * @param _oracle_payment, Oracle fee.
     * @param _s_oracle Oracle addrees
     * @param _price_feed Oracle addrees
     */
    function initialize(
        uint32 _callbackgaslimit,
        uint256 _vrfFee,
        address _linkToken,
        uint256 _s_subscriptionId,
        bytes32 _s_keyHash,
        address _Fee_Wallet,
        IERC20 _Fee_Token,
        uint16 _s_requestConfirmations,
        uint32 _s_numWords,
        uint256 _oracle_payment,
        address _s_oracle,
        ITokenPriceFeed _price_feed
    ) external initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        __Pausable_init();
        __EIP712_init("RandomNumberService", "1");
        __ChainlinkClient_init(_s_oracle);

        s_requestCount = 1;
        vrfFee = _vrfFee;
        s_callbackGasLimit = _callbackgaslimit;

        s_subscriptionId = _s_subscriptionId;
        s_keyHash = _s_keyHash;
        Fee_Wallet = _Fee_Wallet;
        Fee_Token = _Fee_Token;
        tokenPriceFeed = _price_feed;

        if (_s_requestConfirmations < 3) {
            revert InvalidAssignment();
        }

        s_requestConfirmations = _s_requestConfirmations;
        s_numWords = _s_numWords;
        Oracle_Payment = _oracle_payment;
        _setChainlinkToken(_linkToken);
        isAuthorizedSender[_s_oracle] = true;
    }

    /**
     * @notice Updates the chainlink token fee.
     * @param _vrfFee Amount.
     */
    function updateLinkFee(uint256 _vrfFee) external onlyOwner {
        emit VRFFeeUpdated(vrfFee, _vrfFee);
        vrfFee = _vrfFee;
    }

    /**
     * @notice Updates number of random words generated by VRF.
     * @param _newNumWords number.
     */
    function updateNumWords(uint32 _newNumWords) external onlyOwner {
        if (_newNumWords < 2 || s_numWords == _newNumWords) {
            revert InvalidAssignment();
        }
        emit numWordsUpdated(s_numWords, _newNumWords);
        s_numWords = _newNumWords;
    }

    /**
     * @notice Updates the oracle payment amount.
     * @param newPayment The new payment amount in LINK tokens.
     */
    function updateOraclePayment(uint256 newPayment) external onlyOwner {
        if (newPayment == 0 || newPayment == Oracle_Payment) {
            revert InvalidAssignment();
        }
        emit OraclePaymentUpdated(Oracle_Payment, newPayment);
        Oracle_Payment = newPayment;
    }

    /**
     * @notice Sets the address of the rain token price feed contract.
     * @param priceFeed The address of the price feed contract.
     */
    function setTokenPrice(ITokenPriceFeed priceFeed) external onlyOwner {
        if (address(priceFeed) == address(0)) {
            revert InvalidAddress();
        }

        if (priceFeed == tokenPriceFeed) {
            revert InvalidAssignment();
        }

        emit tokenPriceFeedUpdated(address(tokenPriceFeed), address(priceFeed));

        tokenPriceFeed = priceFeed;
    }

    /**
     * @notice Updates the callback gas limit for chainlink vrf callback function.
     * @param newTotalGas The gas limit for callback function call.
     */
    function updateGas(uint32 newTotalGas) external onlyOwner {
        emit callBackGasUpdated(s_callbackGasLimit, newTotalGas);
        s_callbackGasLimit = newTotalGas;
    }

    /**
     * @notice Updates the chainlink token address.
     * @param linkAddress Link token address.
     */
    function updateLinkToken(address linkAddress) external onlyOwner {
        _setChainlinkToken(linkAddress);
    }

    /**
     * @notice Updates the chainlink subscription ID.
     * @param _s_subscriptionId Chainlink Subscription ID for VRF.
     */
    function updateSubscriptionId(uint64 _s_subscriptionId) external onlyOwner {
        s_subscriptionId = _s_subscriptionId;
    }

    /**
     * @notice Updates the contract with chainlink coordinator address.
     * @param newVRFCoordinator The coordinator address.
     */
    function setCoordinator(address newVRFCoordinator) external onlyOwner {
        _setCoordinator(newVRFCoordinator);
    }

    /**
     * @notice Change the fee token address.
     * @param newTokenAddress Fee deducting token address.
     */
    function setFeeToken(IERC20 newTokenAddress) external onlyOwner {
        Fee_Token = newTokenAddress;
    }

    /**
     * @notice Whitelists or remove from Whitelist an external consumer contract to allow it to receive random numbers.
     * @dev Only the contract owner can call this function. Reverts if the provided address is zero.
     * @param consumer The address of the consumer contract to whitelist.
     * @param status Boolean value to Whitelists or remove from Whitelist.
     */
    function setWhitelistedConsumer(address consumer, bool status) external onlyOwner {
        if (consumer == address(0)) {
            revert InvalidAddress();
        }
        isWhitelisted[consumer] = status;

        emit updatedWhitelist(consumer, status);
    }

    /**
     * @notice Sets or remove the fulfillment permission.
     * @param node The addresses that are allowed to send updates.
     * @param status Boolean value to set or remove authorization.
     */
    function setAuthorizedSender(address node, bool status) external onlyOwner {
        if (node == address(0)) {
            revert InvalidAddress();
        }
        isAuthorizedSender[node] = status;

        emit updatedAuthorizeList(node, status);
    }

    /**
     * @notice Securely withdraw tokens, if stuck.
     * @param token The address of withdrawing token.
     * @param to The address of receiving account.
     * @param amount Amount to withdraw.
     */
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner {
        if (token == address(0) || to == address(0) || amount == 0) {
            revert InvalidAddress();
        }

        IERC20(token).safeTransfer(to, amount);
    }

    /**
     * @notice Get the request status for a given requestId.
     * @dev Returns the full RequestStatus struct including random words array.
     * @param requestId The unique identifier for the randomness request.
     * @return requester The address that made the request.
     * @return fulfilled Whether the request has been fulfilled.
     * @return isOracleRequest Whether the request originated from the Oracle.
     * @return randomWords The array of random words generated for this request.
     * @return oracleEncryptedNumber The encrypted number provided by the Oracle.
     */
    function getRequestStatus(
        uint256 requestId
    )
        external
        view
        returns (
            address requester,
            bool fulfilled,
            bool isOracleRequest,
            uint256[] memory randomWords,
            bytes32 oracleEncryptedNumber,
            uint256 priceSnapshot,
            bytes4 callbackSelector
        )
    {
        RequestStatus storage status = s_request[requestId];
        return (
            status.requester,
            status.fulfilled,
            status.isOracleRequest,
            status.randomWords,
            status.oracleEncryptedNumber,
            status.priceSnapshot,
            status.callbackSelector
        );
    }

    /**
     * @notice Requests a random number from Chainlink VRF.
     * @param user User address.
     * @param callbackSelector Requester callback selector.
     * @param requestConfirmation Number of confirmations to wait before fulfilling the request.
     */
    function requestVRF(
        address user,
        bytes4 callbackSelector,
        uint16 requestConfirmation
    ) external whenNotPaused validateCallbackAddress(msg.sender) returns (uint256 requestId) {
        Fee_Token.safeTransferFrom(user, Fee_Wallet, vrfFee);
        requestId = vrfCoordinator.requestRandomWords(
            VRFV2PlusClient.RandomWordsRequest({
                keyHash: s_keyHash,
                subId: s_subscriptionId,
                requestConfirmations: requestConfirmation,
                callbackGasLimit: s_callbackGasLimit,
                numWords: s_numWords,
                extraArgs: VRFV2PlusClient._argsToBytes(VRFV2PlusClient.ExtraArgsV1({ nativePayment: false }))
            })
        );

        s_request[requestId].requester = msg.sender;
        s_request[requestId].priceSnapshot = tokenPriceFeed.getScaledPrice();
        s_request[uint256(requestId)].callbackSelector = callbackSelector;
        emit VRFRequestSent(requestId, msg.sender);
    }

    /**
     * @notice Callback function invoked by Chainlink VRF Coordinator with the random words.
     * @param requestId The identifier of the VRF request.
     * @param randomWords An array of random numbers generated by Chainlink VRF.
     */
    function fulfillRandomWords(uint256 requestId, uint256[] calldata randomWords) internal override {
        RequestStatus storage request = s_request[requestId];
        address requestor = request.requester;
        bool check = request.fulfilled;
        uint256 snapshot = request.priceSnapshot;

        if (check) {
            revert RoundAlreadyProcessed();
        }
        if (requestor == address(0)) {
            revert InvalidAddress();
        }

        bytes32 finalHash = keccak256(abi.encode(_RANDOM_REQUEST_TYPEHASH, randomWords[0], randomWords[1], snapshot));

        bytes32 digest = _hashTypedDataV4(finalHash);

        request.fulfilled = true;
        request.isOracleRequest = false;
        request.randomWords = randomWords;

        (bool success, ) = requestor.call(
            abi.encodeWithSelector(
                request.callbackSelector,
                requestId,
                uint256(digest)
            )
        );

        emit VRFFulfilled(requestId, requestor, randomWords, success);
    }

    /**
     * @notice Requests a hashed random number from a Chainlink Oracle.
     * @param url Http url.
     * @param path Json path.
     * @param jobId Node job id.
     * @param user User address.
     * @param callbackSelector Requester callback selector.
     */
    function requestEncryptedNumber(
        string memory url,
        string memory path,
        string memory jobId,
        address user,
        bytes4 callbackSelector
    ) external whenNotPaused validateCallbackAddress(msg.sender) returns (bytes32 requestId) {
        Fee_Token.safeTransferFrom(user, Fee_Wallet, vrfFee);
        Chainlink.Request memory req = _buildChainlinkRequest(
            stringToBytes32(jobId),
            address(this),
            this.fulfillRandomWord.selector
        );
        req._add("get", url);
        req._add("path", path);
        req._addInt("times", 100);

        requestId = _sendChainlinkRequestTo(address(s_oracle), req, Oracle_Payment);
        s_request[uint256(requestId)].requester = msg.sender;
        s_request[uint256(requestId)].callbackSelector = callbackSelector;
        emit OracleRequestSent(requestId, msg.sender);
    }

    /**
     * @notice Callback function invoked by the Chainlink node to deliver the encrypted random number.
     * @dev Updates the current and previous encrypted numbers and notifies the original requester.
     * @param requestId The identifier of the oracle request.
     * @param encrypted The encrypted random number returned by the oracle.
     */
    function fulfillRandomWord(
        bytes32 requestId,
        bytes32 encrypted
    ) public validateAuthorizedSender recordChainlinkFulfillment(requestId) {
        uint256 reqId = uint256(requestId);
        RequestStatus storage request = s_request[reqId];
        address requestor = request.requester;

        bool check = request.fulfilled;
        if (check) {
            revert RoundAlreadyProcessed();
        }
        if (requestor == address(0)) {
            revert InvalidAddress();
        }

        request.fulfilled = true;
        request.isOracleRequest = true;
        request.oracleEncryptedNumber = encrypted;

        (bool success, ) = requestor.call(
            abi.encodeWithSelector(
                request.callbackSelector,
                requestId,
                encrypted
            )
        );

        emit OracleFulfilled(requestId, msg.sender, encrypted, success);
    }

    /**
     * @notice Chainlink oracle address.
     */
    function oracle() external view returns (address) {
        return address(s_oracle);
    }

    /**
     * @notice Retrieves the VRF-generated random number associated with a given request ID.
     * @dev Returns VRF random words if fulfilled, otherwise returns an empty array.
     * @param requestId The requested ID for the VRF random number.
     * @return Random number generated by Chainlink VRF.
     */
    function getVRFRandomWords(uint256 requestId) external view returns (uint256[] memory) {
        return s_request[requestId].randomWords;
    }

    /**
     * @notice Retrieves the encrypted random number from an oracle request.
     * @dev Returns Oracle encrypted number if fulfilled, otherwise returns 0x0.
     * @param requestId The request ID associated with the oracle request.
     * @return Encrypted random number returned by the oracle.
     */
    function getOracleEncryptedNumber(bytes32 requestId) external view returns (bytes32) {
        return s_request[uint256(requestId)].oracleEncryptedNumber;
    }

    /**
     * @notice Pauses the contract. Disables the requestVRF and requestEncryptedNumber function.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpauses the Enables the requestVRF and requestEncryptedNumber function.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @inheritdoc UUPSUpgradeable
     * @notice Authorizes contract upgrades to a new implementation address.
     * @dev Overrides `_authorizeUpgrade` from UUPSUpgradeable and restricts upgrades to the `owner`.
     * @param newImplementation The address of the new implementation contract.
     */
    function _authorizeUpgrade(address newImplementation) internal view override onlyOwner {
        if (newImplementation == address(0)) {
            revert InvalidAddress();
        }
    }

    /**
     * @notice Converts a string to a bytes32 value.
     * @dev Returns 0x0 if the input string is empty.
     * @param source The string to convert.
     * @return result The bytes32 representation of the string.
     */
    function stringToBytes32(string memory source) private pure returns (bytes32 result) {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }

        assembly {
            result := mload(add(source, 32))
        }
    }

    /**
     * @dev prevents non-authorized addresses from calling this method
     */
    modifier validateAuthorizedSender() {
        if (!isAuthorizedSender[msg.sender]) {
            revert Unauthorized();
        }
        _;
    }

    /**
     * @dev Reverts if the target address is not whitelisted
     */
    modifier validateCallbackAddress(address callbackAddress) {
        if (!isWhitelisted[callbackAddress]) {
            revert Unauthorized();
        }
        _;
    }
}