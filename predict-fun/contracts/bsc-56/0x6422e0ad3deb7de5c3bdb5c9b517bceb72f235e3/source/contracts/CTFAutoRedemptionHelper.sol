// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

import {IConditionalTokens} from "./UMA/interfaces/IConditionalTokens.sol";
import {INegRiskAdapter} from "./NegRisk/interfaces/INegRiskAdapter.sol";
import {CTHelpers} from "./ConditionalTokens/CTHelpers.sol";

/**
 * @title CTFAutoRedemptionHelper
 * @author predict.fun protocol team
 * @notice This contract is used to auto-redeem user positions for users that have granted permission to the contract
 */
contract CTFAutoRedemptionHelper is AccessControl, ERC1155Holder {
    using SafeERC20 for IERC20;

    /// @notice Role allowed to redeem positions
    bytes32 private constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /// @notice Yield-bearing CTF contract
    IConditionalTokens public immutable YIELD_BEARING_CTF;
    /// @notice Non-yield-bearing CTF contract
    IConditionalTokens public immutable NON_YIELD_BEARING_CTF;

    /// @notice Yield-bearing Neg Risk CTF contract
    IConditionalTokens public immutable YIELD_BEARING_NEG_RISK_CTF;
    /// @notice Non-yield-bearing Neg Risk CTF contract
    IConditionalTokens public immutable NON_YIELD_BEARING_NEG_RISK_CTF;

    /// @notice Yield-bearing Neg Risk Adapter contract
    INegRiskAdapter public immutable YIELD_BEARING_NEG_RISK_ADAPTER;
    /// @notice Non-yield-bearing Neg Risk Adapter contract
    INegRiskAdapter public immutable NON_YIELD_BEARING_NEG_RISK_ADAPTER;

    /// @notice Yield-bearing Neg Risk wrapped collateral (the position-token collateral for yield-bearing NegRisk CTFs)
    IERC20 public immutable YIELD_BEARING_NEG_RISK_WCOL;
    /// @notice Non-yield-bearing Neg Risk wrapped collateral (the position-token collateral for non-yield-bearing NegRisk CTFs)
    IERC20 public immutable NON_YIELD_BEARING_NEG_RISK_WCOL;

    /// @notice Collateral token. The token that backs the CTFs
    IERC20 public immutable COLLATERAL;

    /**
     * @notice Redemption request struct
     * @param user The user address
     * @param conditionIds The condition IDs
     * @param indexSets The index sets (1 = YES, 2 = NO) for each condition
     * @param isYieldBearing Whether the CTF is yield-bearing
     * @param isNegRisk Whether the CTF is Neg Risk
     */
    struct RedemptionRequest {
        address user;
        bytes32[] conditionIds;
        uint256[] indexSets;
        bool isYieldBearing;
        bool isNegRisk;
    }

    /**
     * @notice Emitted when collateral is withdrawn
     * @param to The address to withdraw the collateral to
     * @param amount The amount of collateral to withdraw
     */
    event CTFAutoRedemptionHelper__CollateralWithdrawn(address to, uint256 amount);

    /**
     * @notice Emitted when the contract is not approved for all by a user on the CTF
     * @param user The user that did not approve the contract for all on the CTF
     * @param ctf The address of the CTF
     */
    event CTFAutoRedemptionHelper__ContractNotApprovedForAll(address indexed user, address indexed ctf);

    /**
     * @notice Emitted when CTFs are withdrawn
     * @param to The address to withdraw the CTFs to
     * @param isYieldBearing Whether the CTF is yield-bearing
     * @param isNegRisk Whether the CTF is Neg Risk
     * @param positionIds The position IDs to withdraw
     * @param balances The balances of the CTFs to withdraw
     */
    event CTFAutoRedemptionHelper__CTFsWithdrawn(
        address to,
        bool isYieldBearing,
        bool isNegRisk,
        uint256[] positionIds,
        uint256[] balances
    );

    /**
     * @notice Emitted when a single redemption request is processed
     * @param user The user the redemption was processed for
     * @param isYieldBearing Whether the CTF is yield-bearing
     * @param isNegRisk Whether the CTF is Neg Risk
     * @param conditionIds The condition IDs that were redeemed
     * @param indexSets The index sets that were redeemed
     * @param payout The amount of collateral transferred to the user
     */
    event CTFAutoRedemptionHelper__PositionRedeemed(
        address indexed user,
        bool isYieldBearing,
        bool isNegRisk,
        bytes32[] conditionIds,
        uint256[] indexSets,
        uint256 payout
    );

    /**
     * @notice Raised when an empty array is passed
     */
    error CTFAutoRedemptionHelper__EmptyArray();

    /**
     * @notice Raised when an invalid index set is passed. Only valid index sets are 1 and 2.
     */
    error CTFAutoRedemptionHelper__InvalidIndexSet();

    /**
     * @notice Raised when the length of the indexSets array is not equal to the number of conditions
     */
    error CTFAutoRedemptionHelper__LengthMismatch();

    /**
     * @notice Raised when there is nothing to withdraw
     */
    error CTFAutoRedemptionHelper__NothingToWithdraw();

    /**
     * @notice Constructor
     * @param _admin The address of the admin
     * @param _yieldBearingCtf The address of the yield-bearing CTF
     * @param _nonYieldBearingCtf The address of the non-yield-bearing CTF
     * @param _yieldBearingNegRiskAdapter The address of the yield-bearing Neg Risk Adapter
     * @param _nonYieldBearingNegRiskAdapter The address of the non-yield-bearing Neg Risk Adapter
     * @param _collateral The address of the collateral
     */
    constructor(
        address _admin,
        address _yieldBearingCtf,
        address _nonYieldBearingCtf,
        address _yieldBearingNegRiskAdapter,
        address _nonYieldBearingNegRiskAdapter,
        address _collateral
    ) {
        YIELD_BEARING_CTF = IConditionalTokens(_yieldBearingCtf);
        NON_YIELD_BEARING_CTF = IConditionalTokens(_nonYieldBearingCtf);
        YIELD_BEARING_NEG_RISK_ADAPTER = INegRiskAdapter(_yieldBearingNegRiskAdapter);
        NON_YIELD_BEARING_NEG_RISK_ADAPTER = INegRiskAdapter(_nonYieldBearingNegRiskAdapter);
        COLLATERAL = IERC20(_collateral);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        // Cache NegRisk-related addresses as immutables to avoid repeated external calls.
        YIELD_BEARING_NEG_RISK_CTF = IConditionalTokens(YIELD_BEARING_NEG_RISK_ADAPTER.ctf());
        NON_YIELD_BEARING_NEG_RISK_CTF = IConditionalTokens(NON_YIELD_BEARING_NEG_RISK_ADAPTER.ctf());

        YIELD_BEARING_NEG_RISK_WCOL = IERC20(YIELD_BEARING_NEG_RISK_ADAPTER.wcol());
        NON_YIELD_BEARING_NEG_RISK_WCOL = IERC20(NON_YIELD_BEARING_NEG_RISK_ADAPTER.wcol());

        // Pre-approve NegRisk adapters to pull position tokens from this contract.
        YIELD_BEARING_NEG_RISK_CTF.setApprovalForAll(address(YIELD_BEARING_NEG_RISK_ADAPTER), true);
        NON_YIELD_BEARING_NEG_RISK_CTF.setApprovalForAll(address(NON_YIELD_BEARING_NEG_RISK_ADAPTER), true);
    }

    /**
     * @notice Redeem positions for the given redemption requests
     * @param redemptionRequests The redemption requests
     * @dev Only callable by the operator
     */
    function redeemPositions(RedemptionRequest[] calldata redemptionRequests) external onlyRole(OPERATOR_ROLE) {
        uint256 requestsCount = redemptionRequests.length;
        _assertNotEmpty(requestsCount);

        for (uint256 i; i < requestsCount; i++) {
            _processRedemption(redemptionRequests[i]);
        }
    }

    function _processRedemption(RedemptionRequest calldata redemptionRequest) private {
        bytes32[] calldata conditionIds = redemptionRequest.conditionIds;
        uint256 conditionsCount = conditionIds.length;
        _assertNotEmpty(conditionsCount);

        uint256[] calldata indexSets = redemptionRequest.indexSets;
        if (indexSets.length != conditionsCount) {
            revert CTFAutoRedemptionHelper__LengthMismatch();
        }

        address user = redemptionRequest.user;
        bool isYieldBearing = redemptionRequest.isYieldBearing;
        bool isNegRisk = redemptionRequest.isNegRisk;

        uint256 collateralToTransfer;
        {
            uint256 collateralBalanceBefore = COLLATERAL.balanceOf(address(this));

            IERC20 ctfCollateral = _getCtfCollateral(isYieldBearing, isNegRisk);
            uint256[] memory positionIds = _getPositionIds(ctfCollateral, conditionIds, indexSets);

            IConditionalTokens ctf = _getCTF(isYieldBearing, isNegRisk);

            if (ctf.isApprovedForAll(user, address(this))) {
                uint256[] memory balances = _getBalancesAndTransfer(ctf, positionIds, user, address(this));
                _redeemPositions(redemptionRequest, balances);
                collateralToTransfer = COLLATERAL.balanceOf(address(this)) - collateralBalanceBefore;
            } else {
                emit CTFAutoRedemptionHelper__ContractNotApprovedForAll(user, address(ctf));
                return;
            }
        }

        // 0 payout redemptions don't transfer collateral
        if (collateralToTransfer > 0) {
            COLLATERAL.safeTransfer(user, collateralToTransfer);
        }

        emit CTFAutoRedemptionHelper__PositionRedeemed(
            user,
            isYieldBearing,
            isNegRisk,
            conditionIds,
            indexSets,
            collateralToTransfer
        );
    }

    /**
     * @notice Withdraw collateral from the contract
     * @param to The address to withdraw the collateral to
     * @dev Only callable by the admin
     */
    function withdrawCollateral(address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 collateralBalance = COLLATERAL.balanceOf(address(this));
        if (collateralBalance == 0) {
            revert CTFAutoRedemptionHelper__NothingToWithdraw();
        }

        COLLATERAL.safeTransfer(to, collateralBalance);

        emit CTFAutoRedemptionHelper__CollateralWithdrawn(to, collateralBalance);
    }

    /**
     * @notice Withdraw CTFs from the contract
     * @param to The address to withdraw the CTFs to
     * @param isYieldBearing Whether the CTF is yield-bearing
     * @param isNegRisk Whether the CTF is Neg Risk
     * @param positionIds The position IDs to withdraw
     * @dev Only callable by the admin
     */
    function withdrawCTFs(
        address to,
        bool isYieldBearing,
        bool isNegRisk,
        uint256[] calldata positionIds
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IConditionalTokens ctf = _getCTF(isYieldBearing, isNegRisk);
        uint256[] memory balances = _getBalancesAndTransfer(ctf, positionIds, address(this), to);
        emit CTFAutoRedemptionHelper__CTFsWithdrawn(to, isYieldBearing, isNegRisk, positionIds, balances);
    }

    function supportsInterface(bytes4 interfaceId) public view override(AccessControl, ERC1155Holder) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _negRiskAmounts(uint256 indexSet, uint256 balance) private pure returns (uint256[] memory amounts) {
        _assertIndexSetValue(indexSet);

        amounts = new uint256[](2);

        if (indexSet == 1) {
            amounts[0] = balance;
            amounts[1] = 0;
        } else {
            amounts[0] = 0;
            amounts[1] = balance;
        }
    }

    function _getCtfCollateral(bool isYieldBearing, bool isNegRisk) private view returns (IERC20) {
        if (!isNegRisk) return COLLATERAL;
        if (isYieldBearing) return YIELD_BEARING_NEG_RISK_WCOL;
        return NON_YIELD_BEARING_NEG_RISK_WCOL;
    }

    function _getCTF(bool isYieldBearing, bool isNegRisk) private view returns (IConditionalTokens ctf) {
        if (isYieldBearing) {
            if (isNegRisk) {
                ctf = YIELD_BEARING_NEG_RISK_CTF;
            } else {
                ctf = YIELD_BEARING_CTF;
            }
        } else {
            if (isNegRisk) {
                ctf = NON_YIELD_BEARING_NEG_RISK_CTF;
            } else {
                ctf = NON_YIELD_BEARING_CTF;
            }
        }
    }

    function _getBalancesAndTransfer(
        IConditionalTokens ctf,
        uint256[] memory positionIds,
        address from,
        address to
    ) private returns (uint256[] memory balances) {
        address[] memory owners = new address[](positionIds.length);
        for (uint256 i; i < positionIds.length; i++) {
            owners[i] = from;
        }
        balances = ctf.balanceOfBatch(owners, positionIds);
        ctf.safeBatchTransferFrom(from, to, positionIds, balances, "");
    }

    function _getPositionIds(
        IERC20 ctfCollateral,
        bytes32[] calldata conditionIds,
        uint256[] calldata indexSets
    ) private view returns (uint256[] memory positionIds) {
        uint256 conditionsCount = conditionIds.length;
        positionIds = new uint256[](conditionsCount);

        for (uint256 j; j < conditionsCount; j++) {
            uint256 indexSet = indexSets[j];
            _assertIndexSetValue(indexSet);

            positionIds[j] = CTHelpers.getPositionId(
                ctfCollateral,
                CTHelpers.getCollectionId(bytes32(0), conditionIds[j], indexSet)
            );
        }
    }

    function _redeemPositions(RedemptionRequest calldata redemptionRequest, uint256[] memory balances) private {
        bytes32[] calldata conditionIds = redemptionRequest.conditionIds;
        uint256 conditionsCount = conditionIds.length;
        if (redemptionRequest.isNegRisk) {
            INegRiskAdapter adapter = redemptionRequest.isYieldBearing
                ? YIELD_BEARING_NEG_RISK_ADAPTER
                : NON_YIELD_BEARING_NEG_RISK_ADAPTER;
            uint256[] calldata indexSets = redemptionRequest.indexSets;
            for (uint256 j; j < conditionsCount; j++) {
                adapter.redeemPositions(conditionIds[j], _negRiskAmounts(indexSets[j], balances[j]));
            }
        } else {
            IConditionalTokens ctf = redemptionRequest.isYieldBearing ? YIELD_BEARING_CTF : NON_YIELD_BEARING_CTF;
            uint256[] calldata indexSets = redemptionRequest.indexSets;
            for (uint256 j; j < conditionsCount; j++) {
                uint256[] memory singleIndexSet = new uint256[](1);
                singleIndexSet[0] = indexSets[j];
                ctf.redeemPositions(COLLATERAL, bytes32(0), conditionIds[j], singleIndexSet);
            }
        }
    }

    function _assertNotEmpty(uint256 count) private pure {
        if (count == 0) {
            revert CTFAutoRedemptionHelper__EmptyArray();
        }
    }

    function _assertIndexSetValue(uint256 indexSet) private pure {
        if (indexSet != 1 && indexSet != 2) {
            revert CTFAutoRedemptionHelper__InvalidIndexSet();
        }
    }
}
