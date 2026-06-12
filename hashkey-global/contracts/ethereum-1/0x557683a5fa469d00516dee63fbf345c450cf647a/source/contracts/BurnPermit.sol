// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./ERC20.sol";
import "./library/CheckSig.sol";

abstract contract BurnPermit is ERC20 {
    using CheckSig for address;

    mapping(address => uint256) private _burnNonces;

    bytes32 private constant BURN_TYPEHASH = keccak256("HSK V1 Burn");

    bytes32 private constant BURN_FROM_TYPEHASH = keccak256("HSK V1 Burn From");

    bytes32 public constant BURN_ROLE = keccak256("Burn Role");

    /// @dev Return account's available nonce.
    function burnNonce(address account) public view returns (uint256) {
        return _burnNonces[account];
    }

    /// @dev Hash of the burn request message.
    function burnMessageHash(
        address applicant,
        uint256 amount,
        uint256 nonce,
        uint256 deadline
    ) public view returns (bytes32) {
        return keccak256(
            abi.encode(
                BURN_TYPEHASH,
                block.chainid,
                address(this),
                applicant,
                amount,
                nonce,
                deadline
            )
        );
    }

    /// @dev Hash of the burn from request message.
    function burnFromMessageHash(
        address applicant,
        address from,
        uint256 amount,
        uint256 nonce,
        uint256 deadline
    ) public view returns (bytes32) {
        return keccak256(
            abi.encode(
                BURN_FROM_TYPEHASH,
                block.chainid,
                address(this),
                applicant,
                from,
                amount,
                nonce,
                deadline
            )
        );
    }

    /// @dev Burn {amount} tokens of {applicant} by the owner, ensure {sig} is signed from {applicant}.
    function burn(address applicant, uint256 amount, uint256 deadline, bytes memory sig)
        external
        accessible(BURN_ROLE)
        notInBlackList(applicant)
    {
        // solhint-disable-next-line not-rely-on-time
        require(block.timestamp <= deadline, "BurnPermit: expired deadline");

        bytes32 message = burnMessageHash(applicant, amount, burnNonce(applicant), deadline);
        bytes32 digest = ECDSA.toEthSignedMessageHash(message);
        _burnNonces[applicant]++;

        applicant.checkSignature(digest, sig);

        _burn(applicant, amount);
    }

    /// @dev Burn {amount} tokens of {applicant} from {from} by the owner, ensure {sig} is signed from {applicant}.
    function burnFrom(
        address applicant,
        address from,
        uint256 amount,
        uint256 deadline,
        bytes memory sig
    )
        external
        accessible(BURN_ROLE)
        notInBlackList(applicant)
        notInBlackList(from)
    {
        // solhint-disable-next-line not-rely-on-time
        require(block.timestamp <= deadline, "BurnPermit: expired deadline");

        bytes32 message = burnFromMessageHash(applicant, from, amount, burnNonce(applicant), deadline);
        bytes32 digest = ECDSA.toEthSignedMessageHash(message);
        _burnNonces[applicant]++;

        applicant.checkSignature(digest, sig);

        _burnFrom(applicant, from, amount);
    }
}