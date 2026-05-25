// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/// @title Constants for the UniPool Pair
library UniPoolPairConstants {
    /**
     * @dev The number of decimals used for the interest multipliers.
     * To simplify calculations, and due to historical code change reasons, this must remain equal to RAY_DECIMALS.
     * This is because both the interest multiplier and aave yield accumulator are used in the tick-price conversion
     * formulae.
     */
    uint8 internal constant INTEREST_MULTIPLIER_DECIMALS = RAY_DECIMALS;

    /// @dev The number of decimals used for basis point values.
    uint8 internal constant BPS_DECIMALS = 4;

    /// @dev The number of decimals used for interest rates.
    uint8 internal constant RAY_DECIMALS = 27;

    /// @dev Divisor for basis point values.
    uint256 internal constant BPS_DIVISOR = 10 ** BPS_DECIMALS;

    /// @dev Divisor for ray values.
    uint256 internal constant RAY_DIVISOR = 10 ** RAY_DECIMALS;

    /// @dev Divisor for interest multiplier values.
    uint256 internal constant INTEREST_MULTIPLIER_DIVISOR = 10 ** INTEREST_MULTIPLIER_DECIMALS;

    /// @dev Factor for BPS to RAY conversion.
    uint256 internal constant BPS_TO_RAY = 10 ** (RAY_DECIMALS - BPS_DECIMALS);

    /// @dev The minimum liquidity required to be locked in the contract.
    uint256 internal constant MINIMUM_LIQUIDITY = 1000;

    /// @dev The size of a tick range used for determining the maximum borrowable amount.
    int16 internal constant TICK_RANGE_SIZE = 10;

    /**
     * @dev Maximum number of ticks that are liquidated during a standalone liquidation call, for each side.
     * @dev This limit is to ensure that actors can perform partial liquidations if the full liquidation would require
     * too much gas.
     */
    uint256 internal constant STANDALONE_LIQUIDATION_ITER = 10;

    /// @dev The result of (1 - sqrt(1/1.01)) in wad (18 decimals).
    uint256 internal constant ONE_MINUS_SQRT_INVERSE_TICKBASE = 4_962_809_790_010_864;

    /// @dev Scaling divisor for constant product K validation.
    uint256 internal constant BPS_DIVISOR_SQUARED = BPS_DIVISOR * BPS_DIVISOR;

    /**
     * @notice EIP712 typehash for the delegation of a loan repayment.
     * @dev Used within EIP712 messages for domain-specific signing, enabling recovery of the signer via
     * [ECDSA-recover](https://docs.openzeppelin.com/contracts/5.x/api/utils#ECDSA).
     */
    bytes32 internal constant REPAY_TYPEHASH = keccak256(
        "RepayLoanDelegation(uint256 loanId,uint128 amount,uint128 maxSwapInput,address repayer,uint96 nonce,uint40 deadline)"
    );

    /**
     * @notice EIP712 typehash for the delegation of a loan transfer.
     * @dev Used within EIP712 messages for domain-specific signing, enabling recovery of the signer via
     * [ECDSA-recover](https://docs.openzeppelin.com/contracts/5.x/api/utils#ECDSA).
     */
    bytes32 internal constant LOAN_TRANSFER_TYPEHASH =
        keccak256("TransferLoanDelegation(uint256 loanId,address executor,address to,uint96 nonce,uint40 deadline)");
}
