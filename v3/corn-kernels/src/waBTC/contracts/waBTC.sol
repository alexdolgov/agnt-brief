// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ERC20, IERC20Permit, ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { WithdrawVault } from "./WithdrawVault.sol";

contract waBTC is ERC20Permit, Pausable, ERC4626, Ownable {
    using SafeERC20 for IERC20;

    struct Request {
        address receiver;
        uint256 amount;
        uint256 expire;
    }

    error InvalidRequestAmount();
    error InvalidSignatureLength(uint256 len);

    bytes32 private constant PERMIT_CLAIM_TYPEHASH =
        keccak256("PermitClaim(uint256 id,uint256 deadline)");

    address public immutable vault;
    uint256 public currentId;
    uint256 public delay = 14 days;

    mapping(uint256 => Request) public requests;

    event SetDelay(uint256 oldDelay, uint256 newDelay);
    event NewRequest(uint256 id, address receiver, uint256 amount, uint256 expire);
    event Claim(uint256 id);

    constructor(IERC20 asset_, address initialOwner_)
        ERC4626(asset_)
        ERC20("Wrapped aBTC", "waBTC")
        ERC20Permit("waBTC")
        Ownable(initialOwner_)
    {
        WithdrawVault vault_ = new WithdrawVault(address(asset_));
        vault_.approve();
        vault = address(vault_);
    }

    function decimals() public view virtual override(ERC4626, ERC20) returns (uint8) {
        return ERC4626.decimals();
    }

    function setDelay(uint256 delay_) external onlyOwner {
        require(delay_ > 0, "delay zero");
        uint256 old = delay;
        delay = delay_;
        emit SetDelay(old, delay_);
    }

    function setPause(bool pause_) external onlyOwner {
        if (pause_) {
            _pause();
        } else {
            _unpause();
        }
    }

    function depositWithPermit(
        uint256 assets,
        address receiver,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256)
    {
        try IERC20Permit(asset()).permit(
            msg.sender,
            address(this),
            assets,
            deadline,
            v,
            r,
            s
        ) {} catch {}

        return deposit(assets, receiver);
    }

    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) public override returns (uint256)
    {
        uint256 assets = super.redeem(shares, vault, owner);
        _request(receiver, assets);
        return assets;
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public override returns (uint256)
    {
        uint256 shares = super.withdraw(assets, vault, owner);
        _request(receiver, assets);
        return shares;
    }

    function _request(
        address receiver,
        uint256 amount
    ) internal {
        require(amount > 0, "request amount zero");
        uint256 id = currentId;
        uint256 expire = block.timestamp + delay;
        requests[id] = Request({
            receiver: receiver,
            amount: amount,
            expire: expire
        });

        currentId = id + 1;
        emit NewRequest(id, receiver, amount, expire);
    }

    function claim(
        uint256 id,
        uint256 deadline,
        bytes memory signature
    ) external whenNotPaused {
        Request memory req = requests[id];
        if (req.amount == 0) {
            revert InvalidRequestAmount();
        }
        if (block.timestamp < req.expire) {
            if (signature.length != 65) {
                revert InvalidSignatureLength(signature.length);
            }
            if (block.timestamp > deadline) {
               revert ERC2612ExpiredSignature(deadline);
            }
            address owner = owner();
            bytes32 structHash = keccak256(abi.encode(PERMIT_CLAIM_TYPEHASH, id, deadline));
            bytes32 hash = _hashTypedDataV4(structHash);
            address signer = ECDSA.recover(hash, signature);
            if (signer != owner) {
                revert ERC2612InvalidSigner(signer, owner);
            }
        }

        IERC20(asset()).safeTransferFrom(vault, req.receiver, req.amount);
        delete requests[id];

        emit Claim(id);
    }

    function _update(address from, address to, uint256 value) internal virtual override whenNotPaused {
        super._update(from, to, value);
    }
}