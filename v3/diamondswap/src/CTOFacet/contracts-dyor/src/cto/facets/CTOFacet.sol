// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Facet } from "@internal/eip2535/Facet.sol";
import { ReentrancyGuardTransient } from "@common/contracts/ReentrancyGuardTransient.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IPermit2, IAllowanceTransfer } from "@permit2/interfaces/IPermit2.sol";

contract CTOFacet is Facet, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    IPermit2 immutable permit2;
    address immutable usdcAddress;
    IERC20 immutable usdc;
    address immutable depositAddress;

    constructor(address _permit2Address, address _usdcAddress, address _depositAddress) payable {
        permit2 = IPermit2(_permit2Address);
        usdcAddress = _usdcAddress;
        usdc = IERC20(usdcAddress);
        depositAddress = _depositAddress;
    }

    event Deposit(address indexed account, uint256 amount, string indexed userId);

    function depositPermit2(
        IAllowanceTransfer.PermitSingle calldata permitSingle,
        bytes calldata signature,
        string calldata userId
    ) external nonreentrant {
        permit2.permit(msg.sender, permitSingle, signature);
        uint256 amount = permitSingle.details.amount;
        permit2.transferFrom(msg.sender, depositAddress, uint160(amount), usdcAddress);
        emit Deposit(msg.sender, amount, userId);
    }

    function depositLegacy(uint256 amount, string calldata userId) external nonreentrant {
        usdc.safeTransferFrom(msg.sender, depositAddress, amount);
        emit Deposit(msg.sender, amount, userId);
    }
}
