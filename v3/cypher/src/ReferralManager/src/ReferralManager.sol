// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IReferralManager} from "./interfaces/IReferralManager.sol";

/**
 * @title ReferralManager
 * @notice Manages the referral system for the protocol.
 * @author Camelot
 */
contract ReferralManager is Ownable, IReferralManager {
    using SafeERC20 for IERC20;
    
    /// @notice The maximum fee basis points.
    uint256 public constant MAX_FEE_BPS = 10000;

    /// @notice The direct referral fee in basis points.
    uint256 public directRefFeeBps;

    /// @notice The indirect referral fee in basis points.
    uint256 public indirectRefFeeBps;

    /// @notice Mapping of user addresses to their referrer.
    mapping(address => address) public referredBy;

    /// @notice Mapping of user addresses to their indirect referrer.
    mapping(address => address) public indirectReferral;

    /// @notice Mapping of bonding curve addresses to their whitelist status.
    mapping(address => bool) public whitelistedBondingCurve;

    /// @notice Mapping of token addresses to their payout threshold.
    mapping(address => uint256) public payoutThreshold;

    /// @notice Mapping for referrer balances per token.
    mapping(address => mapping(address => uint256)) private _referrerBalances;

    /**
     * @notice Initializes the referral manager with fee settings and payout thresholds.
     * @param _directRefFeeBps The direct referral fee in basis points.
     * @param _indirectRefFeeBps The indirect referral fee in basis points.
     * @param tokens The token addresses for payout thresholds.
     * @param _payoutThresholds The payout thresholds for each token.
     */
    constructor(
        uint256 _directRefFeeBps,
        uint256 _indirectRefFeeBps,
        address[] memory tokens,
        uint256[] memory _payoutThresholds
    ) Ownable(msg.sender) {
        directRefFeeBps = _directRefFeeBps;
        indirectRefFeeBps = _indirectRefFeeBps;

        uint256 tokensLength = tokens.length;
        if (tokensLength > 0) {
            if (tokensLength != _payoutThresholds.length) {
                revert ArrayLengthMismatch();
            }

            for (uint256 i = 0; i < tokensLength;) {
                payoutThreshold[tokens[i]] = _payoutThresholds[i];
                emit PayoutThresholdSet(tokens[i], _payoutThresholds[i]);

                unchecked {
                    ++i;
                }
            }
        }

        emit DirectRefFeeBpsSet(_directRefFeeBps);
        emit IndirectRefFeeBpsSet(_indirectRefFeeBps);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function receiveReferral(address user, address token, uint256 amount) external {
        if (!whitelistedBondingCurve[msg.sender]) {
            revert Unauthorised();
        }
        address referrer = referredBy[user];

        if (referrer == address(0)) revert AddressZero();
        if (amount == 0) revert ZeroPayout();

        if (indirectReferral[user] != address(0)) {
            // If there is an indirect referral.
            uint256 indirectRefFeeShareBps = (indirectRefFeeBps * MAX_FEE_BPS) / (directRefFeeBps + indirectRefFeeBps);
            uint256 indirectReferralAmount = (amount * indirectRefFeeShareBps) / MAX_FEE_BPS;
            _referrerBalances[indirectReferral[user]][token] += indirectReferralAmount;

            emit ReferralRewardReceived(indirectReferral[user], user, token, indirectReferralAmount, false);

            uint256 directReferralAmount = amount - indirectReferralAmount;
            _referrerBalances[referrer][token] += directReferralAmount;

            emit ReferralRewardReceived(referrer, user, token, directReferralAmount, true);
        } else {
            _referrerBalances[referrer][token] += amount;
            emit ReferralRewardReceived(referrer, user, token, amount, true);
        }

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function setReferral(address referrer, address user) external {
        if (!whitelistedBondingCurve[msg.sender]) {
            revert Unauthorised();
        }

        if ((referredBy[user] != address(0)) || (referrer == user) || (referrer == address(0))) {
            return;
        }

        referredBy[user] = referrer;
        emit ReferralSet(referrer, user);

        address indirectReferrer = referredBy[referrer];
        if (indirectReferrer != address(0) && indirectReferrer != user) {
            indirectReferral[user] = indirectReferrer;
            emit IndirectReferralSet(indirectReferrer, user, referrer);
        }
    }

    /**
     * @inheritdoc IReferralManager
     */
    function quoteReferralFee(address user, uint256 amount) external view returns (uint256 referralFee) {
        uint256 bps = getReferralBpsFor(user);

        if (bps > 0) {
            referralFee = (amount * bps) / 1e4;
        }
    }

    /**
     * @inheritdoc IReferralManager
     */
    function getReferralBpsFor(address user) public view returns (uint256 totalReferralBps) {
        if (referredBy[user] == address(0)) {
            return 0;
        }

        totalReferralBps = directRefFeeBps;
        if (indirectReferral[user] != address(0)) {
            totalReferralBps += indirectRefFeeBps;
        }
    }

    /**
     * @inheritdoc IReferralManager
     */
    function claimReferralReward(address token) external {
        if (token == address(0)) revert AddressZero();
        uint256 reward = _referrerBalances[msg.sender][token];

        if (reward < payoutThreshold[token]) {
            revert PayoutBelowThreshold();
        }
        if (reward == 0) revert ZeroPayout();

        _referrerBalances[msg.sender][token] = 0;
        IERC20(token).safeTransfer(msg.sender, reward);

        emit ReferralPaidOut(msg.sender, token, reward);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function setDirectRefFeeBps(uint256 directRefFeeBps_) external onlyOwner {
        directRefFeeBps = directRefFeeBps_;
        emit DirectRefFeeBpsSet(directRefFeeBps);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function setIndirectRefFeeBps(uint256 indirectRefFeeBps_) external onlyOwner {
        indirectRefFeeBps = indirectRefFeeBps_;
        emit IndirectRefFeeBpsSet(indirectRefFeeBps);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function setPayoutThreshold(address[] calldata tokens, uint256[] calldata thresholds) external onlyOwner {
        uint256 tokensLength = tokens.length;
        if (tokensLength != thresholds.length) {
            revert ArrayLengthMismatch();
        }

        for (uint256 i; i < tokensLength;) {
            if (tokens[i] == address(0)) revert AddressZero();

            payoutThreshold[tokens[i]] = thresholds[i];
            emit PayoutThresholdSet(tokens[i], thresholds[i]);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @inheritdoc IReferralManager
     */
    function setWhitelistedBondingCurve(address bondingCurve, bool enable) external onlyOwner {
        if (bondingCurve == address(0)) revert AddressZero();

        whitelistedBondingCurve[bondingCurve] = enable;
        emit WhitelistedBondingCurveSet(bondingCurve, enable);
    }

    /**
     * @inheritdoc IReferralManager
     */
    function getReferralRewardFor(address user, address token) external view returns (uint256 reward) {
        reward = _referrerBalances[user][token];
    }
}
