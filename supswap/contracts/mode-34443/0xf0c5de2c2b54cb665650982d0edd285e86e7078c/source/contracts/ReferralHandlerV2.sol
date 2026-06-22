// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { Launchpad } from "./Launchpad.sol";
import { ReferralRouter } from "./ReferralRouter.sol";
import { ReferralHandler } from "./ReferralHandler.sol";

/*
 * --------------------------------------------------------------------------------
 *
 * @title   Referral Handler
 * @notice  Register and manage referrals, receive and attribute swap fees from Gauge instances
 * @dev     Version 2 supports escrow and state sync from other referral handlers.
 * @author  BowTiedPickle
 * @custom:version 2.0.0
 *
 * --------------------------------------------------------------------------------
 */
contract ReferralHandlerV2 is Ownable {
    ////////////////////////////////////////////////////////////////////////////////
    // CONSTANTS AND IMMUTABLES
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Fraction denominator
    uint256 public constant FRACTION_DENOMINATOR = 1e18;

    /// @dev The zero referral code is reserved for referral nonexistence
    bytes32 public constant ZERO_REFERRAL_CODE = bytes32(0);
    /// @dev The protocol referral code is reserved for protocol fees
    bytes32 public constant PROTOCOL_REFERRAL_CODE = ~bytes32(0);

    /// @notice The maximum fee that can be charged to claim a code from escrow
    uint256 public constant MAX_ESCROW_CLAIM_FEE = 0.01 ether;

    /// @notice The minimum escrow duration that can be set
    uint256 public constant MIN_ESCROW_DURATION = 7 * 24 * 3600;

    /// @notice Launchpad contract
    Launchpad public immutable LAUNCHPAD;

    /// @notice Referral router contract
    ReferralRouter public immutable REFERRAL_ROUTER;

    /// @notice Referral Handler V1
    ReferralHandler public immutable REFERRAL_HANDLER_V1;

    ////////////////////////////////////////////////////////////////////////////////
    // CONFIGURATION
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Default duration for referrals, 0 for no expiration
    uint256 public defaultDuration;

    /// @notice Fraction of fees given to referrer for volume tier 1 (1e18 = 100%)
    uint256 public tier1ReferralFraction = 0.2e18; // 20%

    /// @notice Volume threshold for volume tier 2, wei of ETH
    uint256 public tier2Volume = 30 ether;

    /// @notice Fraction of fees given to referrer for volume tier 2 (1e18 = 100%)
    uint256 public tier2ReferralFraction = 0.3e18; // 30%

    /// @notice Volume beyond which no referral fees are awarded, wei of ETH
    uint256 public cutoffVolume = type(uint256).max;

    /// @notice Treasury address
    address public treasury;

    /// @notice Fee to claim escrowed code
    uint256 public escrowFee = 0.002 ether;

    /// @notice Escrow duration before a code can no longer be claimed
    uint256 public escrowDuration = 90 days;

    /// @notice Escrow manager privileged address
    address public operator;

    ////////////////////////////////////////////////////////////////////////////////
    // STATE
    ////////////////////////////////////////////////////////////////////////////////

    struct Referral {
        // Referral code
        bytes32 code;
        // Unix epoch timestamp of expiration, 0 = no expiration
        uint256 expiry;
    }

    /// @dev Referral mapping
    mapping(address user => Referral referral) internal _referrals;

    struct CodeInfo {
        // ETH volume referred by this code
        uint256 volume;
        // Custom duration for this code, 0 to use the default
        uint256 customDuration;
        // Accumulated fees for this code
        uint256 accumulatedFees;
        // Payout address for this code
        address payoutAddress;
    }
    mapping(bytes32 code => CodeInfo codeInfo) public codes;

    mapping(address referrer => bytes32 code) public referrerToCode;

    struct EscrowInfo {
        // Address this code is being held for
        address escrowedFor;
        // Escrow expiration date, unix epoch timestamp
        uint256 escrowDeadline;
    }

    mapping(bytes32 code => EscrowInfo escrowInfo) public escrowedCodes;

    ////////////////////////////////////////////////////////////////////////////////
    // MODIFIERS
    ////////////////////////////////////////////////////////////////////////////////

    modifier onlyOperator() {
        if (msg.sender != operator) revert ReferralHandler__CallerIsNotOperator();
        _;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // CONSTRUCTOR
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @param   _launchpad      Launchpad contract
     * @param   _referralRouter Referral router contract
     * @param   _treasury       Treasury address
     * @param   _operator       Escrow manager address
     */
    constructor(
        Launchpad _launchpad,
        ReferralRouter _referralRouter,
        address _treasury,
        address _operator,
        address _referralHandlerV1
    ) Ownable(msg.sender) {
        if (
            address(_launchpad) == address(0) ||
            address(_referralRouter) == address(0) ||
            _treasury == address(0) ||
            _operator == address(0)
        ) revert ReferralHandler__ZeroAddress();
        LAUNCHPAD = _launchpad;
        REFERRAL_ROUTER = _referralRouter;
        REFERRAL_HANDLER_V1 = ReferralHandler(_referralHandlerV1);
        treasury = _treasury;
        operator = _operator;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // REFERRERS
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Register a referral code
     * @param   code    Referral code
     */
    function registerReferralCode(bytes32 code) external {
        if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (codes[code].payoutAddress != address(0)) revert ReferralHandler__CodeAlreadyRegistered();
        if (escrowedCodes[code].escrowedFor != address(0)) revert ReferralHandler__CodeInEscrow();
        if (referrerToCode[msg.sender] != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferrerAlreadyHasCode();

        // If the user does not themselves have a referral code set, set to the protocol code
        if (_referrals[msg.sender].code == ZERO_REFERRAL_CODE) {
            _referrals[msg.sender] = Referral(PROTOCOL_REFERRAL_CODE, 0);
            emit ReferralSet(msg.sender, PROTOCOL_REFERRAL_CODE, 0);
        }

        codes[code].payoutAddress = msg.sender;
        referrerToCode[msg.sender] = code;

        emit ReferralCodeRegistered(code, msg.sender);
    }

    /**
     * @notice  Withdraw fees for a referral code
     * @param   code    Referral code
     * @return  fees    Amount withdrawn
     */
    function withdrawFees(bytes32 code) external returns (uint256) {
        if (msg.sender != codes[code].payoutAddress) revert ReferralHandler__CallerNotCodeOwner();

        uint256 fees = codes[code].accumulatedFees;
        codes[code].accumulatedFees = 0;

        if (fees > 0) {
            payable(msg.sender).transfer(fees);
        }

        emit FeeWithdraw(code, msg.sender, fees);

        return fees;
    }

    /**
     * @notice  Set the payout address for a referral code
     * @param   code    Referral code
     * @param   payout  New payout address
     */
    function setPayoutAddress(bytes32 code, address payout) external {
        if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (msg.sender != codes[code].payoutAddress) revert ReferralHandler__CallerNotCodeOwner();
        if (payout == address(0)) revert ReferralHandler__ZeroAddress();
        if (referrerToCode[payout] != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferrerAlreadyHasCode();

        referrerToCode[msg.sender] = ZERO_REFERRAL_CODE;
        referrerToCode[payout] = code;
        codes[code].payoutAddress = payout;

        emit PayoutAddressSet(code, payout, msg.sender);
    }

    /**
     * @notice  Claim a referral code from escrow
     * @dev     Referral escrow must not be expired
     * @param   code        Referral code
     */
    function claimFromEscrow(bytes32 code) external payable {
        if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (msg.value != escrowFee) revert ReferralHandler__IncorrectEscrowFee();
        if (msg.sender != escrowedCodes[code].escrowedFor) revert ReferralHandler__CallerIsNotEscrowedFor();
        if (block.timestamp > escrowedCodes[code].escrowDeadline) revert ReferralHandler__EscrowExpired();
        if (referrerToCode[msg.sender] != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferrerAlreadyHasCode();

        // If the user does not themselves have a referral code set, set to the protocol code
        if (_referrals[msg.sender].code == ZERO_REFERRAL_CODE) {
            _referrals[msg.sender] = Referral(PROTOCOL_REFERRAL_CODE, 0);
            emit ReferralSet(msg.sender, PROTOCOL_REFERRAL_CODE, 0);
        }

        escrowedCodes[code].escrowedFor = address(0);
        escrowedCodes[code].escrowDeadline = 0;
        codes[code].payoutAddress = msg.sender;
        referrerToCode[msg.sender] = code;

        (bool success, ) = payable(treasury).call{ value: msg.value }("");
        if (!success) revert ReferralHandler__TransferFailure();

        emit EscrowClaimed(code, msg.sender);
    }

    ////////////////////////////////////////////////////////////////////////////////
    // USERS
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Set the referral code for the caller
     * @param   code    Referral code
     * @return  expiry  Expiry timestamp
     */
    function setReferral(address user, bytes32 code) external returns (uint256) {
        if (code == ZERO_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (msg.sender != user && msg.sender != address(REFERRAL_ROUTER)) revert ReferralHandler__CallerIsNotUserOrRouter();
        if (_referrals[user].code != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferralAlreadySet();
        uint256 duration = codes[code].customDuration > 0 ? codes[code].customDuration : defaultDuration;
        uint256 expiry = duration > 0 ? block.timestamp + duration : 0;

        _referrals[user] = Referral(code, expiry);

        emit ReferralSet(user, code, expiry);

        return expiry;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // VIEWS
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Get the referral info for a user
     * @param   user    User address
     * @return  referral    Referral info
     */
    function getReferralInfo(address user) external view returns (Referral memory) {
        return _referrals[user];
    }

    /**
     * @notice  Get the referral code used by a user
     * @param   user    User address
     * @return  code    Referral code
     */
    function getReferralCode(address user) external view returns (bytes32) {
        return _referrals[user].code;
    }

    /**
     * @notice  Get the volume referred by a referral code
     * @param   code    Referral code
     * @return  volume  Referred swap volume, wei of ETH
     */
    function referredVolume(bytes32 code) external view returns (uint256) {
        return codes[code].volume;
    }

    /**
     * @notice  Get the custom duration for a referral code
     * @param   code    Referral code
     * @return  duration    Custom duration, seconds, 0 for default
     */
    function customDuration(bytes32 code) external view returns (uint256) {
        return codes[code].customDuration;
    }

    /**
     * @notice  Get the payout address for a referral code
     * @param   code    Referral code
     * @return  payoutAddress    Payout address
     */
    function payoutAddress(bytes32 code) external view returns (address) {
        return codes[code].payoutAddress;
    }

    /**
     * @notice  Get the accumulated fees for a referral code
     * @param   code    Referral code
     * @return  accumulatedFees    Accumulated fees, wei of ETH
     */
    function accumulatedFees(bytes32 code) external view returns (uint256) {
        return codes[code].accumulatedFees;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // HOOKS
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Handle fees from a swap
     * @dev     May only be called by Gauge contracts deployed from the Launchpad
     * @dev     Fees are passed as `msg.value`
     * @param   user        Swap recipient address
     * @param   token       Token address associated with the calling gauge
     * @param   ethVolume   ETH volume of the swap
     * @return  referredFee Referred fee
     */
    function handleFees(address user, address token, uint256 ethVolume) external payable returns (uint256) {
        if (msg.sender != LAUNCHPAD.tokenToGauge(token)) revert ReferralHandler__CallerIsNotGauge();

        Referral memory referral = _referrals[user];

        uint256 referredFee;
        if (
            ethVolume > 0 &&
            msg.value > 0 &&
            referral.code != ZERO_REFERRAL_CODE &&
            referral.code != PROTOCOL_REFERRAL_CODE &&
            (referral.expiry == 0 || referral.expiry >= block.timestamp)
        ) {
            // If code is valid proceed to fee calculation
            CodeInfo storage codeInfo = codes[referral.code];

            uint256 remainingTier1Volume = codeInfo.volume >= tier2Volume ? 0 : tier2Volume - codeInfo.volume;
            uint256 remainingTier2Volume = codeInfo.volume >= cutoffVolume ? 0 : cutoffVolume - codeInfo.volume - remainingTier1Volume;
            uint256 tier1Amount = ethVolume > remainingTier1Volume ? remainingTier1Volume : ethVolume;
            uint256 tier2Amount = ethVolume - tier1Amount > remainingTier2Volume ? remainingTier2Volume : ethVolume - tier1Amount;

            // Calculate fees due at each tier
            if (tier1Amount > 0) {
                referredFee += (msg.value * tier1Amount * tier1ReferralFraction) / (ethVolume * FRACTION_DENOMINATOR);
            }
            if (tier2Amount > 0) {
                referredFee += (msg.value * tier2Amount * tier2ReferralFraction) / (ethVolume * FRACTION_DENOMINATOR);
            }

            codeInfo.volume += ethVolume;
            codeInfo.accumulatedFees += referredFee;

            // Protocol takes remainder
            if (msg.value > referredFee) {
                codes[PROTOCOL_REFERRAL_CODE].accumulatedFees += msg.value - referredFee;
            }
        } else {
            // If code invalid, protocol gets credited
            codes[PROTOCOL_REFERRAL_CODE].volume += ethVolume;
            codes[PROTOCOL_REFERRAL_CODE].accumulatedFees += msg.value;

            // Prepare values for emitting event
            referral.code = PROTOCOL_REFERRAL_CODE;
            referredFee = msg.value;
        }

        emit SwapReferred(user, referral.code, ethVolume, referredFee);

        return (referredFee);
    }

    ////////////////////////////////////////////////////////////////////////////////
    // ESCROW OPERATION
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Escrow a referral code
     * @param   code    Referral code
     * @param   escrowFor   Address to escrow the code for
     */
    function escrowCode(bytes32 code, address escrowFor) external onlyOperator {
        if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (escrowFor == address(0)) revert ReferralHandler__ZeroAddress();
        if (codes[code].payoutAddress != address(0)) revert ReferralHandler__CodeAlreadyRegistered();
        if (escrowedCodes[code].escrowedFor != address(0)) revert ReferralHandler__CodeInEscrow();
        if (referrerToCode[escrowFor] != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferrerAlreadyHasCode();

        uint256 deadline = block.timestamp + escrowDuration;
        escrowedCodes[code].escrowedFor = escrowFor;
        escrowedCodes[code].escrowDeadline = deadline;

        emit CodeEscrowed(code, escrowFor, deadline);
    }

    /**
     * @notice  Transfer an escrowed code to a new recipient
     * @dev     May only be called after escrow deadline has elapsed
     * @param   code        Referral code
     * @param   recipient   New recipient address
     */
    function transferEscrowedCode(bytes32 code, address recipient) external onlyOperator {
        if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
        if (recipient == address(0)) revert ReferralHandler__ZeroAddress();

        if (referrerToCode[recipient] != ZERO_REFERRAL_CODE) revert ReferralHandler__ReferrerAlreadyHasCode();
        if (codes[code].payoutAddress != address(0)) revert ReferralHandler__CodeAlreadyRegistered();
        EscrowInfo memory escrowedCode = escrowedCodes[code];
        if (escrowedCode.escrowedFor == address(0)) revert ReferralHandler__CodeNotInEscrow(code);
        if (recipient != escrowedCode.escrowedFor && block.timestamp <= escrowedCode.escrowDeadline)
            revert ReferralHandler__InvalidEscrowTransfer();

        emit EscrowTransferred(code, recipient, escrowedCodes[code].escrowedFor);
        escrowedCodes[code].escrowedFor = address(0);
        escrowedCodes[code].escrowDeadline = 0;
        codes[code].payoutAddress = recipient;
        referrerToCode[recipient] = code;
    }

    /**
     * @notice  Withdraw fees for a list of escrowed codes
     * @param   _codes  Array of codes
     * @return  totalFees   Total fees withdrawn
     */
    function withdrawEscrowedFees(bytes32[] calldata _codes) external returns (uint256) {
        uint256 totalFees;
        address cachedTreasury = treasury;
        for (uint256 i; i < _codes.length; ) {
            bytes32 code = _codes[i];
            if (code == ZERO_REFERRAL_CODE || code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();

            EscrowInfo memory escrowedCode = escrowedCodes[code];
            if (escrowedCode.escrowDeadline == 0) revert ReferralHandler__CodeNotInEscrow(code);
            if (block.timestamp <= escrowedCode.escrowDeadline) revert ReferralHandler__InvalidEscrowWithdraw(code);

            uint256 fees = codes[code].accumulatedFees;
            codes[code].accumulatedFees = 0;

            emit FeeWithdraw(code, cachedTreasury, fees);

            totalFees += fees;
            unchecked {
                ++i;
            }
        }

        if (totalFees > 0) {
            (bool success, ) = payable(cachedTreasury).call{ value: totalFees }("");
            if (!success) revert ReferralHandler__TransferFailure();
        }

        return totalFees;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // ADMINISTRATION
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Withdraw protocol fees
     */
    function withdrawProtocolFees() external returns (uint256) {
        uint256 fees = codes[PROTOCOL_REFERRAL_CODE].accumulatedFees;
        codes[PROTOCOL_REFERRAL_CODE].accumulatedFees = 0;

        if (fees > 0) {
            (bool success, ) = payable(treasury).call{ value: fees }("");
            if (!success) revert ReferralHandler__TransferFailure();
        }

        emit FeeWithdraw(PROTOCOL_REFERRAL_CODE, treasury, fees);

        return fees;
    }

    /**
     * @notice  Set the default referral duration
     * @param   _defaultDuration    New default duration
     */
    function setDefaultDuration(uint256 _defaultDuration) external onlyOwner {
        emit DefaultDurationSet(_defaultDuration, defaultDuration);
        defaultDuration = _defaultDuration;
    }

    /**
     * @notice  Set the tier volume limits
     * @param   _tier2Volume   New tier 1 volume
     * @param   _cutoffVolume   New tier 2 volume
     */
    function setTierVolume(uint256 _tier2Volume, uint256 _cutoffVolume) external onlyOwner {
        if (_tier2Volume > _cutoffVolume) revert ReferralHandler__TierOrdering();
        emit TierVolumeSet(_tier2Volume, tier2Volume, _cutoffVolume, cutoffVolume);
        tier2Volume = _tier2Volume;
        cutoffVolume = _cutoffVolume;
    }

    /**
     * @notice  Set the tier referral fractions
     * @param   _tier1ReferralFraction    New tier 1 referral fraction
     * @param   _tier2ReferralFraction    New tier 2 referral fraction
     */
    function setTierReferralFraction(uint256 _tier1ReferralFraction, uint256 _tier2ReferralFraction) external onlyOwner {
        if (_tier1ReferralFraction > FRACTION_DENOMINATOR || _tier2ReferralFraction > FRACTION_DENOMINATOR)
            revert ReferralHandler__ExcessiveFraction();
        emit TierReferralFractionSet(_tier1ReferralFraction, tier1ReferralFraction, _tier2ReferralFraction, tier2ReferralFraction);
        tier1ReferralFraction = _tier1ReferralFraction;
        tier2ReferralFraction = _tier2ReferralFraction;
    }

    /**
     * @notice  Set the treasury address
     * @param   _treasury   New treasury address
     */
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert ReferralHandler__ZeroAddress();
        emit TreasurySet(_treasury, treasury);
        treasury = _treasury;
    }

    struct DurationInput {
        bytes32 code;
        uint256 duration;
    }

    /**
     * @notice  Set custom durations for referral codes
     * @param   inputs  Array of code-duration pairs
     */
    function setCustomDurations(DurationInput[] calldata inputs) external onlyOwner {
        for (uint256 i; i < inputs.length; ) {
            if (inputs[i].code == ZERO_REFERRAL_CODE || inputs[i].code == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();
            emit CustomDurationSet(inputs[i].code, inputs[i].duration, codes[inputs[i].code].customDuration);
            codes[inputs[i].code].customDuration = inputs[i].duration;
            unchecked {
                ++i;
            }
        }
    }

    struct ExpiryInput {
        address user;
        uint256 expiry;
    }

    /**
     * @notice  Override referral expiries
     * @param   inputs  Array of user-expiry pairs
     */
    function overrideExpiries(ExpiryInput[] calldata inputs) external onlyOwner {
        for (uint256 i; i < inputs.length; ) {
            Referral storage referral = _referrals[inputs[i].user];
            emit ExpiryOverriden(inputs[i].user, inputs[i].expiry, referral.expiry);
            referral.expiry = inputs[i].expiry;
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice  Set the escrow fee
     * @param   _escrowFee  New escrow fee
     */
    function setEscrowFee(uint256 _escrowFee) external onlyOwner {
        if (_escrowFee > MAX_ESCROW_CLAIM_FEE) revert ReferralHandler__ExcessiveEscrowFee();
        emit EscrowFeeSet(_escrowFee, escrowFee);
        escrowFee = _escrowFee;
    }

    /**
     * @notice  Set the operator
     * @param   _operator  New operator
     */
    function setOperator(address _operator) external onlyOwner {
        if (_operator == address(0)) revert ReferralHandler__ZeroAddress();
        emit OperatorSet(_operator, operator);
        operator = _operator;
    }

    /**
     * @notice  Set the escrow duration
     * @param   _escrowDuration  New escrow duration
     */
    function setEscrowDuration(uint256 _escrowDuration) external onlyOwner {
        if (_escrowDuration < MIN_ESCROW_DURATION) revert ReferralHandler__InsufficientEscrowDuration();
        emit EscrowDurationSet(_escrowDuration, escrowDuration);
        escrowDuration = _escrowDuration;
    }

    /**
     * @notice  Sync state from another referral handler
     * @param   _codes  Array of codes to sync
     * @param   _users  Array of users to sync
     */
    function sync(bytes32[] calldata _codes, address[] calldata _users) external onlyOperator {
        // Process codes
        for (uint256 i; i < _codes.length; ) {
            // If code is invalid, revert
            if (_codes[i] == ZERO_REFERRAL_CODE || _codes[i] == PROTOCOL_REFERRAL_CODE) revert ReferralHandler__InvalidCode();

            // If our contract has data already, skip sync
            if (codes[_codes[i]].payoutAddress != address(0)) {
                unchecked {
                    ++i;
                    continue;
                }
            }

            // Else load data from other contract
            (, uint256 duration, , address payout) = REFERRAL_HANDLER_V1.codes(_codes[i]);
            if (payout != address(0)) {
                codes[_codes[i]].payoutAddress = payout;
                codes[_codes[i]].customDuration = duration;
                referrerToCode[payout] = _codes[i];
                emit ReferralCodeRegistered(_codes[i], payout);
            }

            unchecked {
                ++i;
            }
        }

        // Process users
        for (uint256 i; i < _users.length; ) {
            // If our contract has data already, skip sync
            if (_referrals[_users[i]].code != bytes32(0)) {
                unchecked {
                    ++i;
                    continue;
                }
            }

            // Else load data from other contract
            ReferralHandler.Referral memory info = REFERRAL_HANDLER_V1.getReferralInfo(_users[i]);
            if (info.code != bytes32(0)) {
                _referrals[_users[i]] = Referral(info.code, info.expiry);
                emit ReferralSet(_users[i], info.code, info.expiry);
            }

            unchecked {
                ++i;
            }
        }
    }
    ////////////////////////////////////////////////////////////////////////////////
    // ERRORS
    ////////////////////////////////////////////////////////////////////////////////

    error ReferralHandler__ZeroAddress();
    error ReferralHandler__InvalidCode();
    error ReferralHandler__CodeAlreadyRegistered();
    error ReferralHandler__CodeInEscrow();
    error ReferralHandler__CallerNotCodeOwner();
    error ReferralHandler__ExcessiveFraction();
    error ReferralHandler__TierOrdering();
    error ReferralHandler__TransferFailure();
    error ReferralHandler__CallerIsNotGauge();
    error ReferralHandler__CallerIsNotUserOrRouter();
    error ReferralHandler__ReferralAlreadySet();
    error ReferralHandler__ReferrerAlreadyHasCode();
    error ReferralHandler__CodeNotInEscrow(bytes32 code);
    error ReferralHandler__IncorrectEscrowFee();
    error ReferralHandler__EscrowExpired();
    error ReferralHandler__CallerIsNotEscrowedFor();
    error ReferralHandler__ExcessiveEscrowFee();
    error ReferralHandler__CallerIsNotOperator();
    error ReferralHandler__InsufficientEscrowDuration();
    error ReferralHandler__InvalidEscrowTransfer();
    error ReferralHandler__InvalidEscrowWithdraw(bytes32 code);

    ////////////////////////////////////////////////////////////////////////////////
    // EVENTS
    ////////////////////////////////////////////////////////////////////////////////

    event ReferralCodeRegistered(bytes32 indexed code, address indexed payoutAddress);
    event PayoutAddressSet(bytes32 indexed code, address newPayoutAddress, address oldPayoutAddress);
    event ReferralSet(address indexed user, bytes32 indexed code, uint256 expiry);
    event SwapReferred(address indexed user, bytes32 indexed code, uint256 ethVolume, uint256 referredFees);
    event FeeWithdraw(bytes32 indexed code, address indexed payoutAddress, uint256 amount);
    event EscrowClaimed(bytes32 indexed code, address indexed user);
    event CodeEscrowed(bytes32 indexed code, address escrowedFor, uint256 escrowDeadline);
    event EscrowTransferred(bytes32 indexed code, address indexed newOwner, address escrowedFor);

    event DefaultDurationSet(uint256 newDuration, uint256 oldDuration);
    event TierVolumeSet(uint256 tier1newVolume, uint256 tier1oldVolume, uint256 tier2newVolume, uint256 tier2oldVolume);
    event TierReferralFractionSet(uint256 tier1newFraction, uint256 tier1oldFraction, uint256 tier2newFraction, uint256 tier2oldFraction);
    event TreasurySet(address newTreasury, address oldTreasury);
    event CustomDurationSet(bytes32 indexed code, uint256 newDuration, uint256 oldDuration);
    event ExpiryOverriden(address user, uint256 newExpiry, uint256 oldExpiry);
    event EscrowFeeSet(uint256 newFee, uint256 oldFee);
    event OperatorSet(address newOperator, address oldOperator);
    event EscrowDurationSet(uint256 newDuration, uint256 oldDuration);
}
