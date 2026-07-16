// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ERC20VotesUpgradeable } from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC20PermitUpgradeable } from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import { NoncesUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import { SignatureChecker } from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import { IERC20 } from "@forge/std/interfaces/IERC20.sol";

import { UpgradeableClock } from "./UpgradeableClock.sol";
import { IStakeToken } from "./IStakeToken.sol";

/*
 * @title StakeToken
 * @dev The Stake token contract.
 */
contract StakeToken is
    Initializable,
    UpgradeableClock,
    ERC20Upgradeable,
    OwnableUpgradeable,
    ERC20PermitUpgradeable,
    ERC20VotesUpgradeable,
    UUPSUpgradeable,
    IStakeToken
{
    using SignatureChecker for address;
    /*
     * @dev Emitted when the permit signature is invalid.
     * @param owner The owner of the token.
     * @param signature The signature.
     */

    error ERC2612InvalidSignature(address owner, bytes signature);

    error TokenNonTransferable();

    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /* @inheritdoc IStakeToken */
    function initialize(
        address _underlyingAsset
    ) public override initializer {
        IERC20 asset = IERC20(_underlyingAsset);

        string memory name = string.concat("Turtle Staked ", asset.name());
        string memory symbol = string.concat("s", asset.symbol());

        __Clock_init();
        __ERC20_init(name, symbol);
        __Ownable_init(msg.sender);
        __ERC20Permit_init(name);
        __ERC20Votes_init();
        __UUPSUpgradeable_init();
    }

    /*
     * @dev Permits a spender to spend tokens on behalf of an owner.
     * @param owner The owner of the tokens.
     * @param spender The spender of the tokens.
     * @param value The amount of tokens to permit.
     * @param deadline The deadline for the permit.
     * @param signature The signature of the permit.
     */
    function permit(address owner, address spender, uint value, uint deadline, bytes calldata signature) public {
        if (_time() > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        if (!owner.isValidSignatureNow(hash, signature)) {
            revert ERC2612InvalidSignature(owner, signature);
        }

        _approve(owner, spender, value);
    }

    /* @inheritdoc IStakeToken */
    function mint(address to, uint amount) external override onlyOwner {
        _mint(to, amount);
    }

    /* @inheritdoc IStakeToken */
    function burn(address from, uint amount) external override onlyOwner {
        _burn(from, amount);
    }

    /* solhint-disable no-empty-blocks */
    /*
     * @inheritdoc UUPSUpgradeable
     */
    function _authorizeUpgrade(
        address
    ) internal override onlyOwner { }

    // The following functions are overrides required by Solidity.
    /*
     * @inheritdoc ERC20Upgradeable
     */
    function _update(address from, address to, uint value) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        if (from != address(0) && to != address(0)) {
            revert TokenNonTransferable();
        }
        super._update(from, to, value);
    }

    function nonces(
        address owner
    ) public view override(ERC20PermitUpgradeable, NoncesUpgradeable) returns (uint) {
        return super.nonces(owner);
    }
}
