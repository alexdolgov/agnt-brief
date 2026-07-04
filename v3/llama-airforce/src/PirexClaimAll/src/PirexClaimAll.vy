# pragma version ^0.4.1
# @license MIT

# EIP-7702 delegation target: claims all unclaimed Pirex pxCVX rewards
# (snapshot + futures) for the delegating EOA in one transaction.
#
# Usage: EOA signs a 7702 authorization pointing at this contract,
# then sends a type-4 tx calling claimAll(receiver) on their own address.
# self == EOA, so balanceOfAt/bitmap reads hit the EOA's state.

MAX_EPOCHS: constant(uint256) = 1024
MAX_REWARDS: constant(uint256) = 64

PX_CVX: constant(address) = 0xBCe0Cf87F513102F22232436CCa2ca49e815C3aC
RPX_CVX: constant(address) = 0xC044613B702Ed11567A38108703Ac5478a3F7DB8
PIREX_CVX: constant(address) = 0x35A398425d9f1029021A92bc3d2557D42C8588D7

FIRST_EPOCH: constant(uint256) = 1655942400
EPOCH_LEN: constant(uint256) = 1209600


interface IPxCvx:
    def getCurrentEpoch() -> uint256: view
    def getEpoch(epoch: uint256) -> (
        uint256,
        DynArray[bytes32, MAX_REWARDS],
        DynArray[uint256, MAX_REWARDS],
        DynArray[uint256, MAX_REWARDS],
    ): view
    def balanceOfAt(account: address, snapshotId: uint256) -> uint256: view
    def getEpochRedeemedSnapshotRewards(account: address, epoch: uint256) -> uint256: view


interface IPirexCvx:
    def redeemSnapshotRewards(
        epoch: uint256,
        rewardIndexes: DynArray[uint256, MAX_REWARDS],
        receiver: address,
    ): nonpayable
    def redeemFuturesRewards(epoch: uint256, receiver: address): nonpayable


interface IRPxCvx:
    def balanceOf(account: address, id: uint256) -> uint256: view
    def isApprovedForAll(account: address, operator: address) -> bool: view
    def setApprovalForAll(operator: address, approved: bool): nonpayable


@external
def claimAll(receiver: address = msg.sender):
    # Only the EOA owner can invoke their own delegated code.
    # Under 7702: self == EOA, tx.origin == EOA (self-call).
    # Without 7702 (plain call): self == contract, tx.origin == caller.
    # Either way, tx.origin == self ensures only the owner can execute.
    assert tx.origin == self, "only EOA owner"

    if not staticcall IRPxCvx(RPX_CVX).isApprovedForAll(self, PIREX_CVX):
        extcall IRPxCvx(RPX_CVX).setApprovalForAll(PIREX_CVX, True)

    current: uint256 = staticcall IPxCvx(PX_CVX).getCurrentEpoch()
    epoch: uint256 = FIRST_EPOCH

    for _i: uint256 in range(MAX_EPOCHS):
        if epoch > current:
            break

        snapshot_id: uint256 = 0
        tokens: DynArray[bytes32, MAX_REWARDS] = []
        snap_amts: DynArray[uint256, MAX_REWARDS] = []
        futs_amts: DynArray[uint256, MAX_REWARDS] = []
        snapshot_id, tokens, snap_amts, futs_amts = staticcall IPxCvx(PX_CVX).getEpoch(epoch)

        if snapshot_id == 0:
            epoch += EPOCH_LEN
            continue

        user_bal: uint256 = staticcall IPxCvx(PX_CVX).balanceOfAt(self, snapshot_id)
        if user_bal > 0:
            bitmap: uint256 = staticcall IPxCvx(PX_CVX).getEpochRedeemedSnapshotRewards(self, epoch)
            indexes: DynArray[uint256, MAX_REWARDS] = []
            for j: uint256 in range(MAX_REWARDS):
                if j >= len(tokens):
                    break
                if (bitmap >> j) & 1 == 0 and snap_amts[j] > 0:
                    indexes.append(j)
            if len(indexes) > 0:
                extcall IPirexCvx(PIREX_CVX).redeemSnapshotRewards(epoch, indexes, receiver)
        r_bal: uint256 = staticcall IRPxCvx(RPX_CVX).balanceOf(self, epoch)
        if r_bal > 0:
            extcall IPirexCvx(PIREX_CVX).redeemFuturesRewards(epoch, receiver)

        epoch += EPOCH_LEN
