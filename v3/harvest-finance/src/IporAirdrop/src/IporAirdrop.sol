// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

import {Ownable} from "@openzeppelin5Airdrop/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin5Airdrop/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin5Airdrop/contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "@openzeppelin5Airdrop/contracts/utils/cryptography/MerkleProof.sol";

contract IporAirdrop is Ownable2Step {
    event Claimed(address who, uint256 grantedAmount, uint256 transferAmount);
    event NewRoot(bytes32 newRoot, bytes32 oldRoot);
    event WithdrawnAll(address to, uint256 amount);

    address public immutable ASSET;
    bytes32 public root;
    mapping(address => uint256) public claimed;
    uint256 public totalReleased;

    // todo asset, second
    constructor(address owner_, address asset_, bytes32 root_) Ownable(owner_) {
        root = root_;
        ASSET = asset_;
    }

    function claim(address account_, uint256 amount_, bytes32[] calldata proof_) external {
        require(_verify(_leaf(account_, amount_), proof_), "Invalid merkle proof");
        uint256 claming = amount_ - claimed[account_];

        require(claming > 0, "Nothing to claim");

        claimed[account_] = amount_;
        totalReleased += claming;
        IERC20(ASSET).transfer(account_, claming);
        emit Claimed(account_, amount_, claming);
    }

    function setRoot(bytes32 root_) external onlyOwner {
        emit NewRoot(root_, root);
        root = root_;
    }

    function withdrawAll(address account_) external onlyOwner {
        uint256 balance = IERC20(ASSET).balanceOf(address(this));
        IERC20(ASSET).transfer(account_, balance);
        emit WithdrawnAll(account_, balance);
    }


    function _leaf(address account_, uint256 amount_) internal pure returns (bytes32) {
        return keccak256(bytes.concat(keccak256(abi.encode(account_, amount_))));
    }

    function _verify(bytes32 leaf_, bytes32[] memory proof_) internal view returns (bool) {
        return MerkleProof.verify(proof_, root, leaf_);
    }
}
