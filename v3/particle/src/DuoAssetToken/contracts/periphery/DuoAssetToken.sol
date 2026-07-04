// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {CoreRef} from "../core/CoreRef.sol";
import {BlastManager} from "../libraries/BlastManager.sol";
import {IDuoAssetToken} from "../interfaces/IDuoAssetToken.sol";

contract DuoAssetToken is IDuoAssetToken, ERC20Burnable, CoreRef, BlastManager {
    // solhint-disable-next-line var-name-mixedcase
    bytes32 public DOMAIN_SEPARATOR;
    // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    bytes32 public constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;
    mapping(address => uint256) public nonces;

    constructor(string memory name_, string memory symbol_, address core_) ERC20(name_, symbol_) CoreRef(core_) {
        uint256 chainId;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            chainId := chainid()
        }
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(name())),
                keccak256(bytes("1")),
                chainId,
                address(this)
            )
        );
    }

    /**
     * @notice mint new tokens
     * @param account the address of the destination account
     * @param amount the number of tokens to be minted
     */
    function mint(address account, uint256 amount) external override onlyMinter {
        _mint(account, amount);
        emit Minting(account, msg.sender, amount);
    }

    /**
     * @notice burn Duo asset tokens from caller
     * @param amount the amount to burn
     */
    function burn(uint256 amount) public override(IDuoAssetToken, ERC20Burnable) {
        super.burn(amount);
        emit Burning(msg.sender, msg.sender, amount);
    }

    /**
     * @notice burn Duo asset tokens from specified account
     * @param account the account to burn from
     * @param amount the amount to burn
     */
    function burnFrom(address account, uint256 amount) public override(IDuoAssetToken, ERC20Burnable) onlyBurner {
        _burn(account, amount);
        emit Burning(account, msg.sender, amount);
    }

    /**
     * @notice triggers an approval from owner to spends
     * @param owner the address to approve from
     * @param spender the address to be approved
     * @param value the number of tokens that are approved (2^256-1 means infinite)
     * @param deadline the time at which to expire the signature
     * @param v the recovery byte of the signature
     * @param r half of the ECDSA signature pair
     * @param s half of the ECDSA signature pair
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external override {
        require(deadline >= block.timestamp, "Duo: EXPIRED");
        bytes32 digest = keccak256(
            abi.encodePacked(
                "\x19\x01",
                DOMAIN_SEPARATOR,
                keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, nonces[owner]++, deadline))
            )
        );
        address recoveredAddress = ecrecover(digest, v, r, s);
        require(recoveredAddress != address(0) && recoveredAddress == owner, "Duo: INVALID_SIGNATURE");
        _approve(owner, spender, value);
    }
}
