// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Airdrop is AccessManagedUpgradeable, UUPSUpgradeable {
    bytes32 public root;
    IERC20 public nmx;
    using SafeERC20 for IERC20;
    mapping(address => bool) public airdropped;

    function initialize(
        bytes32 root_,
        address nmx_,
        address authority_
    ) public initializer {
        __AccessManaged_init(authority_);
        __UUPSUpgradeable_init();
        root = root_;
        nmx = IERC20(nmx_);
    }

    function verify(
        bytes32[] memory proof,
        address addr,
        uint256 amount
    ) public view {
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(addr, amount)))
        );
        require(MerkleProof.verify(proof, root, leaf), "Invalid proof");
    }

    modifier notDropped() {
        require(!airdropped[msg.sender], "Airdropped already");
        _;
    }

    modifier verified(bytes32[] memory proof, uint256 amount) {
        verify(proof, msg.sender, amount);
        _;
    }

    function getAirdrop(
        bytes32[] memory proof,
        uint256 amount
    ) external notDropped verified(proof, amount) {
        airdropped[msg.sender] = true;
        nmx.safeTransfer(msg.sender, amount);
    }

    // @dev intentionally using `restricted` for internal function
    function _authorizeUpgrade(address) internal override restricted {}
}
