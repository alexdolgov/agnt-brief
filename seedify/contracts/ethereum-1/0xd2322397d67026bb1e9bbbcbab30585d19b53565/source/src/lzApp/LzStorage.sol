// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title LzStorage
 * @notice Mapps the storage layout of LayerZero dependend contracts:
 *         - {LzClaimRefundTargetChain};
 *         - {LzVestingHostChain} contract;
 * @dev Diamond proxy (ERC-2535) storage style.
 */
library LzStorage {
    /**
     * @notice Struct reprensenting data required by all LayerZero calls.
     *
     * @param hostChain Chain id of where the {LzVestingHostChain} is deployed, using LayerZero's
     *        nomenclature.
     * @param targetChain Chain id of where the {LzClaimRefundTargetChain} is deployed, using
     *        LayerZero's nomenclature.
     * @param vestedToken Address of the token to release to the user in {LzClaimRefundTargetChain}.
     */
    struct LzStruct {
        uint16 hostChain;
        uint16 targetChain;
        address vestedToken;
    }

    /// @notice Storage position of {LzStorage} in contracts using it.
    bytes32 public constant LZ_STORAGE = keccak256("lz.storage");

    /**
     * @notice Custom selector to clone and configure {LzClaimRefundTargetChain}.
     * @dev `_crosschainCloneClaim` does not exists, though it helps to identify the
     *      methods to call in {ClaimFactory._nonblockingLzReceive}.
     */
    bytes4 public constant CROSSCHAIN_CLONE_CLAIM_SELECTOR =
        bytes4(
            keccak256(
                "_crosschainCloneClaim(string,address,address,uint16,uint16,address)"
            )
        );
    /**
     * @notice Custom selector to save cloned {LzClaimRefundTargetChain} in {IGOFactory} through
     *         crosschain call from {ClaimFactory.saveCrosschainClaimInHostFactory}.
     */
    bytes4 public constant LINK_CLAIM_TO_IGO__CALLBACK =
        bytes4(keccak256("LINK_CLAIM_TO_IGO__CALLBACK"));

    /// @dev Custom selector to update vesting schedule on host from crosschain call.
    bytes4 public constant LZ_HOSTCLAIM_SELECTOR =
        bytes4(keccak256("hostClaimUpdate(address)"));
    /// @dev Custom selector to release token to user on target chain from crosschain call.
    bytes4 public constant LZ_RELEASE_TOKEN_SELECTOR =
        bytes4(keccak256("_releaseTokenToUser(address,uint256)"));

    /// @dev Custom selector to refun tokens to user on host chain from crosschain call.
    bytes4 public constant LZ_REFUND_SELECTOR =
        bytes4(keccak256("_refundLz(string,address)"));

    /// @return lzStruct Whole storage of {LzClaimRefundTargetChain} and {LzVestingHostChain} contracts.
    function layout() internal pure returns (LzStruct storage lzStruct) {
        bytes32 position = LZ_STORAGE;
        assembly {
            lzStruct.slot := position
        }
    }
}
