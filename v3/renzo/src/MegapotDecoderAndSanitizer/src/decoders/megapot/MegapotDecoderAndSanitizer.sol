// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IDecoderAndSanitizer} from "../../interfaces/IDecoderAndSanitizer.sol";

/// @title MegapotDecoderAndSanitizer
/// @notice Decodes and sanitizes calldata for Megapot Jackpot and JackpotRandomTicketBuyer.
///         Validates that ticket recipient addresses point back to the caller and that the
///         Renzo referrer address is present in the referrers array.
contract MegapotDecoderAndSanitizer is IDecoderAndSanitizer {
    // ── Errors ──────────────────────────────────────────────────────────────

    error UnsupportedSelector(bytes4 selector);
    error InvalidRecipient(address expected, address got);
    error ReferrerNotFound(address expected);

    // ── Immutables ──────────────────────────────────────────────────────────

    /// @notice The Renzo referrer address that must be present in every ticket purchase
    address public immutable renzoReferrer;

    // ── Jackpot selectors ────────────────────────────────────────────────────

    // buyTickets((uint8[],uint8)[],address,address[],uint256[],bytes32)
    bytes4 internal constant BUY_TICKETS_SELECTOR = 0xde88c28a;
    // claimWinnings(uint256[])
    bytes4 internal constant CLAIM_WINNINGS_SELECTOR = 0x1bf0ade0;
    // lpDeposit(uint256)
    bytes4 internal constant LP_DEPOSIT_SELECTOR = 0xb41b582c;
    // initiateWithdraw(uint256)
    bytes4 internal constant INITIATE_WITHDRAW_SELECTOR = 0x7e108d52;
    // finalizeWithdraw()
    bytes4 internal constant FINALIZE_WITHDRAW_SELECTOR = 0x30fcc737;
    // claimReferralFees()
    bytes4 internal constant CLAIM_REFERRAL_FEES_SELECTOR = 0x83a84ba9;

    // ── JackpotRandomTicketBuyer selectors ───────────────────────────────────

    // buyTickets(uint256,address,address[],uint256[],bytes32)
    bytes4 internal constant RANDOM_BUY_TICKETS_SELECTOR = 0x017d1217;

    constructor(address _renzoReferrer) {
        renzoReferrer = _renzoReferrer;
    }

    /// @inheritdoc IDecoderAndSanitizer
    function decode(bytes calldata calldata_, address caller) external view returns (bytes memory) {
        bytes4 selector = bytes4(calldata_[:4]);

        if (selector == BUY_TICKETS_SELECTOR) return _buyTickets(calldata_, caller);
        if (selector == RANDOM_BUY_TICKETS_SELECTOR) return _randomBuyTickets(calldata_, caller);
        if (selector == CLAIM_WINNINGS_SELECTOR) return "";
        if (selector == LP_DEPOSIT_SELECTOR) return "";
        if (selector == INITIATE_WITHDRAW_SELECTOR) return "";
        if (selector == FINALIZE_WITHDRAW_SELECTOR) return "";
        if (selector == CLAIM_REFERRAL_FEES_SELECTOR) return "";

        revert UnsupportedSelector(selector);
    }

    // ── Internal Decoders ───────────────────────────────────────────────────

    /// @dev buyTickets((uint8[],uint8)[] _tickets, address _recipient, address[] _referrers, uint256[] _referralSplit, bytes32 _source)
    ///      _recipient = param index 1 (static slot in ABI head)
    ///      _referrers = param index 2 (dynamic array, offset in head slot)
    function _buyTickets(bytes calldata calldata_, address caller) internal view returns (bytes memory) {
        address recipient = _extractAddress(calldata_, 1);

        if (recipient != caller) {
            revert InvalidRecipient(caller, recipient);
        }

        _verifyReferrer(calldata_, 2);

        return abi.encodePacked(recipient);
    }

    /// @dev buyTickets(uint256 _count, address _recipient, address[] _referrers, uint256[] _referralSplitBps, bytes32 _source)
    ///      _recipient = param index 1
    ///      _referrers = param index 2 (dynamic array, offset in head slot)
    function _randomBuyTickets(bytes calldata calldata_, address caller) internal view returns (bytes memory) {
        address recipient = _extractAddress(calldata_, 1);

        if (recipient != caller) {
            revert InvalidRecipient(caller, recipient);
        }

        _verifyReferrer(calldata_, 2);

        return abi.encodePacked(recipient);
    }

    /// @dev Verifies that renzoReferrer is present in the dynamic address[] at the given param index.
    ///      In ABI encoding, the head slot for a dynamic param contains an offset (relative to
    ///      the start of the params area, i.e. byte 4). At that offset: 32 bytes for array length,
    ///      then length * 32 bytes of elements.
    function _verifyReferrer(bytes calldata calldata_, uint8 paramIndex) internal view {
        // Read the offset to the dynamic array data (relative to byte 4)
        uint256 headSlot = 4 + uint256(paramIndex) * 32;
        require(calldata_.length >= headSlot + 32, "calldata too short");
        uint256 arrayOffset = uint256(bytes32(calldata_[headSlot:headSlot + 32]));

        // Array data starts at 4 + arrayOffset
        uint256 arrayStart = 4 + arrayOffset;
        require(calldata_.length >= arrayStart + 32, "calldata too short");
        uint256 arrayLen = uint256(bytes32(calldata_[arrayStart:arrayStart + 32]));

        require(calldata_.length >= arrayStart + 32 + arrayLen * 32, "calldata too short");

        // Search for renzoReferrer in the array
        for (uint256 i = 0; i < arrayLen; i++) {
            uint256 elemOffset = arrayStart + 32 + i * 32;
            address referrer = address(uint160(uint256(bytes32(calldata_[elemOffset:elemOffset + 32]))));
            if (referrer == renzoReferrer) {
                return;
            }
        }

        revert ReferrerNotFound(renzoReferrer);
    }

    /// @dev Extracts an address from calldata at the given parameter index
    /// @param calldata_ Full calldata including 4-byte selector
    /// @param paramIndex 0-based parameter index
    function _extractAddress(
        bytes calldata calldata_,
        uint8 paramIndex
    ) internal pure returns (address) {
        uint256 offset = 4 + uint256(paramIndex) * 32;
        require(calldata_.length >= offset + 32, "calldata too short");
        return address(uint160(uint256(bytes32(calldata_[offset:offset + 32]))));
    }
}
