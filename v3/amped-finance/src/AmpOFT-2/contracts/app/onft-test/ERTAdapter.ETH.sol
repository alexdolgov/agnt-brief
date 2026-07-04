// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import { ONFT721CoreUpgradeable, SendParam, MessagingFee, MessagingReceipt } from "../../lz-upgradeable/onft/ONFT721CoreUpgradeable.sol";

/**
 * @title ONFT721Adapter Contract
 * @dev ONFT721Adapter is a wrapper used to enable cross-chain transferring of an existing ERC721 token.
 * @dev ERC721 NFTs from extensions which revert certain transactions, such as ones from blocked wallets or soulbound
 * @dev tokens, may still be bridgeable.
 */
contract ETH_ERTAdapterUpgradeable is UUPSUpgradeable, ONFT721CoreUpgradeable {
    /// @custom:storage-location erc7201:lightlink.storage.ETH_ERTAdapter
    struct ETH_ERTAdapterStorage {
        IERC721 innerToken;
        mapping(uint256 => bool) withdrawalInitialized; // tokenId => bool
    }

    // keccak256(abi.encode(uint256(keccak256("lightlink.storage.ETH_ERTAdapter")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ETH_ERTAdapterStorageLocation =
        0x6fb28ac38305e379961d871b375b2d44a9323d4b5568a32267a09f7aaf348200;

    function _getETH_ERTAdapterStorage() private pure returns (ETH_ERTAdapterStorage storage $) {
        assembly {
            $.slot := ETH_ERTAdapterStorageLocation
        }
    }

    function initialize(address _token, address _lzEndpoint, address _delegate) public virtual initializer {
        __ETH_ERTAdapter_init(_token);
        __OAppCore_init(_lzEndpoint, _delegate);
        __Ownable_init(_delegate);
    }

    function __ETH_ERTAdapter_init(address _token) internal onlyInitializing {
        __ETH_ERTAdapter_init_unchained(_token);
    }

    function __ETH_ERTAdapter_init_unchained(address _token) internal onlyInitializing {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        $.innerToken = IERC721(_token);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /**
     * @notice Retrieves the address of the underlying ERC721 implementation (ie. external contract).
     */
    function token() external view returns (address) {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        return address($.innerToken);
    }

    function withdrawalInitialized(uint256 _tokenId) public view returns (bool) {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        return $.withdrawalInitialized[_tokenId];
    }

    /**
     * @notice Indicates whether the ONFT721 contract requires approval of the 'token()' to send.
     * @dev In the case of ONFT where the contract IS the token, approval is NOT required.
     * @return requiresApproval Needs approval of the underlying token implementation.
     */
    function approvalRequired() external pure virtual returns (bool) {
        return true;
    }

    function _debit(address _from, uint256 _tokenId, uint32 /*_dstEid*/) internal virtual override {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        // @dev Dont need to check onERC721Received() when moving into this contract, ie. no 'safeTransferFrom' required
        $.innerToken.transferFrom(_from, address(this), _tokenId);
    }

    function _credit(address _toAddress, uint256 _tokenId, uint32 /*_srcEid*/) internal virtual override {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        // @dev Do not need to check onERC721Received() when moving out of this contract, ie. no 'safeTransferFrom'
        // required
        // @dev The default implementation does not implement IERC721Receiver as 'safeTransferFrom' is not used.
        // @dev If IERC721Receiver is required, ensure proper re-entrancy protection is implemented.

        // if token is holded by ert address, transfer it to _toAddress (ert address already approved this contract)
        address _from = $.innerToken.ownerOf(_tokenId);
        if (!withdrawalInitialized(_tokenId)) {
            $.withdrawalInitialized[_tokenId] = true;
            $.innerToken.transferFrom(_from, _toAddress, _tokenId);
            return;
        }

        // if not, must be normal withdrawal
        $.innerToken.transferFrom(address(this), _toAddress, _tokenId);
    }

    function backupTransfer(address[] calldata _from, address _to, uint256[] calldata _tokenIds) external onlyOwner {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        for (uint256 i = 0; i < _from.length; i++) {
            $.innerToken.transferFrom(_from[i], _to, _tokenIds[i]);
        }
    }

    function adminSend(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable virtual onlyOwner returns (MessagingReceipt memory msgReceipt) {
        ETH_ERTAdapterStorage storage $ = _getETH_ERTAdapterStorage();
        address _from = $.innerToken.ownerOf(_sendParam.tokenId);
        _debit(_from, _sendParam.tokenId, _sendParam.dstEid);

        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_sendParam);

        // @dev Sends the message to the LayerZero Endpoint, returning the MessagingReceipt.
        msgReceipt = _lzSend(_sendParam.dstEid, message, options, _fee, _refundAddress);
        emit ONFTSent(msgReceipt.guid, _sendParam.dstEid, _from, _sendParam.tokenId);
    }
}
