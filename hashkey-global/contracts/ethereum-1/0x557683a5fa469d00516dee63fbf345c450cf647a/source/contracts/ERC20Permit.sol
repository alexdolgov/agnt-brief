// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "./interface/IERC20Permit.sol";
import "./ERC20.sol";
import "./library/CheckSig.sol";

/// @title ERC20 with permit, as defined in https://eips.ethereum.org/EIPS/eip-2612[EIP-2612]
/// @notice ERC20 tokens which supports approvement via signature
abstract contract ERC20Permit is IERC20Permit, ERC20 {
    using CheckSig for address;

    bytes32 private constant NAME_HASH = keccak256("HSK");

    bytes32 private constant VERSION_HASH = keccak256("version 1");

    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    // solhint-disable-next-line var-name-mixedcase
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    mapping(address => uint256) private _nonces;

    /// @dev return user's current nonce and increase it.
    function increaseNonce(address account) internal returns (uint256) {
        uint256 n = _nonces[account];
        _nonces[account]++;
        return n;
    }

    /// @dev See in IERC20Permit
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, NAME_HASH, VERSION_HASH, block.chainid, address(this)));
    }

    /// @dev See in IERC20Permit.
    function nonces(address account) public view override returns (uint256) {
        return _nonces[account];
    }

    /// @dev See in IERC20Permit.
    function permit(
        address _owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        public
        override
        notInBlackList(_owner)
        notInBlackList(spender)
    {
        // solhint-disable-next-line not-rely-on-time
        require(block.timestamp <= deadline, "ERC20Permit: expired deadline");

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, _owner, spender, value, increaseNonce(_owner), deadline));
        bytes32 digest = ECDSA.toTypedDataHash(DOMAIN_SEPARATOR(), structHash);

        _owner.checkSignature(digest, v, r, s);

        _approve(_owner, spender, value);
    }
}