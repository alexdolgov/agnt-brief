// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IDividends.sol";
import "./RestrictedLockupToken.sol";
import "./EasyAccessControl.sol";

contract Dividends is IDividends, EasyAccessControl, ReentrancyGuard {
    RestrictedLockupToken public restrictedLockupToken;

    using SafeERC20 for IERC20;

    /// @dev tokens -> security tokens; funds -> ERC20 tokens used for dividends
    struct FundedDividends {
        uint256 initialFunds; // Initial amount of dividend tokens funded
        uint256 totalFunds; // Total dividend tokens
        uint256 unusedFunds; // Unused dividend tokens
        uint256 adjustedClaimedFunds; // Total dividends already claimed; scaled by adjustedScalingFactor to account for changes to proportional share
        uint256 adjustedScalingFactor; // Accounts for situations of multiple funded dividends per snapshot, and its changes to proportional awarded balance
    }

    /// @dev snapshotID => token => receiver => amount of claimed dividend funds
    mapping(uint256 => mapping(address => mapping(address => uint256))) claimedFunds; // claimed dividend funds of ERC20
    /// @dev snapshotID => token => receiver => scaled amount of claimed dividend funds
    mapping(uint256 => mapping(address => mapping(address => uint256))) adjustedClaimedFundsPerUser; // claimed dividend funds of ERC20; scaled by the adjustedScalingFactor

    /// @dev snapshotID => token addr => FundedDividends struct
    mapping(uint256 => mapping(address => FundedDividends)) fundedDividends;

    /// @dev Accuracy of division
    uint256 public immutable TOKEN_PRECISION_DIVIDER;

    constructor(
        address contractAdmin_,
        address tokenTransferAdmin_,
        address restrictedLockupTokenAddress_
    ) ReentrancyGuard() EasyAccessControl(contractAdmin_) {
        require(
            tokenTransferAdmin_ != address(0),
            "Cannot set 0x0 as tokenTransferAdmin"
        );
        require(
            restrictedLockupTokenAddress_ != address(0),
            "Cannot set 0x0 as restrictedLockupTokenAddress"
        );

        setupRole(tokenTransferAdmin_, TRANSFER_ADMIN_ROLE);

        restrictedLockupToken = RestrictedLockupToken(
            restrictedLockupTokenAddress_
        );

        TOKEN_PRECISION_DIVIDER = 10 ** restrictedLockupToken.decimals();
    }

    modifier onlyValidSnapshot(uint256 snapshotID) {
        require(snapshotID > 0, "Snapshot ID must be greater than 0");
        require(
            snapshotID <= restrictedLockupToken.getCurrentSnapshotId(),
            "Snapshot ID must be less than or equal to current snapshot ID"
        );
        _;
    }

    /// @inheritdoc IDividends
    function batchClaimDividend(
        address token,
        uint256[] calldata snapshotIds
    ) external override {
        uint256 _snapshotIdsLength = snapshotIds.length;
        for (uint256 i; i < _snapshotIdsLength; ) {
            claimDividend(token, snapshotIds[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IDividends
    function claimedBalanceAt(
        address token,
        address receiver,
        uint256 snapshotId
    ) public view override returns (uint256) {
        return claimedFunds[snapshotId][token][receiver];
    }

    /// @dev Calculate current adjustedClaimed balance of receiver in security tokens mul by adjustedScalingFactor
    /// Added to reduce gas cost
    function _adjustedClaimedBalanceAt(
        address token,
        address receiver,
        uint256 snapshotId
    ) private view returns (uint256) {
        return
            restrictedLockupToken.balanceOfAt(receiver, snapshotId) *
            fundedDividends[snapshotId][token].adjustedScalingFactor -
            adjustedClaimedFundsPerUser[snapshotId][token][receiver];
    }

    /// @inheritdoc IDividends
    function claimDividend(
        address token,
        uint256 snapshotId
    ) public override nonReentrant onlyValidSnapshot(snapshotId) {
        uint256 unclaimedBalance = unclaimedBalanceAt(
            token,
            msg.sender,
            snapshotId
        );

        require(unclaimedBalance > 0, "You can't receive more tokens");

        claimedFunds[snapshotId][token][msg.sender] += unclaimedBalance;
        fundedDividends[snapshotId][token].unusedFunds -= unclaimedBalance;

        uint256 _adjustedClaimedBalance = _adjustedClaimedBalanceAt(
            token,
            msg.sender,
            snapshotId
        );

        // Update states
        fundedDividends[snapshotId][token]
            .adjustedClaimedFunds += _adjustedClaimedBalance;
        adjustedClaimedFundsPerUser[snapshotId][token][
            msg.sender
        ] += _adjustedClaimedBalance;

        emit Claimed(msg.sender, token, unclaimedBalance, snapshotId);

        IERC20(token).safeTransfer(msg.sender, unclaimedBalance);
    }

    /**
     * @dev Fund any ERC20 tokens into current contract
     * Tokens can be claimed by holders of RestrictedSwap Token uses claimDividends method
     * @param token ERC20 token address
     * @param amount amount of tokens to fund
     * @param snapshotId snapshot ID of RestrictedSwap Token
     */
    function fundDividend(
        address token,
        uint256 amount,
        uint256 snapshotId
    )
        external
        override
        nonReentrant
        onlyTransferAdmin
        onlyValidSnapshot(snapshotId)
    {
        require(token != address(0), "Invalid token address");
        require(amount > 0, "Amount must be > 0");

        IERC20 paymentToken = IERC20(token);

        fundedDividends[snapshotId][token].unusedFunds += amount;
        fundedDividends[snapshotId][token].totalFunds += amount;

        /// @notice before adjustedScalingFactor has been defined; ie no initialFunds
        if (fundedDividends[snapshotId][token].adjustedScalingFactor == 0) {
            fundedDividends[snapshotId][token].adjustedScalingFactor =
                1 *
                TOKEN_PRECISION_DIVIDER;
            fundedDividends[snapshotId][token].initialFunds = amount;
        } else {
            /// @notice subsequent funding rounds
            uint256 _adjustedScalingFactor0 = fundedDividends[snapshotId][token]
                .adjustedScalingFactor;
            /// @notice update scaling factor during each new funding round; proportional to initial funds
            uint256 _adjustedScalingFactor1 = _adjustedScalingFactor0 +
                (amount * TOKEN_PRECISION_DIVIDER) /
                fundedDividends[snapshotId][token].initialFunds; // initialFunds cannot be 0 because of require statement above
            fundedDividends[snapshotId][token]
                .adjustedScalingFactor = _adjustedScalingFactor1;
        }

        emit Funded(msg.sender, token, amount, snapshotId);
        uint256 _balanceBefore = IERC20(paymentToken).balanceOf(address(this));
        paymentToken.safeTransferFrom(msg.sender, address(this), amount);
        uint256 _balanceAfter = IERC20(paymentToken).balanceOf(address(this));
        require(
            _balanceBefore + amount == _balanceAfter,
            "Dividend reverted for partial funding"
        );
    }

    /// @inheritdoc IDividends
    function tokensAt(
        address token,
        uint256 snapshotId
    ) external view override returns (uint256) {
        return fundedDividends[snapshotId][token].unusedFunds;
    }

    /**
     * @dev Proxy function for restricted token to retrieve totalSupply at snapshot
     * @param snapshotId Snapshot ID
     * @return totalSupply at snapshot
     */
    function totalSupplyAt(uint256 snapshotId) external view returns (uint256) {
        return restrictedLockupToken.totalSupplyAt(snapshotId);
    }

    /**
     * @dev Proxy function for restricted token to retrieve balanceOf address at snapshot
     * @param sender address to check balance
     * @param snapshotId snapshot ID
     * @return balance of address at snapshot
     */
    function balanceOfAt(
        address sender,
        uint256 snapshotId
    ) external view returns (uint256) {
        return restrictedLockupToken.balanceOfAt(sender, snapshotId);
    }

    /// @inheritdoc IDividends
    function fundsAt(
        address token,
        uint256 snapshotId
    ) external view override returns (uint256) {
        return fundedDividends[snapshotId][token].totalFunds;
    }

    /// @inheritdoc IDividends
    function totalAwardedBalanceAt(
        address token,
        address receiver,
        uint256 snapshotId
    ) public view override returns (uint256) {
        return
            unclaimedBalanceAt(token, receiver, snapshotId) +
            claimedBalanceAt(token, receiver, snapshotId);
    }

    /// @inheritdoc IDividends
    function unclaimedBalanceAt(
        address token,
        address receiver,
        uint256 snapshotId
    ) public view override returns (uint256) {
        /// @notice scaling factor required to account for multiple funding events
        uint256 _adjustedClaimedFundsPerUser = adjustedClaimedFundsPerUser[
            snapshotId
        ][token][receiver];
        uint256 _adjustedScalingFactor = fundedDividends[snapshotId][token]
            .adjustedScalingFactor;
        uint256 _adjustedSecurityTokenBalance = restrictedLockupToken
            .balanceOfAt(receiver, snapshotId) * _adjustedScalingFactor; /// @notice adjust sec token balance by scaling factor

        uint256 _remainingAdjustedClaimedFundsPerUser = _adjustedSecurityTokenBalance -
                _adjustedClaimedFundsPerUser;
        uint256 _adjustedBaseSupply = restrictedLockupToken.totalSupplyAt(
            snapshotId
        ) * _adjustedScalingFactor; /// @notice adjust total supply by scaling factor

        uint256 _adjustedTotalUnclaimedTokens = _adjustedBaseSupply -
            fundedDividends[snapshotId][token].adjustedClaimedFunds; /// @notice adjusted total unclaimed tokens for a given snapshot/token

        if (_adjustedTotalUnclaimedTokens == 0) return 0; /// @notice prevent division by zero

        return
            (_remainingAdjustedClaimedFundsPerUser *
                fundedDividends[snapshotId][token].unusedFunds) /
            _adjustedTotalUnclaimedTokens;
    }
}
