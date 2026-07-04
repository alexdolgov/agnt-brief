// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "../MinterestNFT.sol";
import "./MONFT1155Core.sol";

contract MinterestNFTMirror is MinterestNFT, MONFT1155Core {
    function _initialize(
        string memory _baseURI,
        address _admin,
        address _lzEndpoint
    ) public {
        lzEndpoint = ILayerZeroEndpoint(_lzEndpoint);
        initialize(_baseURI, _admin);
    }

    function _debitFrom(
        address _from,
        uint16,
        bytes memory,
        uint256[] memory _tokenIds,
        uint256[] memory,
        uint256[] memory _amounts
    ) internal virtual override {
        address spender = _msgSender();
        require(
            spender == _from || isApprovedForAll(_from, spender),
            "ONFT1155: send caller is not owner nor approved"
        );
        _burnBatch(_from, _tokenIds, _amounts);
    }

    function _creditTo(
        uint16,
        address _toAddress,
        uint256[] memory _tokenIds,
        uint256[] memory _tiers,
        uint256[] memory _amounts
    ) internal virtual override {
        _mintBatch(_toAddress, _tokenIds, _amounts, "");
        emissionBooster().onMintToken(_toAddress, _tokenIds, _amounts, _tiers);
    }

    function _getEmissionBooster() internal view override returns (IEmissionBooster) {
        return emissionBooster();
    }

    /// @dev Returns true if this contract implements the interface defined by `interfaceId`
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ONFT1155Core, MinterestNFT)
        returns (bool)
    {
        return
            interfaceId == type(IMinterestNFT).interfaceId ||
            interfaceId == type(IERC165).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /// @dev Function with this modifier can be executed only by accounts with DEFAULT_ADMIN_ROLE.
    ///      Override standard `Ownable` behavior to keep original implementation of `LzApp` contract.
    modifier onlyOwner() override {
        _checkRole(DEFAULT_ADMIN_ROLE);
        _;
    }
}
