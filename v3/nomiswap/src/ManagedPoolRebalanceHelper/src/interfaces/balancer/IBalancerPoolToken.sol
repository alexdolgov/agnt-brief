// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {IVault} from '@balancer-labs/v2-interfaces/contracts/vault/IVault.sol';
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBalancerPoolToken is IERC20 {

    function getVault() external view returns (IVault);

}