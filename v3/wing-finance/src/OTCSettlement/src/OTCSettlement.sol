// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IPermit2} from "permit2/src/interfaces/IPermit2.sol";
import {SignatureTransferHelper} from "./helpers/SignatureTransferHelper.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @author arr00
 * @notice Atomic OTCSettlement contract. This contract never takes custody of funds
 * and always utilizes Permit2 to transfer funds on behalf of users. There are no
 * lingering approvals granted to this contract. All signatures are verified by Permit2
 * (which supports ERC-1271). Order params are enforced by the witness passed to
 * Permit2.
 *
 * WARNING: The owner of this contract can cause calls to {fillOrder} to fail by rejecting
 * ETH transfers.
 *
 * NOTE: This contract may not perform as expected with non-standard ERC-20s--such as
 * fee on transfer or rebasing tokens.
 */
contract OTCSettlement is Ownable, ReentrancyGuard {
    using SignatureTransferHelper for IPermit2;

    struct Order {
        // Order maker
        address maker;
        // Order taker. Value of 0 allows any taker.
        address taker;
        // ERC-20 input token (what the maker pays)
        address tokenIn;
        // ERC-20 output token (what the maker receives)
        address tokenOut;
        // Amount of `tokenIn` the maker pays
        uint256 amountIn;
        // Amount of `tokenOut` the maker receives
        uint256 amountOut;
        // Order and Permit2 nonce.
        uint256 nonce;
        // Order and Permit2 deadline.
        uint256 deadline;
    }

    /// @notice Emitted when an order is filled.
    event OrderFilled(address indexed maker, address indexed taker, Order order);

    /// @notice Emitted when the minimum fee is set.
    event MinFeeSet(uint256 minFee);

    /// @notice Thrown when the taker is invalid.
    error InvalidTaker();
    /// @notice Thrown when the fee is insufficient.
    error InsufficientFee();
    /// @notice Thrown when the fee transfer fails.
    error FeeTransferFailed();

    bytes32 public constant ORDER_TYPEHASH = keccak256(
        "Order(address maker,address taker,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut,uint256 nonce,uint256 deadline)"
    );

    string public constant WITNESS_TYPE_STRING =
        "Order witness)Order(address maker,address taker,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut,uint256 nonce,uint256 deadline)TokenPermissions(address token,uint256 amount)";

    IPermit2 public immutable PERMIT2;

    uint256 public minFee;

    constructor(address owner, address permit2) Ownable() {
        PERMIT2 = IPermit2(permit2);
        _transferOwnership(owner);
    }

    /**
     * @notice Fill an Otcly order. Must be called by the taker. All the ETH value
     * is forwarded to the owner of the contract. The fee must be greater than or
     * equal to the minimum fee.
     *
     * @param order The order to fill.
     * @param makerSignature The permit2 with witness signature for the maker.
     * @param takerPermit2Nonce The nonce for the taker's permit2.
     * @param takerPermit2Deadline The deadline for the taker's permit2.
     * @param takerPermitSignature The permit2 signature for the taker.
     */
    function fillOrder(
        Order calldata order,
        bytes calldata makerSignature,
        uint256 takerPermit2Nonce,
        uint256 takerPermit2Deadline,
        bytes calldata takerPermitSignature
    ) external payable nonReentrant {
        if (order.taker != address(0) && order.taker != msg.sender) {
            revert InvalidTaker();
        }

        address cachedMaker = order.maker;

        PERMIT2.permitWitnessTransferFromHelper(
            order.tokenIn,
            order.maker,
            msg.sender,
            order.amountIn,
            makerSignature,
            order.nonce,
            order.deadline,
            keccak256(
                abi.encode(
                    ORDER_TYPEHASH,
                    order.maker,
                    order.taker,
                    order.tokenIn,
                    order.tokenOut,
                    order.amountIn,
                    order.amountOut,
                    order.nonce,
                    order.deadline
                )
            ),
            WITNESS_TYPE_STRING
        );
        PERMIT2.permitTransferFromHelper(
            order.tokenOut,
            msg.sender,
            cachedMaker,
            order.amountOut,
            takerPermitSignature,
            takerPermit2Nonce,
            takerPermit2Deadline
        );

        if (minFee != 0) {
            if (msg.value < minFee) {
                revert InsufficientFee();
            }
        }
        if (msg.value != 0) {
            (bool success,) = owner().call{value: msg.value}("");
            if (!success) {
                revert FeeTransferFailed();
            }
        }

        emit OrderFilled(cachedMaker, msg.sender, order);
    }

    /// @notice Set the minimum fee for filling an order. Must be called by the owner.
    function setMinFee(uint256 _minFee) external onlyOwner {
        minFee = _minFee;
        emit MinFeeSet(_minFee);
    }
}
