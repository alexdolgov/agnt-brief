// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title ISBILenders
 * @author Atlendis Labs
 * @notice Interface of the Single Bond Issuance Lenders module contract
 *         It exposes the available methods for the lenders
 */
interface ISBILenders {
    /**
     * @notice Emitted when a deposit has been made
     * @param positionId ID of the position associated to the deposit
     * @param owner Address of the position owner
     * @param contractAddress Address of the contract
     * @param rate Chosen rate at which the funds can be borrowed
     * @param amount Deposited amount
     */
    event Deposited(
        uint256 indexed positionId,
        address indexed owner,
        address contractAddress,
        uint256 rate,
        uint256 amount
    );

    /**
     * @notice Emitted when a rate has been updated
     * @param positionId ID of the position
     * @param owner Address of the position owner
     * @param contractAddress Address of the contract
     * @param oldRate Previous rate
     * @param newRate Updated rate
     */
    event RateUpdated(
        uint256 indexed positionId,
        address indexed owner,
        address contractAddress,
        uint256 oldRate,
        uint256 newRate
    );

    /**
     * @notice Emitted when a withdraw has been made
     * @param positionId ID of the position
     * @param owner Address of the position owner
     * @param contractAddress Address of the contract
     * @param amount Withdrawn amount
     */
    event Withdrawn(uint256 indexed positionId, address indexed owner, address contractAddress, uint256 amount);

    /**
     * @notice Emitted when a partial withdraw has been made
     * @param positionId ID of the position
     * @param owner Address of the position owner
     * @param contractAddress Address of the contract
     * @param amount Withdrawn amount
     */
    event PartiallyWithdrawn(
        uint256 indexed positionId,
        address indexed owner,
        address contractAddress,
        uint256 amount
    );

    /**
     * @notice Deposit amount of tokens at a chosen rate
     * @param rate Chosen rate at which the funds can be borrowed
     * @param amount Deposited amount of tokens
     * @param to Recipient address for the position associated to the deposit
     * @return positionId ID of the position
     *
     * Emits a {Deposited} event
     */
    function deposit(
        uint256 rate,
        uint256 amount,
        address to
    ) external returns (uint256 positionId);

    /**
     * @notice Update a position rate
     * @param positionId The ID of the position
     * @param newRate The new rate of the position
     *
     * Emits a {RateUpdated} event
     */
    function updateRate(uint256 positionId, uint256 newRate) external;

    /**
     * @notice Withdraw the maximum amount from a position
     * @param positionId ID of the position
     *
     * Emits a {Withdrawn} event
     */
    function withdraw(uint256 positionId) external;

    /**
     * @notice Withdraw any amount up to the full position deposited amount
     * @param positionId ID of the position
     * @param amount Amount to withdraw
     *
     * Emits a {PartiallyWithdrawn} event
     */
    function withdraw(uint256 positionId, uint256 amount) external;
}
