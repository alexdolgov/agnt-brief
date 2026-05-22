// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SponsoredCCTPInterface } from "../interfaces/SponsoredCCTPInterface.sol";
import { SponsoredOFTInterface } from "../interfaces/SponsoredOFTInterface.sol";

interface ICoreWriter {
    function sendRawAction(bytes calldata data) external;
}

interface ISponsoredCCTPSrcPeriphery {
    function depositForBurn(
        SponsoredCCTPInterface.SponsoredCCTPQuote memory quote,
        bytes memory signature
    ) external;
}

interface ISponsoredOFTSrcPeriphery {
    function deposit(SponsoredOFTInterface.Quote calldata quote, bytes calldata signature) external payable;
}

interface IV3SpokePool {
    function depositV3(
        address depositor,
        address recipient,
        address inputToken,
        address outputToken,
        uint256 inputAmount,
        uint256 outputAmount,
        uint256 destinationChainId,
        address exclusiveRelayer,
        uint32 quoteTimestamp,
        uint32 fillDeadline,
        uint32 exclusivityDeadline,
        bytes calldata message
    ) external payable;
}

/**
 * @title HyperCoreDeposit
 * @notice Single deposit contract on HyperEVM for Across withdrawals from Hyperliquid.
 *
 * Flow:
 *  1. User signs an EIP-712 quote off-chain (committing to transfer params + HL nonce).
 *  2. User sends funds to this contract's address on HyperCore via HL sendAsset.
 *  3. Indexer matches the Core transaction to the signed quote using the HL nonce.
 *  4. Bot calls `pullFunds()` to move tokens from Core → HyperEVM.
 *  5. Bot calls one of `executeSpokePool()`, `executeCCTP()`, or `executeOFT()`.
 *
 * @dev Signature verification happens off-chain by the bot. On-chain we only enforce
 *      owner-gating and hlNonce replay protection.
 *
 * @custom:security-contact bugs@across.to
 */
contract HyperCoreDeposit {
    using SafeERC20 for IERC20;

    // ─── HyperCore constants ──────────────────────────────────────────
    address public constant CORE_WRITER = 0x3333333333333333333333333333333333333333;
    address public constant SPOT_BALANCE_PRECOMPILE = 0x0000000000000000000000000000000000000801;
    address public constant HYPE_SYSTEM_ADDRESS = 0x2222222222222222222222222222222222222222;
    uint160 public constant BASE_SYSTEM_ADDRESS = uint160(0x2000000000000000000000000000000000000000);
    bytes4 public constant SPOT_SEND_HEADER = 0x01000006;

    // ─── Structs ──────────────────────────────────────────────────────

    /// @notice Params for forwarding funds into the Across SpokePool.
    struct SpokePoolParams {
        address depositor;
        address recipient;
        address inputToken;
        address outputToken;
        uint256 inputAmount;
        uint256 outputAmount;
        uint256 destinationChainId;
        address exclusiveRelayer;
        uint32 quoteTimestamp;
        uint32 fillDeadline;
        uint32 exclusivityDeadline;
    }

    // ─── State ────────────────────────────────────────────────────────
    address public owner;
    address public spokePool;
    address public cctpPeriphery;
    address public oftPeriphery;
    mapping(uint64 => bool) public usedNonces;

    // ─── Events ───────────────────────────────────────────────────────
    event FundsPulled(uint64 indexed tokenIndex, uint64 coreAmount);
    event SpokePoolExecuted(uint64 indexed hlNonce, address indexed depositor, uint256 destinationChainId);
    event CCTPExecuted(uint64 indexed hlNonce, uint32 destinationDomain);
    event OFTExecuted(uint64 indexed hlNonce, uint32 dstEid);
    event Swept(address indexed token, address indexed to, uint256 amount);

    // ─── Errors ───────────────────────────────────────────────────────
    error NotOwner();
    error NonceAlreadyUsed();
    error ZeroAddress();
    error NothingToSweep();
    error TargetNotConfigured();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor(address _owner) {
        if (_owner == address(0)) revert ZeroAddress();
        owner = _owner;
    }

    // ─── Core → EVM transfer ─────────────────────────────────────────

    /**
     * @notice Pull funds from this contract's HyperCore balance to its HyperEVM balance.
     * @param tokenIndex HyperCore token index (e.g. 0 for USDC).
     * @param coreAmount Amount in Core units.
     */
    function pullFunds(uint64 tokenIndex, uint64 coreAmount) external onlyOwner {
        address systemAddr = _getSystemAddress(tokenIndex);
        bytes memory payload = abi.encodePacked(SPOT_SEND_HEADER, abi.encode(systemAddr, tokenIndex, coreAmount));
        ICoreWriter(CORE_WRITER).sendRawAction(payload);
        emit FundsPulled(tokenIndex, coreAmount);
    }

    // ─── Execute: SpokePool ──────────────────────────────────────────

    /**
     * @notice Deposit into the Across SpokePool.
     */
    function executeSpokePool(uint64 hlNonce, SpokePoolParams calldata params) external onlyOwner {
        if (spokePool == address(0)) revert TargetNotConfigured();
        _markNonce(hlNonce);

        IERC20(params.inputToken).forceApprove(spokePool, params.inputAmount);
        IV3SpokePool(spokePool).depositV3(
            params.depositor,
            params.recipient,
            params.inputToken,
            params.outputToken,
            params.inputAmount,
            params.outputAmount,
            params.destinationChainId,
            params.exclusiveRelayer,
            params.quoteTimestamp,
            params.fillDeadline,
            params.exclusivityDeadline,
            bytes("")
        );

        emit SpokePoolExecuted(hlNonce, params.depositor, params.destinationChainId);
    }

    // ─── Execute: CCTP ───────────────────────────────────────────────

    /**
     * @notice Forward tokens to SponsoredCCTPSrcPeriphery.
     */
    function executeCCTP(
        uint64 hlNonce,
        address inputToken,
        uint256 inputAmount,
        SponsoredCCTPInterface.SponsoredCCTPQuote calldata cctpQuote,
        bytes calldata cctpSignature
    ) external onlyOwner {
        if (cctpPeriphery == address(0)) revert TargetNotConfigured();
        _markNonce(hlNonce);

        IERC20(inputToken).forceApprove(cctpPeriphery, inputAmount);
        ISponsoredCCTPSrcPeriphery(cctpPeriphery).depositForBurn(cctpQuote, cctpSignature);

        emit CCTPExecuted(hlNonce, cctpQuote.destinationDomain);
    }

    // ─── Execute: OFT ────────────────────────────────────────────────

    /**
     * @notice Forward tokens to SponsoredOFTSrcPeriphery.
     */
    function executeOFT(
        uint64 hlNonce,
        address inputToken,
        uint256 inputAmount,
        SponsoredOFTInterface.Quote calldata oftQuote,
        bytes calldata oftSignature
    ) external payable onlyOwner {
        if (oftPeriphery == address(0)) revert TargetNotConfigured();
        _markNonce(hlNonce);

        IERC20(inputToken).forceApprove(oftPeriphery, inputAmount);
        ISponsoredOFTSrcPeriphery(oftPeriphery).deposit{ value: msg.value }(oftQuote, oftSignature);

        // Refund excess native fee to caller.
        uint256 refund = address(this).balance;
        if (refund > 0) {
            (bool ok, ) = msg.sender.call{ value: refund }("");
            require(ok, "native refund failed");
        }

        emit OFTExecuted(hlNonce, oftQuote.signedParams.dstEid);
    }

    // ─── View helpers ────────────────────────────────────────────────

    /**
     * @notice Check this contract's spot balance on HyperCore.
     */
    function coreBalance(uint64 tokenIndex) external view returns (uint64 total) {
        (bool success, bytes memory result) = SPOT_BALANCE_PRECOMPILE.staticcall(
            abi.encode(address(this), tokenIndex)
        );
        require(success, "spotBalance failed");
        (total, , ) = abi.decode(result, (uint64, uint64, uint64));
    }

    // ─── Admin ───────────────────────────────────────────────────────

    function setSpokePool(address _spokePool) external onlyOwner {
        spokePool = _spokePool;
    }

    function setCCTPPeriphery(address _cctpPeriphery) external onlyOwner {
        cctpPeriphery = _cctpPeriphery;
    }

    function setOFTPeriphery(address _oftPeriphery) external onlyOwner {
        oftPeriphery = _oftPeriphery;
    }

    function setOwner(address _owner) external onlyOwner {
        if (_owner == address(0)) revert ZeroAddress();
        owner = _owner;
    }

    function sweepERC20(address token, address to) external onlyOwner {
        uint256 bal = IERC20(token).balanceOf(address(this));
        if (bal == 0) revert NothingToSweep();
        IERC20(token).safeTransfer(to, bal);
        emit Swept(token, to, bal);
    }

    function sweepNative(address payable to) external onlyOwner {
        uint256 bal = address(this).balance;
        if (bal == 0) revert NothingToSweep();
        (bool ok, ) = to.call{ value: bal }("");
        require(ok, "native transfer failed");
    }

    // ─── Internal ────────────────────────────────────────────────────

    function _markNonce(uint64 hlNonce) internal {
        if (usedNonces[hlNonce]) revert NonceAlreadyUsed();
        usedNonces[hlNonce] = true;
    }

    function _getSystemAddress(uint64 tokenIndex) internal view returns (address) {
        if (tokenIndex == _hypeTokenIndex()) return HYPE_SYSTEM_ADDRESS;
        return address(BASE_SYSTEM_ADDRESS + tokenIndex);
    }

    function _hypeTokenIndex() internal view returns (uint64) {
        return block.chainid == 998 ? 1105 : 150;
    }

    receive() external payable {}
}
