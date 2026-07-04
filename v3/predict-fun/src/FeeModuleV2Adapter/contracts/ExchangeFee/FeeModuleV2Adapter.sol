// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {ERC1155TokenReceiver} from "solmate/src/tokens/ERC1155.sol";

import {Transfers} from "./mixins/Transfers.sol";

import {IExchange} from "./interfaces/IExchange.sol";
import {IFeeModule} from "./interfaces/IFeeModule.sol";
import {IFeeModuleV2} from "./interfaces/IFeeModuleV2.sol";
import {IFeeModuleV3} from "./interfaces/IFeeModuleV3.sol";

import {Order, Side} from "../Exchange/libraries/OrderStructs.sol";

/**
 * @title FeeModuleV2Adapter
 * @notice Proxies the FeeModuleV2 contract, refunds orders and distributes maker rebates + referral fees
 * @author predict.fun protocol team
 */
contract FeeModuleV2Adapter is IFeeModuleV3, AccessControl, Transfers, ERC1155TokenReceiver {
    /**
     * @notice Role allowed to match orders
     */
    bytes32 public constant ORDERS_MATCHER_ROLE = keccak256("ORDERS_MATCHER_ROLE");

    /**
     * @notice Role allowed to withdraw fees
     */
    bytes32 public constant FEES_WITHDRAWER_ROLE = keccak256("FEES_WITHDRAWER_ROLE");

    /// @notice The feeModuleV2's neg risk CTF exchange
    IExchange public immutable exchange;

    /// @notice The FeeModuleV2 contract this adapter wraps
    IFeeModuleV2 public immutable feeModuleV2;

    /// @notice The collateral token
    address public immutable collateral;

    /// @notice The CTF contract used for token transfers
    address public immutable ctf;

    /**
     * @notice Constructor
     * @param _feeModuleV2 - The FeeModuleV2 contract to wrap
     * @param _collateral  - The collateral token address
     * @param _ctf         - The CTF contract address used for token transfers
     * @param _admin       - The initial DEFAULT_ADMIN_ROLE holder
     */
    constructor(address _feeModuleV2, address _collateral, address _ctf, address _admin) {
        feeModuleV2 = IFeeModuleV2(_feeModuleV2);
        exchange = IFeeModule(address(feeModuleV2)).exchange();
        collateral = _collateral;
        ctf = _ctf;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /**
     * @notice Matches a taker order against a list of maker orders, refunding maker/taker order fees if necessary,
     *         distribute maker rebates and referral fee to the referrer
     * @param takerOrder           - The active order to be matched
     * @param makerOrders          - The array of maker orders to be matched against the active order
     * @param takerFillAmount      - The amount to fill on the taker order, always in terms of the maker amount
     * @param takerReceiveAmount   - The amount to that will be received by the taker order, always in terms of the taker amount
     * @param makerFillAmounts     - The array of amounts to fill on the maker orders, always in terms of the maker amount
     * @param takerFeeAmount       - The fee to be charged to the taker
     * @param makerFeeAmounts      - The fee to be charged to the maker orders
     * @param takerFeeDistribution - The taker fee distribution
     */
    function matchOrders(
        Order memory takerOrder,
        Order[] memory makerOrders,
        uint256 takerFillAmount,
        uint256 takerReceiveAmount,
        uint256[] memory makerFillAmounts,
        uint256 takerFeeAmount,
        uint256[] memory makerFeeAmounts,
        TakerFeeDistribution memory takerFeeDistribution
    ) external onlyRole(ORDERS_MATCHER_ROLE) {
        uint256 makerOrdersLength = makerOrders.length;
        if (makerOrdersLength == 0) {
            revert MakerOrdersArrayLengthIsZero();
        }

        if (
            makerOrdersLength != makerFillAmounts.length ||
            makerOrdersLength != makerFeeAmounts.length ||
            makerOrdersLength != takerFeeDistribution.makerRebateAmounts.length
        ) {
            revert MakerArrayLengthsMismatch();
        }

        // Match the orders via FeeModuleV2
        feeModuleV2.matchOrders(
            takerOrder,
            makerOrders,
            takerFillAmount,
            takerReceiveAmount,
            makerFillAmounts,
            takerFeeAmount,
            makerFeeAmounts
        );

        uint256 takerFeeTokenId = takerOrder.side == Side.BUY ? takerOrder.tokenId : 0;

        feeModuleV2.withdrawFees(address(this), takerFeeTokenId, takerFeeAmount);

        _distributeTakerFee(makerOrders, takerFeeDistribution, takerFeeTokenId, takerFeeAmount);
    }

    /**
     * @notice Distributes maker rebates and referral fee from the taker fee pulled into this contract
     * @param makerOrders          - The array of maker orders
     * @param takerFeeDistribution - The taker fee distribution
     * @param takerFeeTokenId      - The token ID of the taker fee
     * @param takerFeeAmount       - The total taker fee pulled from FeeModuleV2
     */
    function _distributeTakerFee(
        Order[] memory makerOrders,
        TakerFeeDistribution memory takerFeeDistribution,
        uint256 takerFeeTokenId,
        uint256 takerFeeAmount
    ) internal {
        uint256 totalDistributionAmount;
        uint256 makerOrdersLength = makerOrders.length;

        uint256[] memory makerRebateAmounts = takerFeeDistribution.makerRebateAmounts;
        for (uint256 i; i < makerOrdersLength; ++i) {
            totalDistributionAmount += makerRebateAmounts[i];
        }

        address referrer = takerFeeDistribution.referrer;
        uint256 referralAmount = takerFeeDistribution.referralAmount;
        if (referralAmount > 0) {
            if (referrer == address(0)) {
                revert ReferrerIsZeroAddress();
            }
            totalDistributionAmount += referralAmount;
        }

        if (totalDistributionAmount > takerFeeAmount) {
            revert TotalDistributionAmountMoreThanTakerFeeAmount();
        }

        for (uint256 i; i < makerOrdersLength; ++i) {
            Order memory order = makerOrders[i];
            uint256 rebateAmount = makerRebateAmounts[i];
            if (rebateAmount > 0) {
                address maker = order.maker;
                _transfer(_getToken(takerFeeTokenId), address(this), maker, takerFeeTokenId, rebateAmount);
                emit MakerRebateDistributed(maker, takerFeeTokenId, rebateAmount);
            }
        }

        if (referralAmount > 0) {
            _transfer(_getToken(takerFeeTokenId), address(this), referrer, takerFeeTokenId, referralAmount);
            emit ReferralFeeDistributed(referrer, takerFeeTokenId, referralAmount);
        }
    }

    /**
     * @notice Withdraw fees from FeeModuleV2. This should normally not be used as we withdraw
     *         all taker fees in matchOrders and we don't charge maker fees.
     * @param to     - The destination address
     * @param id     - The tokenID to be withdrawn. If 0, will be the collateral token.
     * @param amount - The amount to be withdrawn
     */
    function withdrawFeesFromFeeModuleV2(
        address to,
        uint256 id,
        uint256 amount
    ) external onlyRole(FEES_WITHDRAWER_ROLE) {
        feeModuleV2.withdrawFees(to, id, amount);
    }

    /**
     * @notice Withdraw collected fees held by this contract
     * @param to     - The destination address
     * @param id     - The tokenID to be withdrawn. If 0, will be the collateral token.
     * @param amount - The amount to be withdrawn
     */
    function withdrawFees(address to, uint256 id, uint256 amount) external onlyRole(FEES_WITHDRAWER_ROLE) {
        address token = _getToken(id);
        _transfer(token, address(this), to, id, amount);
        emit FeeWithdrawn(token, to, id, amount);
    }

    /**
     * @notice Gets the token address for a given token ID
     * @param id     - The token ID
     * @return token - The token address
     */
    function _getToken(uint256 id) internal view returns (address) {
        return id == 0 ? collateral : ctf;
    }
}
