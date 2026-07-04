// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @notice Shared enum representing the different status of a phase or the whole IGO.
 *
 * @custom:value NOT_STARTED IGO/Phase created but not started; allocation buys are in a pending state.
 * @custom:value OPENED IGO/Phase started according to start date; allocations can be reserved.
 * @custom:value COMPLETED IGO/Phase everything has been sold or time has been elapsed; allocations
 *               can't be reserved anymore.
 * @custom:value PAUSED IGO/Phase has been paused by the owner; allocations can't be reserved until
 *               further notice.
 */
enum Status {
    NOT_STARTED,
    OPENED,
    COMPLETED,
    PAUSED
}

/**
 * @notice Struct representing an allocation of a wallet for a specific phase of a sale.
 *
 * @param phaseId Phase identifier of the in the current sale, e.g. "vpr-social-task",
 *        "sale-public-phase-1", "ino-public" etc...
 * @param maxAllocation Maximum amount to spend in {SaleStorage.SetUp.paymentToken}.
 * @param saleTokenPerPaymentToken Price per token/nft of the project behind the Sale, expressed in
 *        {SaleStorage.SetUp.paymentToken}.
 */
struct Allocation {
    string phaseId;
    uint256 maxAllocation;
    uint256 saleTokenPerPaymentToken;
}

/**
 * @notice Struct representing a buy permission signed by `msg.sender` for
 *         {SaleWritable.reserveAllocation} function to use with {Permit2} library.
 *
 * @dev Compulsory to interact with {Permit2.permitTransferFrom} in
 *      {SaleWritableInternal._reserveAllocation}.
 *
 * @param signature {Permit2} signature to transfer tokens from the buyer to {SaleVesting}.
 * @param deadline Seadline on the permit signature.
 * @param nonce Unique value for every token owner's signature to prevent signature replays.
 */
struct BuyPermission {
    bytes signature;
    uint256 deadline;
    uint256 nonce;
}

/**
 * @notice Shared struct representing the data of a phase.
 *
 * @param status Enum representing the current status of the phase.
 * @param merkleRoot Merkle root of the merkle tree containing whitelisted data.
 * @param startAt Timestamp at which the phase will be opened to reserve allocation.
 * @param endAt Timestamp at which the phase will not accept allocation reservation anymore.
 * @param maxPhaseCap Maximum amount funds or NFT for this phase.
 */
struct Phase {
    Status status;
    // contains wallet and allocation per wallet
    bytes32 merkleRoot;
    uint128 startAt;
    uint128 endAt;
    uint256 maxPhaseCap;
}
