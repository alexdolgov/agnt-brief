// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IICHIVault as IICHIVaultClean } from "@ichifarm/ichi-vaults/interfaces/IICHIVault.sol";

interface IICHIVault is IICHIVaultClean, IERC20 { }
