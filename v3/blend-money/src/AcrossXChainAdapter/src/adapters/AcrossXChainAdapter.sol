// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {IXChainAdapterController} from "../interfaces/controllers/IXChainAdapterController.sol";
import {V3SpokePoolInterface} from "across-protocol/interfaces/V3SpokePoolInterface.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {PriceLib} from "../libraries/PriceLib.sol";

/**
 * @notice Parameters for Across adapter execute. Wraps DepositV3Params with slippage and decimal override.
 * @dev Passed as ABI-encoded bytes to AcrossXChainAdapter.execute.
 */
struct AcrossAdapterParams {
    V3SpokePoolInterface.DepositV3Params depositParams;
    uint256 slippageConstraint;
    uint8 destinationTokenDecimalOverride;
}

/**
 * @title AcrossXChainAdapter
 * @notice Adapter that bridges tokens using Across V3 SpokePool.
 * @dev Validates inputs and forwards deposits to Across. Assumes caller transfers
 *      the required `inputToken` amount to this contract before `execute` is invoked.
 *      Follows CEI. Emits no events; relies on Across contract events for observability.
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @custom:security-contact security@blend.money
 */
contract AcrossXChainAdapter is IXChainAdapterController {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the spoke pool address is invalid
     */
    error InvalidSpokePoolAddress();

    /**
     * @notice Thrown when the chain ID is invalid
     */
    error InvalidChainId();

    /**
     * @notice Thrown when the recipient is invalid
     */
    error InvalidRecipient();

    /**
     * @notice Thrown when the sender is invalid
     */
    error InvalidSender();

    /**
     * @notice Thrown when the input token is invalid
     */
    error InvalidInputToken();

    /**
     * @notice Thrown when the message is not empty
     */
    error InvalidMessage();

    /**
     * @notice Thrown when the output amount is zero
     */
    error InvalidOutputAmount();

    /**
     * @notice Thrown when the contract has insufficient balance
     */
    error InvalidBalance();

    /**
     * @notice Thrown when output amount (normalized) is less than minimum acceptable (input with slippage applied)
     */
    error SlippageExceeded();

    /**
     * @notice Thrown when slippage constraint exceeds 10_000 bps (100%)
     */
    error InvalidSlippageConstraint();

    /*//////////////////////////////////////////////////////////////
                                STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Across V3 SpokePool used to submit deposits. Immutable after deployment.
     */
    V3SpokePoolInterface private immutable SPOKE_POOL;

    /**
     * @dev Mapping of supported destination chain IDs. Uses uint256 keys to support
     *      full EVM chain IDs (e.g., 266, 1101, 42161) without uint8 truncation aliasing.
     */
    mapping(uint256 => bool) private _enabledChainIds;

    /**
     * @notice Initialize the adapter with an Across SpokePool and supported chain IDs.
     * @dev Chain IDs stored as uint256 to match IXChainAdapterController and CCTPXChainAdapter.
     *      Non-zero spokePool required.
     * @param spokePool The Across V3 SpokePool contract
     * @param enabledChainIds Destination chain IDs enabled for this adapter
     */
    constructor(V3SpokePoolInterface spokePool, uint256[] memory enabledChainIds) {
        require(address(spokePool) != address(0), InvalidSpokePoolAddress());

        SPOKE_POOL = spokePool;
        for (uint256 i = 0; i < enabledChainIds.length; i++) {
            _enabledChainIds[enabledChainIds[i]] = true;
        }
    }

    /**
     * @notice Check whether a destination chain is supported.
     * @dev Uses uint256 lookup; no truncation. Aligned with CCTPXChainAdapter and IXChainAdapterController.
     * @param chainId The destination chain ID to validate
     * @return bool isSupported True if supported
     */
    function isChainSupported(uint256 chainId) external view override returns (bool) {
        return _enabledChainIds[chainId];
    }

    /**
     * @notice Execute a cross-chain token deposit via Across.
     * @dev Expects `data` to be abi-encoded `AcrossAdapterParams`. Validates fields against provided
     *      `chainId`, `_sender`, `_recipient`, and `_inputToken`. Enforces output >= applySlippage(input,
     *      slippageConstraint) after decimal normalization.
     *      destinationTokenDecimalOverride 0 means use input token decimals for output. Requires that this
     *      contract holds at least inputAmount prior to call. Approves and calls Across SpokePool, then
     *      clears approval and refunds any dust to `_sender`.
     * @param chainId The destination chain ID
     * @param _sender The expected initiator on source chain
     * @param _recipient The expected recipient on destination chain
     * @param _inputToken The token being bridged
     * @param data ABI-encoded `AcrossAdapterParams` for Across
     * @custom:reverts InvalidChainId when unsupported or mismatched chainId
     * @custom:reverts InvalidRecipient when recipient mismatch
     * @custom:reverts InvalidSender when depositor mismatch
     * @custom:reverts InvalidInputToken when input token mismatch
     * @custom:reverts InvalidMessage when message is not empty
     * @custom:reverts InvalidOutputAmount when output amount is zero
     * @custom:reverts InvalidBalance when balance is zero or insufficient
     * @custom:reverts InvalidSlippageConstraint when slippageConstraint > 10_000 bps
     * @custom:reverts SlippageExceeded when output is below minimum (input minus slippage)
     * @custom:reverts InvalidDecimalScale when PriceLib.normalize sees |decimals1 - decimals2| > 77
     * @custom:reverts NormalizationOverflow when PriceLib.normalize scaling overflows uint256
     * @custom:events None; relies on Across SpokePool events.
     */
    function execute(uint256 chainId, address _sender, address _recipient, IERC20 _inputToken, bytes calldata data)
        external
        override
    {
        require(_enabledChainIds[chainId], InvalidChainId());
        AcrossAdapterParams memory params = abi.decode(data, (AcrossAdapterParams));
        require(params.slippageConstraint <= 10_000, InvalidSlippageConstraint());

        V3SpokePoolInterface.DepositV3Params memory depositParams = params.depositParams;

        uint8 inputDecimals = IERC20Metadata(address(_inputToken)).decimals();
        uint8 outputDecimals =
            params.destinationTokenDecimalOverride != 0 ? params.destinationTokenDecimalOverride : inputDecimals;
        (uint256 inputNorm, uint256 outputNorm) =
            PriceLib.normalize(depositParams.inputAmount, inputDecimals, depositParams.outputAmount, outputDecimals);
        uint256 minOutputNorm = PriceLib.applySlippage(inputNorm, params.slippageConstraint);
        require(outputNorm >= minOutputNorm, SlippageExceeded());

        bytes32 depositor = bytes32(uint256(uint160(_sender)));
        bytes32 recipient = bytes32(uint256(uint160(_recipient)));
        bytes32 inputToken = bytes32(uint256(uint160(address(_inputToken))));

        uint256 balance = _inputToken.balanceOf(address(this));

        require(balance > 0 && balance >= depositParams.inputAmount, InvalidBalance());
        require(depositParams.destinationChainId == chainId, InvalidChainId());
        require(depositParams.recipient == recipient, InvalidRecipient());
        require(depositParams.depositor == depositor, InvalidSender());
        require(depositParams.inputToken == inputToken, InvalidInputToken());
        require(depositParams.message.length == 0, InvalidMessage());
        require(depositParams.outputAmount > 0, InvalidOutputAmount());

        _inputToken.forceApprove(address(SPOKE_POOL), depositParams.inputAmount);

        V3SpokePoolInterface(SPOKE_POOL).deposit(
            depositor,
            recipient,
            inputToken,
            depositParams.outputToken,
            depositParams.inputAmount,
            depositParams.outputAmount,
            chainId,
            depositParams.exclusiveRelayer,
            depositParams.quoteTimestamp,
            depositParams.fillDeadline,
            depositParams.exclusivityParameter,
            depositParams.message
        );

        _inputToken.forceApprove(address(SPOKE_POOL), 0);

        // We can either choose to send dust to the recipient cross-chain or refund it to the sender. Either way, it's
        // going to the user, but sending it back to the sender is more gas efficient.
        uint256 dust = _inputToken.balanceOf(address(this));
        if (dust > 0) {
            _inputToken.safeTransfer(_sender, dust);
        }
    }
}
