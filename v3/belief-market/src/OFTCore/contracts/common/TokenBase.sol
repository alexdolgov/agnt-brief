// SPDX-License-Identifier: MIT
/// forge-lint: disable-start(screaming-snake-case-const)
pragma solidity ^0.8.28;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import { Context, ERC2771Context } from "@openzeppelin/contracts/metatx/ERC2771Context.sol";
import { Nonces, ERC2771Forwarder } from "@openzeppelin/contracts/metatx/ERC2771Forwarder.sol";
import { ERC165Checker } from "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import { ITokenHooks } from "./ITokenHooks.sol";

abstract contract TokenBase is ERC2771Context, ERC20, ERC20Burnable, ERC2771Forwarder, IERC20Permit {
    using ERC165Checker for address;

    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    uint8 internal constant _decimals = 6;

    address public hooks = address(0x0);

    error InvalidTokenHooks(address hooks);
    /// @dev Permit deadline has expired.
    error ERC2612ExpiredSignature(uint256 deadline);
    /// @dev Mismatched signature.
    error ERC2612InvalidSigner(address signer, address owner);

    /// @dev Create the token with initial owner, and initial supply distributed to specific addresses
    constructor(string memory name, string memory symbol)
        ERC2771Context(address(this))
        ERC20(name, symbol)
        ERC2771Forwarder(name)
    { }

    /// @inheritdoc IERC20Permit
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @inheritdoc IERC20Permit
    /// @dev This is a direct copy of OZ's ERC20Permit implementation. Due to
    /// how OZ has structured its inheritance hierarchy, both ERC20Permit and
    /// ERC2771Context inherit EIP712. The constructor is called in both places
    /// and solidity gives an error about two calls to the same constructor.
    /// Have to re-implement the Permit functionality.
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        public
        virtual
    {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        if (signer != owner) {
            revert ERC2612InvalidSigner(signer, owner);
        }

        _approve(owner, spender, value);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    function nonces(address owner) public view virtual override(IERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }

    function _update(address from, address to, uint256 value) internal virtual override {
        if (hooks != address(0x0)) {
            // Ignore reverts inside hooks to prevent transfers from failing
            // solhint-disable-next-line no-empty-blocks
            try ITokenHooks(hooks).beforeTokenTransfer(from, to, value) { } catch { }
        }
        super._update(from, to, value);
        if (hooks != address(0x0)) {
            // Ignore reverts inside hooks to prevent transfers from failing
            // solhint-disable-next-line no-empty-blocks
            try ITokenHooks(hooks).afterTokenTransfer(from, to, value) { } catch { }
        }
    }

    /// @dev internal function to set hooks. Permission on who can call this can be set in the concrete derived contract
    function _setHooks(address hooks_) internal {
        if (hooks_ != address(0x0) && !hooks_.supportsInterface(type(ITokenHooks).interfaceId)) {
            revert InvalidTokenHooks(hooks_);
        }
        hooks = hooks_;
    }

    function _msgSender() internal view virtual override(ERC2771Context, Context) returns (address) {
        return super._msgSender();
    }

    function _msgData() internal view virtual override(ERC2771Context, Context) returns (bytes calldata) {
        return super._msgData();
    }

    function _contextSuffixLength() internal view virtual override(ERC2771Context, Context) returns (uint256) {
        return super._contextSuffixLength();
    }
}
