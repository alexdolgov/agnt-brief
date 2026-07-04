// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {IXChainAdapterController} from "../interfaces/controllers/IXChainAdapterController.sol";
import {ICCTPTokenMessenger} from "../interfaces/external/ICCTPTokenMessenger.sol";
import {ICCTPMinterView} from "../interfaces/external/ICCTPMinterView.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title CCTPXChainAdapter
 * @notice Adapter that bridges USDC using Circle's Cross-Chain Transfer Protocol (CCTP) V2.
 * @dev Uses depositForBurn only (direct mint to recipient on destination; no Forwarding Service).
 *      User or a relayer must call receiveMessage on the destination chain to complete the mint.
 *      Assumes caller transfers the required USDC to this contract before execute.
 *      Follows CEI. Emits BridgeExecuted on successful sends.
 *
 *      Finality & fee model (CCTP V2):
 *        - `maxFee` is hardcoded to 0 and `minFinalityThreshold` is hardcoded to 2000.
 *        - This explicitly requests a Standard (Finalized) attestation with full finality
 *          and prevents accidental Fast transfer behavior if Fast fees become zero.
 *        - Standard Transfer fees are currently 0 bps on all deployed chains, so `maxFee = 0`
 *          is valid. If Circle enables non-zero Standard fees, two failure modes exist:
 *            1. On fee-switch chains (e.g. Sei), `depositForBurn` reverts on the source chain
 *               when `maxFee` < `getMinFeeAmount(amount)`. No tokens are transferred to or
 *               burned by the CCTP contract, and nothing is locked on the destination.
 *            2. On non-fee-switch chains, `depositForBurn` succeeds (source check is only
 *               `maxFee < amount`), but if the attestation service sets `feeExecuted > maxFee`,
 *               the destination mint reverts (`"Fee exceeds max fee"`). Burned tokens remain
 *               locked until the burn message expires (~24 h) and Circle provides remediation.
 *          This adapter must be redeployed with a configurable `maxFee` if Standard fees
 *          become non-zero on any supported chain.
 *        - Ref: https://developers.circle.com/cctp/technical-guide
 *
 *      Burn-limit splitting:
 *        - When `amount` exceeds `burnLimitsPerMessage(USDC)`, the adapter issues multiple
 *          `depositForBurn` calls. Each partition produces a separate CCTP message requiring
 *          its own attestation and `receiveMessage` on destination.
 *
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract CCTPXChainAdapter is IXChainAdapterController, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant BRIDGE_ID = keccak256("CCTP");

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the TokenMessenger address is zero
     */
    error InvalidTokenMessengerAddress();

    /**
     * @notice Thrown when the USDC address is zero
     */
    error InvalidUsdcAddress();

    /**
     * @notice Thrown when the destination chain ID is not supported
     */
    error InvalidChainId();

    /**
     * @notice Thrown when the recipient address is zero
     */
    error InvalidRecipient();

    /**
     * @notice Thrown when the sender address is zero
     */
    error InvalidSender();

    /**
     * @notice Thrown when the input token is not USDC
     */
    error InvalidInputToken();

    /**
     * @notice Thrown when the transfer amount is zero
     */
    error ZeroAmount();

    /**
     * @notice Thrown when constructor chainIds and domains arrays differ in length
     */
    error ChainDomainLengthMismatch();

    /**
     * @notice Thrown when the CCTP per-message burn limit for USDC is zero
     */
    error InvalidBurnLimit();

    /**
     * @notice Thrown when post-send token balance exceeds pre-send balance
     */
    error UnexpectedBalanceIncrease();

    /*//////////////////////////////////////////////////////////////
                                STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev CCTP V2 TokenMessenger used to burn USDC. Immutable after deployment.
     */
    ICCTPTokenMessenger private immutable TOKEN_MESSENGER;

    /**
     * @dev USDC token address. Immutable after deployment.
     */
    address private immutable USDC;

    /**
     * @dev Mapping of EVM chain ID to CCTP domain ID.
     */
    mapping(uint256 => uint32) private _chainIdToDomain;

    /**
     * @dev Mapping to track which chain IDs have been explicitly configured.
     *      Needed because domain 0 (Ethereum) is a valid domain but also the default mapping value.
     */
    mapping(uint256 => bool) private _chainConfigured;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initialize the adapter with CCTP TokenMessenger, USDC address, and chain mappings.
     * @dev Chain ID to domain mappings are stored for supported destination chains.
     *      Unsupported chains will have domain 0 by default (0 is valid for Ethereum; use isChainSupported to verify).
     * @param tokenMessenger The CCTP V2 TokenMessenger contract address
     * @param usdc The USDC token address on this chain
     * @param chainIds Array of EVM chain IDs to enable
     * @param domains Array of corresponding CCTP domain IDs (must match chainIds length)
     * @custom:reverts InvalidTokenMessengerAddress when tokenMessenger is zero
     * @custom:reverts InvalidUsdcAddress when usdc is zero
     * @custom:reverts ChainDomainLengthMismatch when chainIds and domains arrays differ in length
     */
    constructor(address tokenMessenger, address usdc, uint256[] memory chainIds, uint32[] memory domains) {
        require(tokenMessenger != address(0), InvalidTokenMessengerAddress());
        require(usdc != address(0), InvalidUsdcAddress());
        require(chainIds.length == domains.length, ChainDomainLengthMismatch());

        TOKEN_MESSENGER = ICCTPTokenMessenger(tokenMessenger);
        USDC = usdc;

        for (uint256 i = 0; i < chainIds.length; i++) {
            _chainIdToDomain[chainIds[i]] = domains[i];
            _chainConfigured[chainIds[i]] = true;
        }
    }

    /*//////////////////////////////////////////////////////////////
                                EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Check whether a destination chain is supported.
     * @dev Looks up whether the chain was explicitly configured in the constructor.
     *      Uses a separate mapping (_chainConfigured) to track configuration since domain 0 (Ethereum)
     *      is a valid domain but also the default mapping value. isChainSupported returns the stored
     *      boolean for the given chainId.
     * @param chainId The destination chain ID to validate
     * @return isSupported True if the chain has a valid CCTP domain mapping
     * @custom:reverts None
     * @custom:events None
     */
    function isChainSupported(uint256 chainId) external view override returns (bool) {
        return _chainConfigured[chainId];
    }

    /**
     * @notice Execute a cross-chain USDC transfer via CCTP (direct mint to recipient; no Forwarding Service).
     * @dev Bridges the full balance of `_inputToken` held by this contract. Validates chain, USDC, addresses.
     *      Reads the local CCTP minter burn limit and splits the balance into multiple burn messages
     *      when needed so each call remains within `burnLimitsPerMessage(USDC)`. USDC is minted to the
     *      recipient on destination once a relayer or the user submits attestations via receiveMessage.
     *      Clears approval and refunds any dust to sender.
     * @param chainId The destination chain ID
     * @param _sender The expected initiator on source chain (for dust refund)
     * @param _recipient The expected recipient on destination chain
     * @param _inputToken The token being bridged (must be USDC)
     * @param - Unused; retained for interface compatibility
     * @custom:reverts InvalidChainId when chain is not supported
     * @custom:reverts InvalidInputToken when input token is not USDC
     * @custom:reverts InvalidRecipient when recipient is zero address
     * @custom:reverts InvalidSender when sender is zero address
     * @custom:reverts InvalidBurnLimit when CCTP burn limit for USDC is zero
     * @custom:reverts ZeroAmount when transfer amount is zero
     * @custom:reverts UnexpectedBalanceIncrease when post-send balance exceeds pre-send balance
     * @custom:events BridgeExecuted on success
     * @custom:gas Cost dominated by one or more TokenMessenger.depositForBurn calls; additional cost if dust is refunded via safeTransfer.
     */
    function execute(uint256 chainId, address _sender, address _recipient, IERC20 _inputToken, bytes calldata)
        external
        override
        nonReentrant
    {
        require(_chainConfigured[chainId], InvalidChainId());
        uint32 domain = _chainIdToDomain[chainId];
        require(address(_inputToken) == USDC, InvalidInputToken());
        require(_recipient != address(0), InvalidRecipient());
        require(_sender != address(0), InvalidSender());

        uint256 amount = _inputToken.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

        bytes32 mintRecipient = bytes32(uint256(uint160(_recipient)));
        address minter = TOKEN_MESSENGER.localMinter();
        uint256 burnLimit = ICCTPMinterView(minter).burnLimitsPerMessage(USDC);
        require(burnLimit > 0, InvalidBurnLimit());

        _inputToken.forceApprove(address(TOKEN_MESSENGER), amount);

        // destinationCaller = bytes32(0): any relayer or the user may call receiveMessage on destination.
        // maxFee = 0 keeps fees disabled; minFinalityThreshold = 2000 explicitly enforces
        // Standard (Finalized) attestation with full finality. See contract-level @dev.
        uint256 remainingAmount = amount;
        while (remainingAmount > 0) {
            uint256 partAmount = remainingAmount > burnLimit ? burnLimit : remainingAmount;
            TOKEN_MESSENGER.depositForBurn(partAmount, domain, mintRecipient, USDC, bytes32(0), 0, 2000);
            remainingAmount -= partAmount;
        }

        _inputToken.forceApprove(address(TOKEN_MESSENGER), 0);

        uint256 dust = _inputToken.balanceOf(address(this));
        require(dust <= amount, UnexpectedBalanceIncrease());
        if (dust > 0) {
            _inputToken.safeTransfer(_sender, dust);
        }

        emit BridgeExecuted(BRIDGE_ID, chainId, _sender, _recipient, address(_inputToken), amount - dust, dust);
    }

    /*//////////////////////////////////////////////////////////////
                                VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Get the CCTP domain ID for a given chain ID.
     * @dev Returns 0 if the chain is not configured (use isChainSupported to verify).
     * @param chainId The EVM chain ID to look up
     * @return domain The CCTP domain ID (0 is valid for Ethereum)
     * @custom:reverts None
     * @custom:events None
     */
    function getDomainForChain(uint256 chainId) external view returns (uint32 domain) {
        return _chainIdToDomain[chainId];
    }

    /**
     * @notice Get the USDC token address used by this adapter.
     * @dev Returns the immutable USDC address set at construction. Pure read from storage; no state changes.
     * @return usdcAddress The USDC token address
     * @custom:reverts None
     * @custom:events None
     */
    function getUsdc() external view returns (address usdcAddress) {
        return USDC;
    }

    /**
     * @notice Get the TokenMessenger contract address.
     * @dev Returns the immutable CCTP V2 TokenMessenger address set at construction. Pure read; no state changes.
     * @return tokenMessengerAddress The CCTP TokenMessenger address
     * @custom:reverts None
     * @custom:events None
     */
    function getTokenMessenger() external view returns (address tokenMessengerAddress) {
        return address(TOKEN_MESSENGER);
    }
}
