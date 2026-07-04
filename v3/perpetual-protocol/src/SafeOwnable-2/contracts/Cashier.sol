// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.17;
pragma abicoder v2;

import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeOwnable } from "./base/SafeOwnable.sol";
import { ICashier } from "./interface/ICashier.sol";

contract Cashier is SafeOwnable, ReentrancyGuard, ICashier {
    using Address for address;

    address internal _settlementToken;
    mapping(address => bool) internal _whitelist;

    constructor(address settlementTokenArg) {
        if (!settlementTokenArg.isContract()) revert AddressIsNotContract(settlementTokenArg);

        _settlementToken = settlementTokenArg;
    }

    //
    // EXTERNAL NON-VIEW
    //

    function setWhitelist(address addressArg, bool enable) external onlyOwner {
        bool oldEnable = _whitelist[addressArg];

        _whitelist[addressArg] = enable;

        emit WhitelistChanged(addressArg, oldEnable, enable);
    }

    //
    // EXTERNAL NON-VIEW
    //

    function deposit(uint256 amount) external override nonReentrant {
        address from = msg.sender;
        address settlementToken = _settlementToken;
        address owner = owner();

        if (amount == 0) revert AmountIsInvalid(amount);

        if (!_whitelist[from]) revert AddressIsNotWhitelisted(from);

        uint256 balanceBefore = IERC20(settlementToken).balanceOf(owner);

        SafeERC20.safeTransferFrom(IERC20(settlementToken), from, owner, amount);

        uint256 balanceDelta = IERC20(settlementToken).balanceOf(owner) - balanceBefore;

        if (balanceDelta != amount) revert TransferIsInconsistent(amount, balanceDelta);

        emit Deposited(from, settlementToken, amount);
    }

    //
    // EXTERNAL VIEW
    //

    function isWhitelist(address account) external view override returns (bool) {
        return _whitelist[account];
    }

    function getSettlementToken() external view override returns (address) {
        return _settlementToken;
    }
}
