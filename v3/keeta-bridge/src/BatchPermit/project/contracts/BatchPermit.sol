// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";

contract BatchPermit {
    struct Permit2612 {
        address token;
        address owner;
        address spender;
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    function batchERC20Permit(Permit2612[] calldata perms) external {
        for (uint i = 0; i < perms.length; i++) {
            IERC20Permit(perms[i].token).permit(
                perms[i].owner,
                perms[i].spender,
                perms[i].value,
                perms[i].deadline,
                perms[i].v,
                perms[i].r,
                perms[i].s
            );
        }
    }
}
