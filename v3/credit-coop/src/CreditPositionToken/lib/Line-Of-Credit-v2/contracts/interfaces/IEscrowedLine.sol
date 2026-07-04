// SPDX-License-Identifier: GPL-3.0
// Copyright: https://github.com/credit-cooperative/Line-Of-Credit-v2/blob/master/COPYRIGHT.md

pragma solidity ^0.8.25;

import {IEscrow} from "./IEscrow.sol";

interface IEscrowedLine {
    /// @notice the escrow contract backing this Line
    function escrow() external view returns (IEscrow);
}
