// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.4;

import "../../interfaces/INftWrapper.sol";
import "../../interfaces/ISuperRareV1.sol";
import "../../airdrop/AirdropReceiver.sol";

/**
 * @title SuperRareV1Wrapper
 * @author NFTfi
 * @dev Provides logic to transfer SuperRareV1
 */
contract SuperRareV1Wrapper is INftWrapper {
    /**
     * @dev Transfers Kitty `_nftId` handled by the contract `_nftContract` from `_sender` to `_recipient`
     *
     * @param _sender - The current owner of the Kitty
     * @param _recipient - The new owner of the Kitty
     * @param _nftContract - CryptoKitties contract
     * @param _nftId - Kitty id
     *
     * @return true if successfully transferred, false otherwise
     */
    function transferNFT(
        address _sender,
        address _recipient,
        address _nftContract,
        uint256 _nftId
    ) external override returns (bool) {
        if (_sender == address(this)) {
            ISuperRareV1(_nftContract).transfer(_recipient, _nftId);
        } else if (_recipient == address(this)) {
            ISuperRareV1(_nftContract).takeOwnership(_nftId);
        } else {
            ISuperRareV1(_nftContract).takeOwnership(_nftId);
            ISuperRareV1(_nftContract).transfer(_recipient, _nftId);
        }

        return true;
    }

    function isOwner(
        address _owner,
        address _nftContract,
        uint256 _tokenId
    ) external view override returns (bool) {
        return ISuperRareV1(_nftContract).ownerOf(_tokenId) == _owner;
    }

    function wrapAirdropReceiver(
        address _recipient,
        address _nftContract,
        uint256 _nftId,
        address _beneficiary
    ) external override returns (bool) {
        ISuperRareV1(_nftContract).approve(_recipient, _nftId);

        AirdropReceiver(_recipient).wrap(address(this), _beneficiary, _nftContract, _nftId);

        return true;
    }
}
