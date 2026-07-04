// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "./interfaces/IBridgeMintBSC.sol";

contract BridgeMintBSC is IBridgeMintBSC, ReentrancyGuard {

    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant ORACLE_ROLE = keccak256("ORACLE_ROLE");

    address public override token;
    address public override registry;

    mapping(address => uint) public override lastTotalBurned;

    constructor(address _registry, address _token) {
        require(_registry != address(0) && _token != address(0), "BridgeMintBSC: ZERO");
        token = _token;
        registry = _registry;
    }

    function withdrawOwner() external override {
        require(IAccessControl(registry).hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "BridgeMintBSC: FORBIDDEN");
        uint amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(msg.sender, amount);
        emit WithdrawOwner(msg.sender, amount);
    }

    function withdraw(uint _totalBurned, bytes calldata _signature) external override nonReentrant {
        bytes32 messageHash = keccak256(abi.encodePacked(_totalBurned, msg.sender));
        address signer = messageHash.toEthSignedMessageHash().recover(_signature);
        require(IAccessControl(registry).hasRole(ORACLE_ROLE, signer), "BridgeMintBSC: INVALID_SIGNER");

        uint tokensToMint = _totalBurned - lastTotalBurned[msg.sender];
        IERC20(token).safeTransfer(msg.sender, tokensToMint);
        lastTotalBurned[msg.sender] = _totalBurned;
        emit Withdraw(msg.sender, tokensToMint, _totalBurned);
    }
}