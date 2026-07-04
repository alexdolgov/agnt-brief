// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./interfaces/IBIFKN314FeeHook.sol";

/**
 * @title BIFKN314FeeHook
 * @dev Standard implementation of the fee hook that distributes swap fees
 * between LPs and the protocol.
 */
contract BIFKN314FeeHookLegacyFix is IBIFKN314FeeHook {
    uint256 public constant SCALE_FACTOR = 10000;

    // The factory that created this fee hook
    address public factory;

    // Fee configuration
    uint256 public baseSwapRate; // e.g., 30 = 0.3%
    uint256 public lpFeePortion; // e.g., 8000 = 80% of the swap fee
    uint256 public protocolFeePortion; // e.g., 2000 = 20% of the swap fee

    // Events
    event FeeConfigUpdated(
        uint256 baseSwapRate,
        uint256 lpFeePortion,
        uint256 protocolFeePortion
    );

    // Errors
    error InvalidFeePortions();
    error AlreadyInitialized();
    error NotFactory();

    modifier onlyFactory() {
        if (msg.sender != factory) revert NotFactory();
        _;
    }

    function initialize(
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external {
        if (factory != address(0)) revert AlreadyInitialized();
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();

        factory = msg.sender;
        baseSwapRate = baseSwapRate_;
        lpFeePortion = lpFeePortion_;
        protocolFeePortion = protocolFeePortion_;

        emit FeeConfigUpdated(
            baseSwapRate_,
            lpFeePortion_,
            protocolFeePortion_
        );
    }

    function updateFeeConfig(
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyFactory {
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();

        baseSwapRate = baseSwapRate_;
        lpFeePortion = lpFeePortion_;
        protocolFeePortion = protocolFeePortion_;

        emit FeeConfigUpdated(
            baseSwapRate_,
            lpFeePortion_,
            protocolFeePortion_
        );
    }

    function updateBaseSwapRate(uint256 baseSwapRate_) external onlyFactory {
        baseSwapRate = baseSwapRate_;
        emit FeeConfigUpdated(baseSwapRate_, lpFeePortion, protocolFeePortion);
    }

    function updateFeePortions(
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyFactory {
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();

        lpFeePortion = lpFeePortion_;
        protocolFeePortion = protocolFeePortion_;

        emit FeeConfigUpdated(baseSwapRate, lpFeePortion_, protocolFeePortion_);
    }

    function calculateFees(
        uint256 inputAmount
    )
        external
        view
        virtual
        returns (uint256 baseSwapRate_, uint256 lpFee, uint256 protocolFee)
    {
        baseSwapRate_ = baseSwapRate;
        uint256 totalFee = (inputAmount * 1e4 * baseSwapRate) / SCALE_FACTOR;

        lpFee = (totalFee * lpFeePortion) / SCALE_FACTOR;
        protocolFee = (totalFee * protocolFeePortion) / SCALE_FACTOR;
    }
}
