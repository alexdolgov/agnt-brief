// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../DN404Mirror.sol";
import "../blast/AbstractBlastContract.sol";
import "../interfaces/IERC721.sol";

/// @title BT404NFTWrapped
/// @notice BT404NFTWrapped provides an interface for wrapping legacy ERC721
/// NFT tokens in a DN404 implementation.
contract BT404NFTWrapped is DN404Mirror, UUPSUpgradeable, AbstractBlastContract {
    error OwnableUnauthorizedAccount(address account);

    IERC721 private _baseERC721;

    function initialize(address __baseERC721) public payable initializer {
        // if deployer was set, can not initialize again
        if (_getDN404NFTStorage().deployer != address(0)) revert Unauthorized();

        _initializeDN404Mirror(msg.sender);
        __AbstractBlastContract_init();
        _baseERC721 = IERC721(__baseERC721);
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != msg.sender) {
            revert OwnableUnauthorizedAccount(msg.sender);
        }
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function setPointsOperator(address operator) public onlyOwner {
        _configurePointsOperator(operator);
    }

    /*«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-*/
    /*                        CONSTRUCTOR                         */
    /*-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»*/

    /*«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-«-*/
    /*                 ERC721 Wrapper OPERATIONS                  */
    /*-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»-»*/
    

    /// @dev Wrap the original NFTs.
    ///      `msg.sender` receives the wrapped BT404 NFTs and the corresponding amount of ERC20 tokens.
    function wrapBatch(uint256[] memory ids) public virtual {
        wrapBatch(ids, false);
    }

    /// @dev Wrap the original NFTs.
    ///      `msg.sender` receives the wrapped BT404 NFTs along with the corresponding amount of ERC20 tokens.
    ///      Lock the BT404 NFTs to prevent transfer via `ERC20.transfer`.
    function wrapBatch(uint256[] memory ids, bool lock) public virtual {
        IERC721 base721 = _baseERC721;
        for (uint256 i; i < ids.length;) {
            base721.safeTransferFrom(msg.sender, address(this), ids[i]);
            unchecked {
                ++i;
            }
        }

        address base = baseERC20();
        (bool success, bytes memory result) = base.call(
            abi.encodeWithSignature(
                "mintNFT(uint256,uint256[])",
                uint256(uint160(msg.sender)) << 96 | (lock ? 1 : 0),
                ids
            )
        );
        // @solidity memory-safe-assembly
        assembly {
            if iszero(and(eq(mload(add(result, 0x20)), 1), success)) {
                revert(add(result, 0x20), mload(result))
            }

            let idLen := mload(ids)
            mstore(0x00, lock)
            for {
                let s := add(ids, 0x20)
                let end := add(s, shl(5, idLen))
            } iszero(eq(s, end)) { s := add(s, 0x20) } {
                // Emit the {Transfer} event.
                log4(codesize(), 0x00, _TRANSFER_EVENT_SIGNATURE, 0, caller(), mload(s))
                // Emit the {UpdateLockState} event.
                if lock { log3(0x00, 0x20, _UPDATE_LOCK_STATE_EVENT_SIGNATURE, caller(), mload(s)) }
            }
        }
    }

    /// @dev Unwrap the original NFTs. `msg.sender` receives the original ERC721 NFTs.
    ///      Burn the BT404 NFTs and corresponding ERC20 Tokens.
    function unwrapBatch(uint256[] memory ids) public virtual {
        address base = baseERC20();
        (bool success, bytes memory result) =
            base.call(abi.encodeWithSignature("burnNFT(address,uint256[])", msg.sender, ids));
        // @solidity memory-safe-assembly
        assembly {
            if iszero(and(eq(mload(add(result, 0x20)), 1), success)) {
                revert(add(result, 0x20), mload(result))
            }

            let idLen := mload(ids)
            for {
                let s := add(ids, 0x20)
                let end := add(s, shl(5, idLen))
            } iszero(eq(s, end)) { s := add(s, 0x20) } {
                // Don't emit the {UpdateLockState} event, as the NFTs already are burned.
                // Emit the {Transfer} event.
                log4(codesize(), 0x00, _TRANSFER_EVENT_SIGNATURE, caller(), 0, mload(s))
            }
        }

        IERC721 base721 = _baseERC721;
        for (uint256 i; i < ids.length;) {
            base721.safeTransferFrom(address(this), msg.sender, ids[i]);
            unchecked {
                ++i;
            }
        }
    }

    function baseERC721() public view virtual returns (address) {
        return address(_baseERC721);
    }

    /**
     * @dev Always returns `this.onERC721Received.selector`.
     */
    function onERC721Received(address, address, uint256, bytes memory)
        public
        pure
        virtual
        returns (bytes4)
    {
        return this.onERC721Received.selector;
    }
}
